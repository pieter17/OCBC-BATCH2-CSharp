using System;

public class Logika3
{
    public static void Main()
    {
        string Username;
        string Password;

        Console.Write("Username: ");
        Username = Console.ReadLine();
        Console.Write("Password: ");
        Password = Console.ReadLine();

        if (Username == "ocbc" && Password == "bootcamp")
        {
            Console.WriteLine("Anda Berhasil login");
        }
        else
        {
            Console.WriteLine("Username atau Password anda salah");
        }
    }
}