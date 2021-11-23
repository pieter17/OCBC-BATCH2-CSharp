using System;
using System.Globalization;

class Assignment
{
    static void Main(string[] args)
    {
        Console.WriteLine("===============");
        Console.Write("Masukan nama: ");
        string nama = Console.ReadLine();
        Console.WriteLine("===============");
        Console.WriteLine($"Selamat datang {nama}");
        Console.WriteLine("===============");

        string pilihan = "y";
        do
        {
            Console.WriteLine("Pilihan: ");
            Console.WriteLine("1. Piramida Alphabet (Membuat piramida dari alphabet abcde).");
            Console.WriteLine("2. Piramida Angka (Membuat piramida dari angka yang di input).");
            Console.WriteLine("3. Faktorial (Menampilkan hasil faktorial dari angka yang di input).");
            Console.WriteLine("4. Balik Angka (Menampilkan angka yang dibalik urutanya yang di input oleh pengguna).");
            Console.WriteLine("5. Convert Angka Ke String (Menampilkan angka yang telah di convert ke format string).");
            Console.WriteLine("===============");
            Console.Write("Masukan pilihan: ('n' untuk keluar)");
            string input = Console.ReadLine();
            switch (input)
            {
                case "1":
                    {
                        Console.WriteLine('1');
                        break;
                    }
                case "2":
                    {
                        Console.WriteLine("2");
                        break;
                    }
                case "3":
                    {
                        Console.Write("Masukan angka: ");
                        int num = Convert.ToInt32(Console.ReadLine());
                        int output = 1;
                        for (int i = num; i > 1; i--)
                        {
                            output *= i;
                        }
                        Console.WriteLine("Hasil= " + output);
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "4":
                    {
                        Console.WriteLine('4');
                        break;
                    }
                case "5":
                    {
                        Console.Write("Masukan Angka: ");
                        string nums = Console.ReadLine();
                        string[] numbers = new string[9] { "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };
                        string output = "";
                        for (int i = 0; i < nums.Length; i++)
                        {
                            int idx = Convert.ToInt32(nums[i]) - 48;
                            output += $"{numbers[idx - 1]} ";
                        }
                        Console.WriteLine("Hasil= " + output);
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "n":
                    {
                        pilihan = "n";
                        break;
                    }
                default:
                    {
                        Console.WriteLine("Invalid input");
                        break;
                    }
            }
        } while (pilihan == "y");
    }
}