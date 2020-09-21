using PagedList;
using SFL.DATA.EF;
using StoreFrontLAB.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;


namespace StoreFrontLAB.Controllers
{
    public class MoviesController : Controller
    {
        private MovieStoreEntities db = new MovieStoreEntities();

        // GET: Movies
        public ActionResult Index()
        {
            var movies1 = db.Movies1.Include(m => m.Genre).Include(m => m.ProductionCompany);
            return View(movies1.ToList());
        }

        //public ActionResult SearchMovies(string searchFilter, int page = 1)
        //{
        //    if (String.IsNullOrEmpty(searchFilter))
        //    {
        //        return View(db.Movies1.ToList());
        //    }
        //    else
        //    {
        //        string searchLower = searchFilter.ToLower();
        //        var filteredMovies = (from m in db.Movies1
        //                              where m.MovieTitle.ToLower().Contains(searchLower)
        //                              orderby m.MovieTitle
        //                              select m).ToList();
        //        return View(filteredMovies);
        //    }

        //}

        public ActionResult SearchMovies(string titleSearch, string currentFilter, int page = 1)
        {
            
            int pageSize = 6;
            var movies = db.Movies1.OrderBy(m => m.MovieTitle).ToList();

           
            if (titleSearch != null)
            {
                page = 1;
            }
            else
            {
                titleSearch = currentFilter;
            }

            if (!String.IsNullOrEmpty(titleSearch))
            {
                movies = (from m in movies
                          where m.MovieTitle.ToLower().Contains(titleSearch.ToLower())
                          orderby m.MovieTitle
                          select m).ToList();
            }

            ViewBag.CurrentFilter = titleSearch;
            return View(movies.ToPagedList(page, pageSize));

        }

        // GET: Movies/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Movie movie = db.Movies1.Find(id);
            Actor actor = db.Actors.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            return View(movie);
        }

        [Authorize(Roles = "Admin")]
        // GET: Movies/Create
        public ActionResult Create()
        {
            ViewBag.GenreID = new SelectList(db.Genres, "GenreID", "GenreName");
            ViewBag.ProductionID = new SelectList(db.ProductionCompanies, "ProductionID", "ProductionCompany1");
            return View();
        }
        [Authorize(Roles = "Admin")]
        // POST: Movies/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MovieID,MovieTitle,GenreID,Price,UnitsSold,ReleaseDate,ProductionID,Plot,PosterImage")] Movie movie)
        {
            if (ModelState.IsValid)
            {
                db.Movies1.Add(movie);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.GenreID = new SelectList(db.Genres, "GenreID", "GenreName", movie.GenreID);
            ViewBag.ProductionID = new SelectList(db.ProductionCompanies, "ProductionID", "ProductionCompany1", movie.ProductionID);
            return View(movie);
        }
        [Authorize(Roles = "Admin")]
        // GET: Movies/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Movie movie = db.Movies1.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            ViewBag.GenreID = new SelectList(db.Genres, "GenreID", "GenreName", movie.GenreID);
            ViewBag.ProductionID = new SelectList(db.ProductionCompanies, "ProductionID", "ProductionCompany1", movie.ProductionID);
            return View(movie);
        }
        [Authorize(Roles = "Admin")]
        // POST: Movies/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MovieID,MovieTitle,GenreID,Price,UnitsSold,ReleaseDate,ProductionID,Plot,PosterImage")] Movie movie)
        {
            if (ModelState.IsValid)
            {
                db.Entry(movie).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.GenreID = new SelectList(db.Genres, "GenreID", "GenreName", movie.GenreID);
            ViewBag.ProductionID = new SelectList(db.ProductionCompanies, "ProductionID", "ProductionCompany1", movie.ProductionID);
            return View(movie);
        }
        [Authorize(Roles = "Admin")]
        // GET: Movies/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Movie movie = db.Movies1.Find(id);
            if (movie == null)
            {
                return HttpNotFound();
            }
            return View(movie);
        }
        [Authorize(Roles = "Admin")]
        // POST: Movies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Movie movie = db.Movies1.Find(id);
            db.Movies1.Remove(movie);
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        //SHOPPING CART   
        #region AddToCart functionality
        [HttpPost]
        public ActionResult AddToCart(int qty, int movieID)
        {
            Dictionary<int, ShoppingCartViewModel> shoppingCart = null;

            if (Session["cart"] != null)
            {
                shoppingCart = (Dictionary<int, ShoppingCartViewModel>)Session["cart"];
            }
            else
            {
                shoppingCart = new Dictionary<int, ShoppingCartViewModel>();
            }
            Movie product = db.Movies1.Where(m => m.MovieID == movieID).FirstOrDefault();
            if (product == null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                ShoppingCartViewModel item = new ShoppingCartViewModel(qty, product);
                if (shoppingCart.ContainsKey(product.MovieID))
                {
                    shoppingCart[product.MovieID].Qty += qty;
                }
                else
                {
                    shoppingCart.Add(product.MovieID, item);
                }
                Session["cart"] = shoppingCart;
                Session["confirm"] = string.Format($"{qty} {product.MovieTitle} added to your cart");
            }
            return RedirectToAction("Index");
        }

        #endregion




        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
