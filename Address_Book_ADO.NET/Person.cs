using System;
using System.Collections.Generic;
using System.Text;

namespace Address_Book_ADO.NET
{
    class Person
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public int zip { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Email { get; set; }
        public string AddressBookName { get; set; }
        public string Type { get; set; }
    }
}
