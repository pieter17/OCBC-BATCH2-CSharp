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
    }
}