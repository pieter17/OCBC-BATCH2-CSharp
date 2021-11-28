using System;

class Soal3
{
    static void Main()
    {
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
    }
}