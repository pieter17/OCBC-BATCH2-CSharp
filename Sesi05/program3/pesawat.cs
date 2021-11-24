using System;

namespace program3
{
    class pesawat
    {
        public string Nama;
        public int JumlahRoda;
        private string _Ketinggian;
        public string Ketinggian
        {
            get { return _Ketinggian; }
            set { _Ketinggian = value; }
        }
        public string JumlahPenumpang;

        public void terbang()
        {
            Console.WriteLine($"Pesawat dengan nama {this.Nama}, sedang take off");
        }

        public void sudahTerbang()
        {
            Console.WriteLine($"Pesawat sekarang berada pada ketinggian {this.Ketinggian}");
        }
    }
    class pesawat_tempur : pesawat
    {
        public new void terbangtinggi()
        {
            Console.WriteLine($"Pesawat Tempur dengan nama {this.Nama},\n" +
                            $"yang mempunyai jumlah roda {this.JumlahRoda}, \n" +
                            $"sedang berada pada ketinggian {this.Ketinggian} \n" +
                            $"dengan membawa jumlah penumpang sebanyak {this.JumlahPenumpang} \n" +
                            "akan meledakan senjata");
        }
    }

}