using System;

class Soal1
{
    static void Main()
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
    }
}