using System;

namespace ConsoleApp
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int nilai1 = 10;
            int nilai2 = 8;

            nilai1 = 15;

            Console.WriteLine($"nilai1 = {nilai1}");

            nilai1 += 6;

            Console.WriteLine($"nilai2 {nilai2}");
        }
    }
}