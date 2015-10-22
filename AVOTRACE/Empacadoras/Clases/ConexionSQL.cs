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
    class ConexionSQL
    {
        public string LeerConexion()
        {
            try 
            {
                string StrConexion;
                string ValServer;
                string ValDBase;
                string ValUser;
                string ValPass;
                MSRegistro RegOut = new MSRegistro();
                Crypto DesencriptarTexto = new Crypto();

                ValServer = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Server"));
                ValDBase = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "DBase"));
                ValUser = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "User"));
                ValPass = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Password"));
                

                StrConexion = "Data Source="+ValServer+";Initial Catalog="+ValDBase+";Persist Security Info=True;User ID="+ValUser+";Password="+ ValPass;
                return StrConexion;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public string LeerConexionL()
        {
            try
            {
                string StrConexion;
                string ValServer;
                string ValDBase;
                string ValUser;
                string ValPass;
                MSRegistro RegOut = new MSRegistro();
                Crypto DesencriptarTexto = new Crypto();
                ValServer = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Server"));
                ValDBase = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "DBase"));
                ValUser = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "User"));
                ValPass = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Password"));


                StrConexion = "Data Source=" + ValServer + ";Initial Catalog=" + ValDBase + ";Persist Security Info=True;User ID=" + ValUser + ";Password=" + ValPass;
                return StrConexion;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public string LeerConexionR()
        {
            try
            {
                string StrConexion;
                string ValServerR;
                string ValDBaseR;
                string ValUserR;
                string ValPassR;
                MSRegistro RegOut = new MSRegistro();
                Crypto DesencriptarTexto = new Crypto();
                ValServerR = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "ServerR"));
                ValDBaseR = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "DBaseR"));
                ValUserR = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "UserR"));
                ValPassR = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "PasswordR"));


                StrConexion = "Data Source=" + ValServerR + ";Initial Catalog=" + ValDBaseR + ";Persist Security Info=True;User ID=" + ValUserR + ";Password=" + ValPassR;
                return StrConexion;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public Boolean ValidaConexion()
        {
            try
            {
                string ValServer;
                string ValDBase;
                string ValUser;
                string ValPass;
                MSRegistro RegOut = new MSRegistro();
                Crypto DesencriptarTexto = new Crypto();
                try
                {
                    ValServer = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Server"));
                    ValDBase = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "DBase"));
                    ValUser = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "User"));
                    ValPass = DesencriptarTexto.Desencriptar(RegOut.GetSetting("AvoTrace", "ConexionSQL", "Password"));
                }
                catch
                {
                    ValServer = string.Empty;
                    ValDBase = string.Empty;
                    ValUser = string.Empty;
                    ValPass = string.Empty;
                }

                if (ValServer != string.Empty && ValDBase != string.Empty && ValUser != string.Empty && ValPass != string.Empty)
                {
                    try
                    {
                        SqlConnection conn = new SqlConnection("Data Source=" + ValServer + ";Initial Catalog=" + ValDBase + ";Persist Security Info=True;User ID=" + ValUser + ";Password=" + ValPass);
                        conn.Open();
                        return true;
                    }
                    catch
                    {
                        return false;
                    }
                }
                else
                { 
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
        public void EliminarSesion(int CajaId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_SesionDelete", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajaId", CajaId);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cn.Dispose();
                cmd.Dispose();
            }
        }
    }
}
