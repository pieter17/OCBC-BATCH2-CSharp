using System;

namespace ConsoleApp
{
  public class Program
  {
    public static void Main(string[] args)
    {
      Console.Write("Enter your age: ");
      int age = int.Parse(Console.ReadLine());
      Console.Write("Password: ");
      string password = Console.ReadLine();

      bool isAdult = age > 18;
      bool isPaswordValid = password == "OCBC";

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
}