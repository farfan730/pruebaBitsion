using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BitsionProyect.Models;

namespace BitsionProyect.Controllers
{
    public class DocumentoController : Controller
    {
        private iRecaudo_COEEntities db = new iRecaudo_COEEntities();

        //
        // GET: /Documento/

        public ActionResult Index()
        {
            var documentoes = db.Documentoes.Include(d => d.Compania).Include(d => d.Persona);
            return View(documentoes.ToList());
        }

        //
        // GET: /Documento/Details/5

        public ActionResult Details(int id = 0)
        {
            Documento documento = db.Documentoes.Find(id);
            if (documento == null)
            {
                return HttpNotFound();
            }
            return View(documento);
        }

        //
        // GET: /Documento/Create

        public ActionResult Create()
        {
            ViewBag.IdCompania = new SelectList(db.Companias, "IdCompania", "RazonSocial");
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "TipoIdentificacion");
            return View();
        }

        //
        // POST: /Documento/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Documento documento)
        {
            if (ModelState.IsValid)
            {
                db.Documentoes.Add(documento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCompania = new SelectList(db.Companias, "IdCompania", "RazonSocial", documento.IdCompania);
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "TipoIdentificacion", documento.IdPersona);
            return View(documento);
        }

        //
        // GET: /Documento/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Documento documento = db.Documentoes.Find(id);
            if (documento == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCompania = new SelectList(db.Companias, "IdCompania", "RazonSocial", documento.IdCompania);
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "TipoIdentificacion", documento.IdPersona);
            return View(documento);
        }

        //
        // POST: /Documento/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Documento documento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(documento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCompania = new SelectList(db.Companias, "IdCompania", "RazonSocial", documento.IdCompania);
            ViewBag.IdPersona = new SelectList(db.Personas, "IdPersona", "TipoIdentificacion", documento.IdPersona);
            return View(documento);
        }

        //
        // GET: /Documento/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Documento documento = db.Documentoes.Find(id);
            if (documento == null)
            {
                return HttpNotFound();
            }
            return View(documento);
        }

        //
        // POST: /Documento/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Documento documento = db.Documentoes.Find(id);
            db.Documentoes.Remove(documento);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}