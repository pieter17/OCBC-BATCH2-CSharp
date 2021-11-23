using System;

class data2
{
    static void Main(string[] args)
    {
        string[] contoh = new string[4] { "Motherboard", "Procesor", "Power Supply", "Video Call" };

        Console.WriteLine("Menampilkan semua data dalam array");
        Console.WriteLine("");

        foreach (string contoh1 in contoh)
        {
            Console.WriteLine(contoh1);
        }

        Console.Write("Press any key to continue . . .");
    }
}