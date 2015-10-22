using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Empacadoras
{
    class Estaciones
    {
        public void AgregarCajas(int valSucursalesId, int valCajaNumero, string valCajaDescripcion, int valCajaReciboInicial, double valCajaFondo, double valCajaMontoEfectivo, double valCajaMontoTarjeta, double valCajaMontoVale, string valCajaFecha, double valCajaUltimoTicket, double valCajaUltimaDevolucion, double valCajaUltimaCancelacion, double valCajaUltimoCorte, double valCajaUltimoRetiro)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_InsertCajas", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", valSucursalesId);
            cmd.Parameters.AddWithValue("@CajaNumero", valCajaNumero);
            cmd.Parameters.AddWithValue("@CajaDescripcion", valCajaDescripcion);
            cmd.Parameters.AddWithValue("@CajaReciboInicial", valCajaReciboInicial);
            cmd.Parameters.AddWithValue("@CajaFondo", valCajaFondo);
            cmd.Parameters.AddWithValue("@CajaMontoEfectivo", valCajaMontoEfectivo);
            cmd.Parameters.AddWithValue("@CajaMontoTarjeta", valCajaMontoTarjeta);
            cmd.Parameters.AddWithValue("@CajaMontoVale", valCajaMontoVale);
            cmd.Parameters.AddWithValue("@CajaFecha", valCajaFecha);
            cmd.Parameters.AddWithValue("@CajaUltimoTicket", valCajaUltimoTicket);
            cmd.Parameters.AddWithValue("@CajaUltimaDevolucion", valCajaUltimaDevolucion);
            cmd.Parameters.AddWithValue("@CajaUltimaCancelacion", valCajaUltimaCancelacion);
            cmd.Parameters.AddWithValue("@CajaUltimoCorte", valCajaUltimoCorte);
            cmd.Parameters.AddWithValue("@CajaUltimoRetiro", valCajaUltimoRetiro);
            
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
        public void ModificarCajas(int valId, int valNumero, string valDescripcion, int valRInicial, double valFondo,string txtFecha, int valtsucursal, double valRUltimo, double valDUltimo,double valCUltimo, double valCorteUltimo, double valRetiroUltimo)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_UpdateCajas", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajaId", valId);
            cmd.Parameters.AddWithValue("@CajaNumero", valNumero);
            cmd.Parameters.AddWithValue("@CajaDescripcion", valDescripcion);
            cmd.Parameters.AddWithValue("@CajaReciboInicial", valRInicial);
            cmd.Parameters.AddWithValue("@CajaFondo", valFondo);
            cmd.Parameters.AddWithValue("@CajaFecha", txtFecha);
            cmd.Parameters.AddWithValue("@SucursalesId", valtsucursal);
            cmd.Parameters.AddWithValue("@CajaUltimoTicket", valRUltimo);
            cmd.Parameters.AddWithValue("@CajaUltimaDevolucion", valDUltimo);
            cmd.Parameters.AddWithValue("@CajaUltimaCancelacion", valCUltimo);
            cmd.Parameters.AddWithValue("@CajaUltimoCorte", valCorteUltimo);
            cmd.Parameters.AddWithValue("@CajaUltimoRetiro", valRetiroUltimo);
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
        public void ModificarCajasImpresora(int CajaId, string CajaImpresoraTicket, string CajaSerieFactura)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_CONFIG_ImpresionUpdate", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajaId", CajaId);
            cmd.Parameters.AddWithValue("@CajaImpresoraTicket", CajaImpresoraTicket);
            cmd.Parameters.AddWithValue("@CajaSerieFactura", CajaSerieFactura);
            
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
        public DataTable ListarFoliosCaja(int CajaId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_CONFIG_CajaFoliosSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajaId", CajaId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            try
            {
                da.Fill(tb);
                return (tb);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Descripcion: " + ex.Message);
                return (tb);
            }
            finally
            {
                cn.Dispose();
                cmd.Dispose();
            }
        }
        public DataTable ListarEstaciones()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_SelectCajas", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable tb = new DataTable();
                da.Fill(tb);
                return (tb);
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
        public DataTable ListarEstacionesLogin(int valSucursal)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("EstacionesLogin_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", valSucursal);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            try
            {
                da.Fill(tb);
                return (tb);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Descripcion: "+ex.Message);
                return (tb);
            }
            finally
            {
                cn.Dispose();
                cmd.Dispose();
            }
        }
        public DataTable ListarCajasImpresora(int CajasId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("CajasImpresora_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajasId", CajasId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            try
            {
                da.Fill(tb);
                return (tb);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Descripcion: " + ex.Message);
                return (tb);
            }
            finally
            {
                cn.Dispose();
                cmd.Dispose();
            }
        }
        public DataTable ListarCajasConfig(int SucursalesId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("CajasLogin_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            try
            {
                da.Fill(tb);
                return (tb);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Descripcion: " + ex.Message);
                return (tb);
            }
            finally
            {
                cn.Dispose();
                cmd.Dispose();
            }
        }
        public void AgregarCajasSesion(int CajaId, string CajaSesionFecha, string CajaSesionHora)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_CajasSesion_Insert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajaId", CajaId);
            cmd.Parameters.AddWithValue("@CajaSesionFecha", CajaSesionFecha);
            cmd.Parameters.AddWithValue("@CajaSesionHora", CajaSesionHora);

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
        public void EliminarCajasSesion(int CajaId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_CajasSesion_Delete", cn);
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
        public DataTable BuscarCajasSesion(int CajaId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_CajasSesion_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CajaId", CajaId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            try
            {
                da.Fill(tb);
                return (tb);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Descripcion: " + ex.Message);
                return (tb);
            }
            finally
            {
                cn.Dispose();
                cmd.Dispose();
            }
        }
    }
}
