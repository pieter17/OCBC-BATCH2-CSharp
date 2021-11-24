using System;

namespace program1
{
    class Program
    {
        public static void Main(string[] args)
        {
            Laptop laptop1 = new Laptop();

            Console.Write("Masukan Merk laptop: ");
            string merk = Console.ReadLine();
            Console.Write("Masukan besar Ram laptop: ");
            int ram = int.Parse(Console.ReadLine());
            Console.Write("Masukan besar Memory laptop: ");
            int memory = int.Parse(Console.ReadLine());

            laptop1.merk = merk;
            laptop1.ram = ram;
            laptop1.memory = memory;

            Console.WriteLine($"\n Merk Laptop adalah {laptop1.merk}");
            Console.WriteLine($"Kapasitas ram ada {laptop1.ram}");
            Console.WriteLine($"Kapasitas Memory ada {laptop1.memory}");

            laptop1.Chatting();
            laptop1.Sosmed();
            laptop1.OnlineShop();

            Console.Read();
        }
    }
}
