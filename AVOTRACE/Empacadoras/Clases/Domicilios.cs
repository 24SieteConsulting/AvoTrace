using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Empacadoras
{
    class Domicilios
    {
        public DataTable Listar_Pais()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_PaisSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_Estado()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_EstadoSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_EstadoPaisId(int PaisId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_EstadoPaisIdSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PaisId", PaisId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_Municipio()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_MunicipioSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_Localidad()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_LocalidadSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_PaisID(int PaisId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("usp_DomiciliosPaisIDSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PaisId", PaisId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_EstadoID(int EstadoId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_EstadoIDSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EstadoId", EstadoId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public string Listar_MunicipioID(int MunicipioId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_MunicipioIDSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MunicipioId", MunicipioId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            string vMunicipio = string.Empty;
            if(tb.Rows.Count>0)
            {
                vMunicipio=tb.Rows[0][1].ToString();
            }
            cn.Dispose();
            cmd.Dispose();
            return (vMunicipio);
        }
        public DataTable Listar_LocalidadID(int LocalidadId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_LocalidadIDSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_PaisNom(string PaisNombre)
        {
            PaisNombre = "%" + PaisNombre + "%";
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_PaisNombreSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PaisNombre", PaisNombre);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_EstadoNom(string EstadoNombre)
        {
            EstadoNombre = "%" + EstadoNombre + "%";
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_EstadoNombreSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EstadoNombre", EstadoNombre);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_MunicipioNom(string MunicipioNombre)
        {
            MunicipioNombre = "%" + MunicipioNombre + "%";
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_MunicipioNombreSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MunicipioNombre", MunicipioNombre);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
        public DataTable Listar_LocalidadNom(string LocalidadNombre)
        {
            LocalidadNombre = "%" + LocalidadNombre + "%";
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_LocalidadNombreSelect", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@LocalidadNombre", LocalidadNombre);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }

        public void AgregarPais(string PaisNombre, string PaisCode, string PaisIsoCode)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_PaisInsert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PaisNombre", PaisNombre);
            cmd.Parameters.AddWithValue("@PaisCode", PaisCode);
            cmd.Parameters.AddWithValue("@PaisIsoCode", PaisIsoCode);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void EditarPais(int PaisId, string PaisNombre, string PaisCode, string PaisIsoCode)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_PaisUpdate", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PaisId", PaisId);
            cmd.Parameters.AddWithValue("@PaisNombre", PaisNombre);
            cmd.Parameters.AddWithValue("@PaisCode", PaisCode);
            cmd.Parameters.AddWithValue("@PaisIsoCode", PaisIsoCode);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void AgregarEstado(string EstadoNombre, int PaisId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_EstadoInsert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EstadoNombre", EstadoNombre);
            cmd.Parameters.AddWithValue("@PaisId", PaisId);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void EditarEstado(int EstadoId, string EstadoNombre, int PaisId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_EstadoUpdate", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EstadoId", EstadoId);
            cmd.Parameters.AddWithValue("@EstadoNombre", EstadoNombre);
            cmd.Parameters.AddWithValue("@PaisId", PaisId);


            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void AgregarMunicipio(string MunicipioNombre, int EstadoId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_MunicipiosInsert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MunicipioNombre", MunicipioNombre);
            cmd.Parameters.AddWithValue("@EstadoId", EstadoId);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void EditarMunicipio(int MunicipioId, string MunicipioNombre, int EstadoId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_MunicipioUpdate", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MunicipioId", MunicipioId);
            cmd.Parameters.AddWithValue("@MunicipioNombre", MunicipioNombre);
            cmd.Parameters.AddWithValue("@EstadoId", EstadoId);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void AgregarLocalidad(string LocalidadNombre, string LocalidadCP, int MunicipioId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_LocalidadInsert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@LocalidadNombre", LocalidadNombre);
            cmd.Parameters.AddWithValue("@LocalidadCP", LocalidadCP);
            cmd.Parameters.AddWithValue("@MunicipioId", MunicipioId);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
        public void EditarLocalidad(int LocalidadId, string LocalidadNombre, string LocalidadCP, int MunicipioId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Domicilios_LocalidadUpdate", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@LocalidadId", LocalidadId);
            cmd.Parameters.AddWithValue("@LocalidadNombre", LocalidadNombre);
            cmd.Parameters.AddWithValue("@LocalidadCP", LocalidadCP);
            cmd.Parameters.AddWithValue("@MunicipioId", MunicipioId);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Dispose();
            cmd.Dispose();
        }
    }
}
