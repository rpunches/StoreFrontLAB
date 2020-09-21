using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SFL.DATA.EF;
using System.Data.Entity;
using PagedList;
using PagedList.Mvc;


namespace StoreFrontLAB.Controllers
{
    public class GenreFilterController : Controller
    {
        private MovieStoreEntities db = new MovieStoreEntities();

        // GET: GenreFilter
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult GenreFilterResults(string gen)
        {
           
            int genreID = db.Genres.Where(x => x.GenreName == gen).FirstOrDefault().GenreID;

            List<Movie> movies = db.Movies1.Where(x => x.GenreID == genreID).ToList();

            return View(movies);
         

        }

    }
}