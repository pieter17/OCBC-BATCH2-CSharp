using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Kantor_WebAPI.Data;
using Kantor_WebAPI.Models;
using Microsoft.AspNetCore.Mvc;

namespace Kantor_WebAPI.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private EmployeeContext _context;

        public EmployeeController(EmployeeContext context)
        {
            this._context = context;
        }

        // GET: api/eployee
        public ActionResult<IEnumerable<EmployeeItem>> GetEmployeeItems()
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.GetAllEmployee();
        }

        // GET: api/employee/{id}
        [HttpGet("{id}", Name = "Get")]
        public ActionResult<IEnumerable<EmployeeItem>> GetEmployeeItem(String id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.GetEmployee(id);
        }

        // POST: api/employee
        [HttpPost]
        public async Task<IActionResult> CreateEmployee([FromBody] EmployeeItem item)
        {
            if (!ModelState.IsValid) return new JsonResult("Something went wrong") {StatusCode = 500};
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            _context.InsertEmployee(item);
            return new JsonResult(item) {StatusCode = 200};
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateEmployee(int id, [FromBody] EmployeeItem item)
        {
            try
            {
                _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
                _context.UpdateEmployee(id, item);
                return new JsonResult(item) {StatusCode = 200};

            }
            catch (Exception e)
            {
                return new JsonResult(e) {StatusCode = 500};
            }
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEmployee(int id)
        {
            try
            {
                _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
                _context.DeleteEmployee(id);
                return new JsonResult("deleted id " + id) {StatusCode = 200};

            }
            catch (Exception e)
            {
                return new JsonResult(e) { StatusCode = 500 };
            }
        }

    }

}
