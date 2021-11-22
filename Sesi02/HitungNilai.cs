using System;

class HitungNilai
{
    public static void Main(String[] args)
    {
        int pertama, kedua, ketiga, total;
        double rata;

        Console.WriteLine("===Menghitung Nilai===");
        Console.Write("Masukan Nilai PERTAMA: ");
        pertama = int.Parse(Console.ReadLine());
        Console.Write("Masukan Nilai KEDUA: ");
        kedua = int.Parse(Console.ReadLine());
        Console.Write("Masukan Nilai KETIGA: ");
        ketiga = int.Parse(Console.ReadLine());

        total = pertama + kedua + ketiga;
        rata = total / 3.0;
        Console.WriteLine("Total nilai adalah: " + total);
        Console.WriteLine("Rata - rata nilai adalah: " + rata);
        Console.Read();
    }
}