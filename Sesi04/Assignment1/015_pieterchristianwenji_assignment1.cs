using System;
using System.Globalization;

class Assignment
{
    static void Main(string[] args)
    {
        Console.WriteLine("=============================================================================================");

        Console.Write("Masukan nama: ");
        string nama = Console.ReadLine();
        Console.WriteLine("=============================================================================================");
        Console.WriteLine($"Selamat datang {nama}");
        Console.WriteLine("=============================================================================================");
        Console.WriteLine("Nama Lengkap Saya : Pieter Christian Wenji");
        Console.WriteLine("Nomor Peserta : FSDO002ONL015");
        Console.WriteLine("Alamat : Cimahi");
        Console.WriteLine("=============================================================================================");

        string pilihan = "y";
        do
        {
            Console.WriteLine("Pilihan: ");
            Console.WriteLine("1. Piramida Alphabet (Membuat piramida dari alphabet abcde).");
            Console.WriteLine("2. Piramida Angka (Membuat piramida dari angka yang di input).");
            Console.WriteLine("3. Faktorial (Menampilkan hasil faktorial dari angka yang di input).");
            Console.WriteLine("4. Balik Angka (Menampilkan angka yang dibalik urutanya yang di input oleh pengguna).");
            Console.WriteLine("5. Convert Angka Ke String (Menampilkan angka yang telah di convert ke format string).");
            Console.WriteLine("6. Palindrome (Mencek apakah kata sebuah palindrome).");
            Console.WriteLine("=============================================================================================");
            Console.Write("Masukan pilihan: ('n' untuk keluar) ");
            string input = Console.ReadLine();
            switch (input)
            {
                case "1":
                    {
                        char[] alphabet = new char[] { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
                        Console.Write("Masukan tinggia piramida: ");
                        int tinggi = Convert.ToInt32(Console.ReadLine());

                        for (int i = 1; i <= tinggi; i++)
                        {
                            for (int j = 0; j < tinggi - i; j++)
                                Console.Write(" ");

                            for (int k = 0; k < i; k++)
                            {
                                int temp = k;
                                if (k >= 26)
                                    temp -= 26;

                                Console.Write(alphabet[temp]);
                            }

                            for (int m = i - 2; m >= 0; m--)
                            {
                                int temp = m;
                                if (m >= 26)
                                    temp -= 26;

                                Console.Write(alphabet[temp]);

                            }

                            Console.WriteLine();
                        }
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "2":
                    {
                        Console.Write("Masukan tinggi piramida: ");
                        int tinggi = Convert.ToInt32(Console.ReadLine());

                        for (int i = 1; i <= tinggi; i++)
                        {
                            for (int j = 1; j <= (tinggi - i); j++)
                                Console.Write(" ");

                            for (int k = 1; k <= i; k++)
                            {
                                int temp = k;
                                if (k >= 10)
                                    temp -= 9;

                                Console.Write(temp);
                            }

                            for (int m = (i - 1); m >= 1; m--)
                            {
                                int temp = m;
                                if (m >= 10)
                                    temp -= 9;

                                Console.Write(temp);
                            }

                            Console.WriteLine();
                        }
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "3":
                    {
                        Console.WriteLine("Anda memilih pilihan Faktorial");
                        Console.Write("Masukan angka: ");
                        int num = Convert.ToInt32(Console.ReadLine());
                        int output = 1;
                        for (int i = num; i > 1; i--)
                            output *= i;

                        Console.WriteLine("Hasil = " + output);
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "4":
                    {
                        Console.WriteLine("Anda memilih pilihan Balik Angka");
                        Console.Write("Masukan Angka: ");
                        string nums = Console.ReadLine();
                        string reversedNumber = "";
                        for (int i = nums.Length - 1; i >= 0; i--)
                            reversedNumber += nums[i];

                        Console.WriteLine("Hasil = " + reversedNumber);
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "5":
                    {
                        Console.WriteLine("Anda memilih pilihan convert angka ke string");
                        Console.Write("Masukan Angka: ");
                        string nums = Console.ReadLine();
                        string[] numbers = new string[10] { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };
                        string output = "";
                        for (int i = 0; i < nums.Length; i++)
                        {
                            int idx = Convert.ToInt32(nums[i]) - 48;
                            output += $"{numbers[idx]} ";
                        }
                        Console.WriteLine("Hasil= " + output);
                        Console.Write("Kembali ke menu ? (y/n)");
                        pilihan = Console.ReadLine().ToLower(CultureInfo.CurrentCulture);
                        break;
                    }
                case "6":
                    {
                        Console.WriteLine("Anda memilih pilihan Palindrome");
                        Console.Write("Masukan Kata: ");
                        string kata = Console.ReadLine();
                        int len = kata.Length;
                        bool isPalindrome = true;
                        for (int i = 0; i < len / 2; i++)
                        {
                            if (kata[i] != kata[len - 1 - i])
                                isPalindrome = false;
                        }
                        if (isPalindrome)
                            Console.WriteLine($"Kata '{kata}' adalah palindrome");
                        else
                            Console.WriteLine($"Kata '{kata}' bukan Palindrome");

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
            if (pilihan == "n")
            {
                Console.WriteLine("=============================================================================================");
                Console.WriteLine("Terimakasih Sudah Menggunakan Program :D");
                Console.WriteLine("=============================================================================================");
            }

        } while (pilihan == "y");
    }
}