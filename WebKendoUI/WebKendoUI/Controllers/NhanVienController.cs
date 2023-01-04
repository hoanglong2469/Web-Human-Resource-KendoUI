using Azure.Core;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebKendoUI.Models;

namespace WebKendoUI.Controllers
{
    public class NhanVienController : Controller
    {
        private readonly QlnvienContext _db;

        public NhanVienController(QlnvienContext db)
        {
            _db = db;
        }

        // GET: NhanVien
        public ActionResult Index()
        {

            return View();
        }

        public JsonResult Read([DataSourceRequest] DataSourceRequest request)
        {
            var nv = _db.NhanViens.ToList();
            return this.Json(nv);
        }

        //[HttpPost]
        //public ActionResult Create([DataSourceRequest] DataSourceRequest request, NhanVien newNhanVien)
        //{

        //    if (newNhanVien != null && ModelState.IsValid)
        //    {
        //        _db.NhanViens.Add(newNhanVien);
        //        _db.SaveChanges();
        //    }
        //    return Json(new[] { newNhanVien }.ToDataSourceResult(request, ModelState));
        //}


        [HttpPost]
        public IActionResult Create([FromBody] NhanVien nhanvien)
        {
            if (nhanvien != null && ModelState.IsValid)
            {
                _db.NhanViens.Add(nhanvien);
                _db.SaveChanges();
            }
            return this.Json(nhanvien);
        }

        [HttpPut]
        public IActionResult Update(string id, [FromBody] NhanVien nhanvien)
        {
            if (id != nhanvien.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _db.Update(nhanvien);
                    _db.SaveChanges();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!NhanVienExists(nhanvien.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return Json(nhanvien);
            }
            return View(nhanvien);
        }

        [HttpDelete]
        [ValidateAntiForgeryToken]
        public IActionResult Destroy(string id)
        {
            var nhanVien =  _db.NhanViens.Find(id);
            if (nhanVien != null)
            {
                _db.NhanViens.Remove(nhanVien);
            }

            _db.SaveChanges();
            return View(nhanVien);

        }

        private bool NhanVienExists(string id)
        {
            return _db.NhanViens.Any(e => e.Id == id);
        }
    }
}
