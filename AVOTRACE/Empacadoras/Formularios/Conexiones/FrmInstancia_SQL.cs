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
    public partial class FrmInstancia_SQL : Form
    {
        private string CadenaServer = string.Empty;

        public FrmInstancia_SQL()
        {
            InitializeComponent();
        }

        public string muestra()
        { 
           this.ShowDialog();
           return CadenaServer;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.Text = "Instancias SQL " + "Espere un Momento por Favor";
            Application.DoEvents();
            SqlDataSourceEnumerator instance = SqlDataSourceEnumerator.Instance;
            
            Application.DoEvents();
            Tabla_Instancias.DataSource = instance.GetDataSources();
            // Display the contents of the table.
            this.Text = "Instancias SQL ";
            Application.DoEvents();
        }

        private void Tabla_Instancias_DoubleClick(object sender, EventArgs e)
        {

            if (Tabla_Instancias.Rows.Count > 0)
            {
                if (Tabla_Instancias.CurrentRow.Cells[1].Value.ToString() != string.Empty)
                {
                    CadenaServer = Tabla_Instancias.CurrentRow.Cells[0].Value.ToString() + "\\" + Tabla_Instancias.CurrentRow.Cells[1].Value.ToString();
                }
                else
                {
                    CadenaServer = Tabla_Instancias.CurrentRow.Cells[0].Value.ToString();
                }
                this.Close();
            }
        }



        private void basesDeDatos(string instancia, string User, string Pass)
        {
            //instancia="SKYNET\\SKYSQL";
            // Las bases de datos propias de SQL Server
            string[] basesSys = { "master", "model", "msdb", "tempdb" };
            DataTable dt = new DataTable();
            // Usamos la seguridad integrada de Windows
            string sCnn = "Server = " + instancia + " ;database = master ;User Id =" + User + " ;Password = " + Pass;

            // La orden T-SQL para recuperar las bases de master
            string sel = "SELECT name FROM sysdatabases";
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sel, sCnn);
                da.Fill(dt);
                //Tabla_BaseDatos.DataSource = dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

       
    }
}
