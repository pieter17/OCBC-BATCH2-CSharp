using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FormLogin
{
    public partial class Register : Form
    {
        private Config db = new Config();
        public Register()
        {
            InitializeComponent();
            db.Connect("userdata");
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            string nama = txtName.Text;
            string username = txtPassword.Text;
            string password = txtPassword.Text;

            if (nama.Equals("") || username.Equals("") || password.Equals(""))
            {
                txtName.Focus();
                MessageBox.Show("Data Kosong !", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            string message = "Ingin Register Data ?";
            string caption = "Information";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result;

            // Displays the MessageBox
            result = MessageBox.Show(message, caption, buttons);
            if (result == DialogResult.Yes)
            {
                //string query = "insert into user_info(names, username, password) values(@names, @username,@password)";
                //db.tambahRegister(query, nama, username, password);
                db.Execute("INSERT INTO `user_info` (`id`, `names`, `username`, `password` ) VALUES (NULL, '" +
                           txtName.Text + "', '" + txtUsername.Text + "', '" + txtPassword.Text + "')");
                MessageBox.Show("Berhasil Register Data...", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtName.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";
                this.Close();
            }
            else
            {
                this.Close(); // close the connection setup form
            }
        }
    }
}
