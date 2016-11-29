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
    public class HardwareStoresController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: HardwareStores
        public ActionResult Index()
        {
            return View(db.HardwareStores.ToList());
        }

        // GET: HardwareStores/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HardwareStore hardwareStore = db.HardwareStores.Find(id);
            if (hardwareStore == null)
            {
                return HttpNotFound();
            }
            return View(hardwareStore);
        }

        // GET: HardwareStores/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: HardwareStores/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,PhoneCentral")] HardwareStore hardwareStore)
        {
            if (ModelState.IsValid)
            {
                db.HardwareStores.Add(hardwareStore);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(hardwareStore);
        }

        // GET: HardwareStores/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HardwareStore hardwareStore = db.HardwareStores.Find(id);
            if (hardwareStore == null)
            {
                return HttpNotFound();
            }
            return View(hardwareStore);
        }

        // POST: HardwareStores/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,PhoneCentral")] HardwareStore hardwareStore)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hardwareStore).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(hardwareStore);
        }

        // GET: HardwareStores/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HardwareStore hardwareStore = db.HardwareStores.Find(id);
            if (hardwareStore == null)
            {
                return HttpNotFound();
            }
            return View(hardwareStore);
        }

        // POST: HardwareStores/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HardwareStore hardwareStore = db.HardwareStores.Find(id);
            db.HardwareStores.Remove(hardwareStore);
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
