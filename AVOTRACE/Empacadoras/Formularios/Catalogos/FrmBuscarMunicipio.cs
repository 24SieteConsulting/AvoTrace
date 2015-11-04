using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace Empacadoras
{
    public partial class FrmBuscarMunicipio : DevExpress.XtraEditors.XtraForm
    {
        public FrmBuscarMunicipio()
        {
            InitializeComponent();
        }
        private string[] Valores = new string[2] { string.Empty, string.Empty };

        public string[] Inicia()
        {
            this.ShowDialog();
            return Valores;
        }
        private void FrmBuscarMunicipio_Load(object sender, EventArgs e)
        {
            Domicilios buscar = new Domicilios();
            dtgDetallesMunicipio.DataSource = buscar.Listar_Municipio();
        }
        private void dtgDetallesMunicipio_DoubleClick(object sender, EventArgs e)
        {
            foreach (int i in dtgMunicipioValores.GetSelectedRows())
            {
                DataRow row = dtgMunicipioValores.GetDataRow(i);
                Valores[0] = row[0].ToString();
                Valores[1] = row[1].ToString();
                this.Close();
            }
        }
        private void btnSalir_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Close();
        }
    }
}