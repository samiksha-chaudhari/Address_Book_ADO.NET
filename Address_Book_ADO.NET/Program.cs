using System;

namespace Address_Book_ADO.NET
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome To Address Book ADO .NET ");
            PersonDetails repo = new PersonDetails();
            Person employee = new Person();
            employee.ID = 7;
            employee.FirstName = "Ragini";
            employee.LastName = "Roy";
            employee.Address = "Socity 55";
            employee.PhoneNumber = "1234567892";
            employee.zip = 456987;
            employee.City = "Mumbai";
            employee.State = "Delhi";
            employee.Email = "ragi@gmail.com";
            employee.AddressBookName = "book2";
            employee.Type = "Friends";

            repo.AddEmployee(employee);
        }
    }
}
