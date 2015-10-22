using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Security.Cryptography;
using Microsoft.Win32;

namespace Empacadoras
{
    public partial class FrmConexion : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        private static FrmConexion m_FormDefInstance;
        public static FrmConexion DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new FrmConexion();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }
        
        public FrmConexion()
        {
            InitializeComponent();
        }
        private void CargarIconos()
        {
            btnGuardarConexion.LargeGlyph = imageCollection1.Images[0];
            btnProbarConexion.LargeGlyph = imageCollection1.Images[1];
        }
        private void Cargar_Cajas()
        {
            MSRegistro RegOut = new MSRegistro();
            Crypto DesencriptarTexto = new Crypto();
            int valSucursal = Convert.ToInt32(cmbSucursal.SelectedValue.ToString());
            Estaciones estacion = new Estaciones();
            cbEstacion.DataSource = estacion.ListarEstacionesLogin(valSucursal);
            cbEstacion.ValueMember = "EstacionesId";
            cbEstacion.DisplayMember = "EstacionesNombre";
        }
        private void Cargar_Sucursales()
        {
            Sucursales sucursal = new Sucursales();
            cmbSucursal.DataSource = sucursal.ListarSucursales();
            cmbSucursal.ValueMember = "SucursalesId";
            cmbSucursal.DisplayMember = "SucursalesNombre";
        }
        public string LeerConexion()
        {
            try
            {
                string StrConexion;
                string ValServer;
                string ValDBase;
                string ValUser;
                string ValPass;

                ValServer = txtServer.Text;
                ValDBase = txtDB.Text;
                ValUser = txtLogin.Text;
                ValPass = txtPassword.Text;


                StrConexion = String.Format("Data Source={0};Initial Catalog={1};Persist Security Info=True;User ID={2};Password={3}", ValServer, ValDBase, ValUser, ValPass);
                return StrConexion;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void FrmConexion_Load(object sender, EventArgs e)
        {
            CargarIconos();
            MSRegistro RegOut = new MSRegistro();
            Crypto DesencriptarTexto = new Crypto();
            string valServer, valDB, valLogin, valPass;

            try
            {
                valServer = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Server"));
                valDB = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "DBase"));
                valLogin = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "User"));
                valPass = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Password"));
            }
            catch
            {
                valServer = string.Empty;
                valDB = string.Empty;
                valLogin = string.Empty;
                valPass = string.Empty;
            }
            if (valServer != null && valDB != null && valLogin != null & valPass != null)
            {
                txtServer.Text = valServer;
                txtDB.Text = valDB;
                txtLogin.Text = valLogin;
                txtPassword.Text = valPass;
                using (SqlConnection conn = new SqlConnection(String.Format("Data Source={0};Initial Catalog={1};Persist Security Info=True;User ID={2};Password={3}", txtServer.Text, txtDB.Text, txtLogin.Text, txtPassword.Text)))
                {
                    try
                    {
                        conn.Open();
                        Cargar_Sucursales();
                        cmbSucursal.SelectedValue = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Sucursal"));
                        Cargar_Cajas();
                        cbEstacion.SelectedValue = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Estacion"));
                    }
                    catch
                    {
                        MessageBox.Show("No se Han Configurado datos Correctos para la conexion a la base de datos");
                    }
                }
            }
            else
            {
                txtServer.Text = string.Empty;
                txtDB.Text = string.Empty;
                txtLogin.Text = string.Empty;
                txtPassword.Text = string.Empty;
            }
        }
        private void btnGuardarConexion_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtServer.Text != "" && txtDB.Text != "" && txtLogin.Text != "" && txtPassword.Text != "")
            {
                {
                    SqlConnection conn = new SqlConnection("Data Source=" + txtServer.Text + ";Initial Catalog=" + txtDB.Text + ";Persist Security Info=True;User ID=" + txtLogin.Text + ";Password=" + txtPassword.Text);
                    try
                    {
                        MSRegistro RegIn = new MSRegistro();
                        Crypto EncriptarTexto = new Crypto();
                        conn.Open();
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "Server", EncriptarTexto.Encriptar(txtServer.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "DBase", EncriptarTexto.Encriptar(txtDB.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "User", EncriptarTexto.Encriptar(txtLogin.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "Password", EncriptarTexto.Encriptar(txtPassword.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "Sucursal", EncriptarTexto.Encriptar(Convert.ToString(cmbSucursal.SelectedValue)));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "Estacion", EncriptarTexto.Encriptar(Convert.ToString(cbEstacion.SelectedValue)));
                        MessageBox.Show("Se Grabaron los Datos Del Servidor Principal Con Exito");
                        this.Close();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error Descripcion: " + ex);
                    }
                }
            }
            else
            {
                MessageBox.Show("Faltan Datos para la Conexion Principal");
            }
        }
        private void btnProbarConexion_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (txtServer.Text != "" && txtDB.Text != "" && txtLogin.Text != "" && txtPassword.Text != "")
            {
                using (SqlConnection conn = new SqlConnection(String.Format("Data Source={0};Initial Catalog={1};Persist Security Info=True;User ID={2};Password={3}", txtServer.Text, txtDB.Text, txtLogin.Text, txtPassword.Text)))
                {
                    try
                    {
                        conn.Open();
                        MessageBox.Show("Conexion Exitosa DB Principal");
                        MSRegistro RegIn = new MSRegistro();
                        Crypto EncriptarTexto = new Crypto();
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "Server", EncriptarTexto.Encriptar(txtServer.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "DBase", EncriptarTexto.Encriptar(txtDB.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "User", EncriptarTexto.Encriptar(txtLogin.Text));
                        RegIn.SaveSetting("AvoTrace", "ConexionSQL", "Password", EncriptarTexto.Encriptar(txtPassword.Text));
                        Cargar_Sucursales();
                        Cargar_Cajas();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("No se pudo Conectar con la Base de Datos Principal: " + ex);
                    }
                }

            }
        }
        private void cmbSucursal_SelectionChangeCommitted(object sender, EventArgs e)
        {
            Cargar_Cajas();
        }
        private void txtDB_KeyDown(object sender, KeyEventArgs e)
        {
            if (txtDB.Text == string.Empty && e.KeyValue == 13)
            {
                if (txtServer.Text != string.Empty && txtLogin.Text != string.Empty && txtPassword.Text != string.Empty)
                {
                    FrmDataBases_SQL frm = new FrmDataBases_SQL();
                    frm.Instancia = txtServer.Text;
                    frm.User = txtLogin.Text;
                    frm.Pass = txtPassword.Text;
                    txtDB.Text = frm.muestra();
                }
                else
                {
                    MessageBox.Show("Faltan por definir Datos");
                }
            }
        }
        private void txtServer_KeyDown(object sender, KeyEventArgs e)
        {
            if (txtServer.Text == string.Empty && e.KeyValue == 13)
            {
                FrmInstancia_SQL frm = new FrmInstancia_SQL();
                txtServer.Text = frm.muestra();
            }
        }
        private void cmbSucursal_KeyDown(object sender, KeyEventArgs e)
        {
            e.SuppressKeyPress = true;
        }

    }
}