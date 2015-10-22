using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Empacadoras
{
    class Sucursales
    {
        public DataTable ListarSucursales()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Sucursales_Select", cn);
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
        public DataTable ListarSucursalesSalida(string SucursalesId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Salidas_Sucursales_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
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
        public DataTable ListarSucursal()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexionL());
            SqlCommand cmd = new SqlCommand("usp_ReplicacionSucursalesSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable BuscarSucursales(int SucursalesId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexionR());
            SqlCommand cmd = new SqlCommand("usp_ReplicacionSucursalesBuscarSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public void AgregarSucursales(int SucursalesId, string SucursalesNombre, string SucursalesFecha, string SucursalesActivo, string SucursalesCalle, string SucursalesNInterior, string SucursalesnNExterior, string SucursalesColonia, int LocalidadId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexionR());
            SqlCommand cmd = new SqlCommand("usp_ReplicacionSucursalesInsert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
            cmd.Parameters.AddWithValue("@SucursalesNombre", SucursalesNombre);
            cmd.Parameters.AddWithValue("@SucursalesFecha", SucursalesFecha);
            cmd.Parameters.AddWithValue("@SucursalesActivo", SucursalesActivo);
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cmd.Parameters.AddWithValue("@SucursalesCalle", SucursalesCalle);
            cmd.Parameters.AddWithValue("@SucursalesNInterior", SucursalesNInterior);
            cmd.Parameters.AddWithValue("@SucursalesnNExterior", SucursalesnNExterior);
            cmd.Parameters.AddWithValue("@SucursalesColonia", SucursalesColonia);
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void ModificarSucursales(int SucursalesId, string SucursalesNombre, string SucursalesFecha, string SucursalesActivo, string SucursalesCalle, string SucursalesNInterior, string SucursalesnNExterior, string SucursalesColonia, int LocalidadId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexionR());
            SqlCommand cmd = new SqlCommand("usp_ReplicacionSucursalesUpdate", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
            cmd.Parameters.AddWithValue("@SucursalesNombre", SucursalesNombre);
            cmd.Parameters.AddWithValue("@SucursalesFecha", SucursalesFecha);
            cmd.Parameters.AddWithValue("@SucursalesActivo", SucursalesActivo);
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cmd.Parameters.AddWithValue("@SucursalesCalle", SucursalesCalle);
            cmd.Parameters.AddWithValue("@SucursalesNInterior", SucursalesNInterior);
            cmd.Parameters.AddWithValue("@SucursalesnNExterior", SucursalesnNExterior);
            cmd.Parameters.AddWithValue("@SucursalesColonia", SucursalesColonia);
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }

        public DataTable ListarSucursalConfig(int SucursalesId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_CONFIG_SucursalSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public void ModificarSucursalesConfig(int SucursalesId, string SucursalesNombre,  string SucursalesCalle, string SucursalesNInterior, string SucursalesnNExterior, string SucursalesColonia,string SucursalesCiudad, int LocalidadId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_UpdateSucursalConfig", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SucursalesId", SucursalesId);
            cmd.Parameters.AddWithValue("@SucursalesNombre", SucursalesNombre);
            cmd.Parameters.AddWithValue("@SucursalesCalle", SucursalesCalle);
            cmd.Parameters.AddWithValue("@SucursalesNInterior", SucursalesNInterior);
            cmd.Parameters.AddWithValue("@SucursalesNExterior", SucursalesnNExterior);
            cmd.Parameters.AddWithValue("@SucursalesColonia", SucursalesColonia);
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cmd.Parameters.AddWithValue("@SucursalesCiudad", SucursalesCiudad);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }

        public void GuardarSucursalesConfig(string SucursalesNombre, string SucursalesCalle, string SucursalesNInterior, string SucursalesnNExterior, string SucursalesColonia, string SucursalesCiudad, int LocalidadId, string SucursalesFecha, char SucursalesActivo, int PreciosZonasId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_InsertSucursalConfig", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            
            cmd.Parameters.AddWithValue("@SucursalesNombre", SucursalesNombre);
            cmd.Parameters.AddWithValue("@SucursalesCalle", SucursalesCalle);
            cmd.Parameters.AddWithValue("@SucursalesNInterior", SucursalesNInterior);
            cmd.Parameters.AddWithValue("@SucursalesNExterior", SucursalesnNExterior);
            cmd.Parameters.AddWithValue("@SucursalesColonia", SucursalesColonia);
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cmd.Parameters.AddWithValue("@SucursalesCiudad", SucursalesCiudad);
            cmd.Parameters.AddWithValue("@SucursalesFecha", SucursalesFecha);
            cmd.Parameters.AddWithValue("@SucursalesActivo", SucursalesActivo);
            cmd.Parameters.AddWithValue("@PreciosZonasId", PreciosZonasId);

            
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
    }
}
