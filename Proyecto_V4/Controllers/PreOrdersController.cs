using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Proyecto_V4.Models;

namespace Proyecto_V4.Controllers
{
    public class PreOrdersController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: PreOrders
        public ActionResult Index()
        {
            return View(db.PreOrders.ToList());
        }

        // GET: PreOrders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PreOrder preOrder = db.PreOrders.Find(id);
            if (preOrder == null)
            {
                return HttpNotFound();
            }
            return View(preOrder);
        }

        // GET: PreOrders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PreOrders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Date,Amount")] PreOrder preOrder)
        {
            if (ModelState.IsValid)
            {
                db.PreOrders.Add(preOrder);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(preOrder);
        }

        // GET: PreOrders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PreOrder preOrder = db.PreOrders.Find(id);
            if (preOrder == null)
            {
                return HttpNotFound();
            }
            return View(preOrder);
        }

        // POST: PreOrders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Date,Amount")] PreOrder preOrder)
        {
            if (ModelState.IsValid)
            {
                db.Entry(preOrder).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(preOrder);
        }

        // GET: PreOrders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PreOrder preOrder = db.PreOrders.Find(id);
            if (preOrder == null)
            {
                return HttpNotFound();
            }
            return View(preOrder);
        }

        // POST: PreOrders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PreOrder preOrder = db.PreOrders.Find(id);
            db.PreOrders.Remove(preOrder);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

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
