using System;

class Palindrome
{
    static void Main()
    {
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

    }
}