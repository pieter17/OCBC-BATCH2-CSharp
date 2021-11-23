using System;

class Soal3
{
    static void Main()
    {
        Console.Write("Masukan angka: ");
        int num = Convert.ToInt32(Console.ReadLine());
        int output = 1;
        for (int i = num; i > 1; i--)
        {
            output *= i;
        }
        Console.WriteLine("Hasil= " + output);
    }
}