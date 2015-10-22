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
    class Empresa
    {
        public void AgregarEmpresa(int EmpresaId, string EmpresaNombre, string EmpresaNombreFiscal, string EmpresaCalle, string EmpresaNExterior, string EmpresaNInterior, string EmpresaColonia, string EmpresaCP, string EmpresaCiudad, string EmpresaRFC, string EmpresaRegSAGARPA, string EmpresaRepresentante, string EmpresaPoblacion, string EmpresaMunicipio, int EstadosId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Empresa_Insert", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EmpresaId", EmpresaId);
            cmd.Parameters.AddWithValue("@EmpresaNombre", EmpresaNombre);
            cmd.Parameters.AddWithValue("@EmpresaNombreFiscal", EmpresaNombreFiscal);
            cmd.Parameters.AddWithValue("@EmpresaCalle", EmpresaCalle);
            cmd.Parameters.AddWithValue("@EmpresaNExterior", EmpresaNExterior);
            cmd.Parameters.AddWithValue("@EmpresaNInterior", EmpresaNInterior);
            cmd.Parameters.AddWithValue("@EmpresaColonia", EmpresaColonia);
            cmd.Parameters.AddWithValue("@EmpresaCP", EmpresaCP);
            cmd.Parameters.AddWithValue("@EmpresaCiudad", EmpresaCiudad);
            cmd.Parameters.AddWithValue("@EmpresaRFC", EmpresaRFC);
            cmd.Parameters.AddWithValue("@EmpresaRegSAGARPA", EmpresaRegSAGARPA);
            cmd.Parameters.AddWithValue("@EmpresaRepresentante", EmpresaRepresentante);
            cmd.Parameters.AddWithValue("@EmpresaPoblacion", EmpresaPoblacion);
            cmd.Parameters.AddWithValue("@EmpresaMunicipio", EmpresaMunicipio);
            cmd.Parameters.AddWithValue("@EstadosId", EstadosId);
            
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
        public void ModificarEmpresa(int EmpresaId, string EmpresaNombre, string EmpresaNombreFiscal, string EmpresaCalle, string EmpresaNExterior, string EmpresaNInterior, string EmpresaColonia, string EmpresaCP, string EmpresaCiudad, string EmpresaRFC, string EmpresaRegSAGARPA, string EmpresaRepresentante, string EmpresaPoblacion, string EmpresaMunicipio, int EstadosId)
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Empresa_Update", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EmpresaId", EmpresaId);
            cmd.Parameters.AddWithValue("@EmpresaNombre", EmpresaNombre);
            cmd.Parameters.AddWithValue("@EmpresaNombreFiscal", EmpresaNombreFiscal);
            cmd.Parameters.AddWithValue("@EmpresaCalle", EmpresaCalle);
            cmd.Parameters.AddWithValue("@EmpresaNExterior", EmpresaNExterior);
            cmd.Parameters.AddWithValue("@EmpresaNInterior", EmpresaNInterior);
            cmd.Parameters.AddWithValue("@EmpresaColonia", EmpresaColonia);
            cmd.Parameters.AddWithValue("@EmpresaCP", EmpresaCP);
            cmd.Parameters.AddWithValue("@EmpresaCiudad", EmpresaCiudad);
            cmd.Parameters.AddWithValue("@EmpresaRFC", EmpresaRFC);
            cmd.Parameters.AddWithValue("@EmpresaRegSAGARPA", EmpresaRegSAGARPA);
            cmd.Parameters.AddWithValue("@EmpresaRepresentante", EmpresaRepresentante);
            cmd.Parameters.AddWithValue("@EmpresaPoblacion", EmpresaPoblacion);
            cmd.Parameters.AddWithValue("@EmpresaMunicipio", EmpresaMunicipio);
            cmd.Parameters.AddWithValue("@EstadosId", EstadosId);
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
        public DataTable SeleccionarEmpresa()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Empresa_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
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
