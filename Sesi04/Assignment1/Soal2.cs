using System;

class Soal1
{
    static void Main()
    {
        Console.Write("Masukan tinggi piramida: ");
        int tinggi = Convert.ToInt32(Console.ReadLine());

        for (int i = 1; i <= tinggi; i++)
        {
            for (int j = 1; j <= (tinggi - i); j++)
                Console.Write(" ");

            for (int k = 1; k <= i; k++)
                Console.Write(k);

            for (int m = (i - 1); m >= 1; m--)
                Console.Write(m);

            Console.WriteLine();
        }
    }
}