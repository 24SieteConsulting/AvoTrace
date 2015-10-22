using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Empacadoras
{
    public partial class Principal : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public Principal()
        {
            InitializeComponent();
        }

        private void Principal_Load(object sender, EventArgs e)
        {

        }

        private void btnEmpresa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmEmpresa.DefInstance.MdiParent = this;
            FrmEmpresa.DefInstance.Show();
        }

        private void btnConexion_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmConexion.DefInstance.MdiParent = this;
            FrmConexion.DefInstance.Show();
        }
    }
}
