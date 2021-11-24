using System;

namespace program2
{

    class pesawat
    {
        public string nama;
        private string _ketinggian;
        public string ketinggian
        {
            get { return _ketinggian; }
            set { _ketinggian = value; }
        }

        public void terbang()
        {
            Console.WriteLine($"Pesawat dengan nama {this.nama}, sedang take off");
        }

        public void sudahTerbang()
        {
            Console.WriteLine($"Pesawat sekarang berada pada ketinggian {this.ketinggian}");
        }
    }

}