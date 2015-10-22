using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Empacadoras
{
    class Estado
    {
        public DataTable ListarEstados()
        {
            ConexionSQL cnn = new ConexionSQL();
            SqlConnection cn = new SqlConnection(cnn.LeerConexion());
            SqlCommand cmd = new SqlCommand("Estado_Select", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            cn.Dispose();
            cmd.Dispose();
            return (tb);
        }
    }
}
