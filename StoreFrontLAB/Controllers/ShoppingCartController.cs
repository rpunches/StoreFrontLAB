using StoreFrontLAB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StoreFrontLAB.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        public ActionResult Index()
        {
            var shoppingCart = (Dictionary<int, ShoppingCartViewModel>)Session["cart"];
            if (shoppingCart == null || shoppingCart.Count == 0)
            {
                shoppingCart = new Dictionary<int, ShoppingCartViewModel>();
                ViewBag.Message = "There are no items in your cart.";
            }
            else
            {
                ViewBag.Message = null; 
            }

            return View(shoppingCart);
        }

        //UPDATE
        public ActionResult UpdateCart(int movieID, int qty)
        {
            var shoppingCart =
                (Dictionary<int, ShoppingCartViewModel>)Session["cart"];

            shoppingCart[movieID].Qty = qty;
            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");

        }

        //REMOVE
        public ActionResult RemoveFromCart(int id)
        {
            var shoppingCart = (Dictionary<int, ShoppingCartViewModel>)Session["cart"];
            shoppingCart.Remove(id);
            Session["cart"] = shoppingCart;
            return RedirectToAction("Index");
        }

    }
}