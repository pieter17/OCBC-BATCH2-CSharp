using System;

class HitungNilai4
{
    public static void Main(string[] args)
    {
        Console.Write("Enter your age: ");
        int age = int.Parse(Console.ReadLine());
        Console.Write("Password: ");
        string password = Console.ReadLine();

        bool isAdult = age > 18; // pernyataan 1
        bool isPaswordValid = password == "OCBC"; // pernyataan 2

        // menggunakan logika AND
        if (isAdult && isPaswordValid)
        {
            Console.WriteLine("Welcome to the club");
        }
        else
        {
            Console.WriteLine("Sorry, try again!");
        }
    }
}