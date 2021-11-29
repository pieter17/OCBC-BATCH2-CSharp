using Microsoft.EntityFrameworkCore;

namespace UnitTest_Mock.Models
{
    public partial class ApiDbContext:DbContext
    {
        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {
            
        }
        public DbSet<Employee> Employees { get; set; }
    }
}