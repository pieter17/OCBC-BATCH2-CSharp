using Moq;
using Xunit;

namespace TestProject1
{
    public class EmployeeTest
    {
        public Mock<IEmployeeService> mock = new Mock<IEmployeeService>();

        [Fact]
        public async void GetEmployeebyId()
        {
            mock.Setup(p=>p.GetEmployee)
        }
    }
}