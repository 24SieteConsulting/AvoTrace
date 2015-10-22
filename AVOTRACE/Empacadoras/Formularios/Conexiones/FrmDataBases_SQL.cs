using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Empacadoras
{
    public partial class FrmDataBases_SQL : Form
    {
        private string CadenaDataBase = string.Empty;
        public string Instancia= string.Empty;
        public string User = string.Empty;
        public string Pass = string.Empty;
        public string DataBase= "master";

        public FrmDataBases_SQL()
        {
            InitializeComponent();
        }

        public string muestra()
        { 
           this.ShowDialog();
           return CadenaDataBase;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.Text = "Instancias SQL " + "Espere un Momento por Favor";
            Application.DoEvents();
            BasesDeDatos(Instancia,User,Pass,DataBase);
            Application.DoEvents();
        }


        private void BasesDeDatos(string instancia, string User, string Pass, string DataBase)
        {
            // Las bases de datos propias de SQL Server
            string[] basesSys = { "master", "model", "msdb", "tempdb" };
            DataTable dt = new DataTable();
            // Usamos la seguridad integrada de Windows
            string sCnn = String.Format("Server = {0}; database = {1}; User Id ={2}; Password = {3}", instancia, DataBase, User, Pass);

            // La orden T-SQL para recuperar las bases de master
            string sel = "SELECT name FROM sysdatabases";
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sel, sCnn);
                da.Fill(dt);
                dtgBaseDeDatos.DataSource = dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dtgBaseDeDatos_DoubleClick(object sender, EventArgs e)
        {
            if (dtgBaseDeDatos.Rows.Count > 0)
            {
                CadenaDataBase = dtgBaseDeDatos.CurrentRow.Cells[0].Value.ToString();
                this.Close();
            }
        }

       
    }
}
