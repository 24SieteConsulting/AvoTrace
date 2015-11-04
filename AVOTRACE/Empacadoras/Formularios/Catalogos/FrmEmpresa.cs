using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;

namespace Empacadoras
{
    public partial class FrmEmpresa : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public FrmEmpresa()
        {
            InitializeComponent();
        }
        private static FrmEmpresa m_FormDefInstance;
        public static FrmEmpresa DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new FrmEmpresa();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }
        private void BloquearObjetos(Boolean Valor)
        {
            txtEmpresaNombre.Enabled = Valor;
            txtEmpresaFiscal.Enabled = Valor;
            txtCalle.Enabled = Valor;
            txtNExt.Enabled = Valor;
            txtNInt.Enabled = Valor;
            txtColonia.Enabled = Valor;
            txtCP.Enabled = Valor;
            txtCiudad.Enabled = Valor;
            txtRegSagarpa.Enabled = Valor;
            txtRepresentante.Enabled = Valor;
            txtPoblacion.Enabled = Valor;
            txtMunicipio.Enabled = Valor;
            txtRFC.Enabled = Valor;
            cmbEstado.Enabled = Valor;
        }
        private void CargarIconos()
        {
            btnGuardar.LargeGlyph = imageCollection1.Images[0];
            btnEditar.LargeGlyph = imageCollection1.Images[1];
        }
        private void Cargar_Estados()
        {
            Estado LEstado = new Estado();
            cmbEstado.DataSource = LEstado.ListarEstados();
            cmbEstado.ValueMember = "EstadoId";
            cmbEstado.DisplayMember = "EstadoNombre";
        }
        private void CargarEmpresa()
        {
            Empresa Emp = new Empresa();
            DataTable tb = Emp.SeleccionarEmpresa();
            if(tb.Rows.Count>0)
            {
                txtEmpresaId.Text=tb.Rows[0][0].ToString();
                txtEmpresaNombre.Text = tb.Rows[0][1].ToString();
                txtEmpresaFiscal.Text=tb.Rows[0][2].ToString();
                txtCalle.Text = tb.Rows[0][3].ToString();
                txtNExt.Text = tb.Rows[0][4].ToString();
                txtNInt.Text = tb.Rows[0][5].ToString();
                txtColonia.Text = tb.Rows[0][6].ToString();
                txtCP.Text = tb.Rows[0][7].ToString();
                txtCiudad.Text = tb.Rows[0][8].ToString();
                txtRFC.Text = tb.Rows[0][9].ToString();
                txtRegSagarpa.Text = tb.Rows[0][10].ToString();
                txtRepresentante.Text = tb.Rows[0][11].ToString();
                txtPoblacion.Text = tb.Rows[0][12].ToString();
                txtMunicipio.Text = tb.Rows[0][13].ToString();
                cmbEstado.SelectedValue = Convert.ToInt32(tb.Rows[0][14].ToString());
            }
        }
        private void FrmEmpresa_Load(object sender, EventArgs e)
        {
            txtEmpresaId.Enabled = false;
            BloquearObjetos(false);
            CargarIconos();
            Cargar_Estados();
            CargarEmpresa();
            if(txtEmpresaId.Text==string.Empty)
            {
                BloquearObjetos(true);
            }
        }

        private void btnGuardar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            int vEmpresaId = 1;
            string vEmpresaNombre = txtEmpresaNombre.Text;
            string vEmpresaFiscal = txtEmpresaFiscal.Text;
            string vEmpresaCalle = txtCalle.Text;
            string vEmpresaNExterior = txtNExt.Text;
            string vEmpresaNInterior = txtNInt.Text;
            string vEmpresaColonia = txtColonia.Text;
            string vEmpresaCP = txtCP.Text;
            string vEmpresaCiudad = txtCiudad.Text;
            string vEmpresaRFC = txtRFC.Text;
            string vEmpresaRegSAGARPA = txtRegSagarpa.Text;
            string vEmpresaRepresentante = txtRepresentante.Text;
            string vEmpresaPoblacion = txtPoblacion.Text;
            string vEmpresaMunicipio = txtMunicipio.Text;
            int vEstadosId = Convert.ToInt32(cmbEstado.SelectedValue.ToString());
            Empresa GuardarEmp = new Empresa();
            if (txtEmpresaId.Text == string.Empty)
            {
                GuardarEmp.AgregarEmpresa(vEmpresaId, vEmpresaNombre, vEmpresaFiscal, vEmpresaCalle, vEmpresaNExterior, vEmpresaNInterior, vEmpresaColonia, vEmpresaCP, vEmpresaCiudad, vEmpresaRFC, vEmpresaRegSAGARPA, vEmpresaRepresentante, vEmpresaPoblacion, vEmpresaMunicipio, vEstadosId);
            }
            else
            {
                GuardarEmp.ModificarEmpresa(vEmpresaId, vEmpresaNombre, vEmpresaFiscal, vEmpresaCalle, vEmpresaNExterior, vEmpresaNInterior, vEmpresaColonia, vEmpresaCP, vEmpresaCiudad, vEmpresaRFC, vEmpresaRegSAGARPA, vEmpresaRepresentante, vEmpresaPoblacion, vEmpresaMunicipio, vEstadosId);
            }
            MessageBox.Show("La Empresa se ha Actualizado con exito");
            BloquearObjetos(false);
        }

        private void txtCP_KeyDown(object sender, KeyEventArgs e)
        {
            Validar_Campos valida = new Validar_Campos();
            valida.Solo_Numeros(sender, e, txtCP.Text);
        }

        private void cmbEstado_KeyDown(object sender, KeyEventArgs e)
        {
            e.SuppressKeyPress = true;
        }

        private void btnEditar_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            BloquearObjetos(true);
        }

        private void txtEmpresaNombre_Leave(object sender, EventArgs e)
        {
            txtEmpresaNombre.Text = txtEmpresaNombre.Text.ToUpper();
        }

        private void txtRFC_Leave(object sender, EventArgs e)
        {
            txtRFC.Text = txtRFC.Text.ToUpper();
        }

        private void txtEmpresaFiscal_Leave(object sender, EventArgs e)
        {
            txtEmpresaFiscal.Text = txtEmpresaFiscal.Text.ToUpper();
        }

        private void txtCalle_Leave(object sender, EventArgs e)
        {
            txtCalle.Text = txtCalle.Text.ToUpper();
        }

        private void txtNExt_Leave(object sender, EventArgs e)
        {
            txtNExt.Text = txtNExt.Text.ToUpper();
        }

        private void txtNInt_Leave(object sender, EventArgs e)
        {
            txtNInt.Text = txtNInt.Text.ToUpper();
        }

        private void txtColonia_Leave(object sender, EventArgs e)
        {
            txtColonia.Text = txtColonia.Text.ToUpper();
        }

        private void txtCP_Leave(object sender, EventArgs e)
        {
            txtCP.Text = txtCP.Text.ToUpper();
        }

        private void txtCiudad_Leave(object sender, EventArgs e)
        {
            txtCiudad.Text = txtCiudad.Text.ToUpper();
        }

        private void txtRegSagarpa_Leave(object sender, EventArgs e)
        {
            txtRegSagarpa.Text = txtRegSagarpa.Text.ToUpper();
        }

        private void txtRepresentante_Leave(object sender, EventArgs e)
        {
            txtRepresentante.Text = txtRepresentante.Text.ToUpper();
        }

        private void txtPoblacion_Leave(object sender, EventArgs e)
        {
            txtPoblacion.Text = txtPoblacion.Text.ToUpper();
        }

        private void txtMunicipio_Leave(object sender, EventArgs e)
        {
            txtMunicipio.Text = txtMunicipio.Text.ToUpper();
        }
    }
}