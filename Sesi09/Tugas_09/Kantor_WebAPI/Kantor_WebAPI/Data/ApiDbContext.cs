using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Kantor_WebAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace Kantor_WebAPI.Data
{
    public class ApiDbContext:DbContext
    {
        public virtual  DbSet<EmployeeItem> items { get; set; }

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}
