using System;

class Soal4
{
    static void Main()
    {
        Console.Write("Masukan Angka: ");
        string nums = Console.ReadLine();
        string reversedNumber = "";
        for (int i = nums.Length - 1; i >= 0; i--)
            reversedNumber += nums[i];

        Console.WriteLine("Hasil = " + reversedNumber);
    }
}