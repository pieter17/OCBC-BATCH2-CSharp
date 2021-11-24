using System;

namespace program2
{
    class Program
    {
        static void Main(string[] args)
        {
            pesawat pesawat = new pesawat();
            pesawat.nama = "GARUDAKU";
            pesawat.ketinggian = "2500 kaki";

            pesawat.terbang();
            pesawat.sudahTerbang();
            Console.Read();
        }
    }
}
