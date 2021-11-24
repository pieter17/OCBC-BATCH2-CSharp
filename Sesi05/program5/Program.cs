using System;

namespace program5
{

    class Program
    {
        public int bilangan1, bilangan2;

        public void bilangan(int angka1, int angka2)
        {
            bilangan1 = angka1;
            bilangan2 = angka2;
        }

        public virtual void penjumlahanperkaliandll()
        {
            Console.WriteLine("Overriding 1.........--------->>>>>>>>>>>>");
            Console.WriteLine($"Hasil penjumlahan angka {bilangan1} dan angka {bilangan2}= {bilangan1 + bilangan2}");
            Console.WriteLine($"Hasil perkalian angka {bilangan1} dan angka {bilangan2}= {bilangan1 * bilangan2}");
        }
        // static void Main(string[] args)
        // {
        //     Program overiding = new Program();
        //     overiding.bilangan(10, 5);
        //     overiding.penjumlahanperkaliandll();
        // }
    }
    class overide : Program
    {
        public override void penjumlahanperkaliandll()
        {
            Console.WriteLine("Overriding 2.........--------->>>>>>>>>>>>");
            Console.WriteLine($"Hasil pembagian angka {bilangan1} dan angka {bilangan2}= {bilangan1 / bilangan2}");
            Console.WriteLine($"Hasil pengurangan angka {bilangan1} dan angka {bilangan2}= {bilangan1 - bilangan2}");
        }

        static void Main(string[] args)
        {
            Program overiding = new Program();
            overiding.bilangan(10, 5);
            overiding.penjumlahanperkaliandll();
            overiding = new overide();
            overiding.bilangan(20, 5);
            overiding.penjumlahanperkaliandll();
            Console.Read();
        }
    }
}
