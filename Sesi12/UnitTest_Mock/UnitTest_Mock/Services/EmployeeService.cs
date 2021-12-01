using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using UnitTest_Mock.Models;

namespace UnitTest_Mock.Services
{
    public class EmployeeService : IEmployeeService
    {
        private readonly ApiDbContext _apiDbContext;

        public EmployeeService(ApiDbContext apiDbContext)
        {
            _apiDbContext = apiDbContext;
        }

        public async Task<string> GetEmployeebyId(int EmpID)
        {
            var name = await _apiDbContext.Employees.Where(c => c.Id == EmpID).Select(d => d.Name)
                .FirstOrDefaultAsync();
            return name;
        }

        public async Task<Employee> GetEmployeeDetails(int EmpId)
        {
            var emp = await _apiDbContext.Employees.FirstOrDefaultAsync(c => c.Id == EmpId);
            return emp;
        }
    }
}