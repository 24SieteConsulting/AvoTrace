using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars;

namespace Empacadoras
{
    public partial class FrmDomicilios : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public FrmDomicilios()
        {
            InitializeComponent();
        }
        private static FrmDomicilios m_FormDefInstance;
        public static FrmDomicilios DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new FrmDomicilios();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }
        private void LimpiarObjPais()
        {
            txtPaisId.Text = string.Empty;
            txtPaisNombre.Text = string.Empty;
            txtPaisCode.Text = string.Empty;
            txtPaisISO.Text = string.Empty;
        }
        private void LimpiarObjEstado()
        {
            try
            {
                txtEstadoId.Text = string.Empty;
                txtEstadoNombre.Text = string.Empty;
                lookEstadoPais.EditValue = null;
            }
            catch {}
        }
        private void LimpiarObjMunicipio()
        {
            try
            {
                txtMunicipioId.Text = string.Empty;
                txtMunicipioNombre.Text = string.Empty;
                lookMunicipioPais.EditValue = null;
                lookMunicipioEstado.EditValue = null;
            }
            catch { }
        }
        private void LimpiarObjLocalidad()
        {
            txtLocalidadId.Text = string.Empty;
            txtLocalidadNombre.Text = string.Empty;
            txtLocalidadCP.Text = string.Empty;
            txtLocalidadMunicipioId.Text = string.Empty;
            txtLocalidadMunucipioNombre.Text = string.Empty;
        }
        private void CargarLookMunicipioPais()
        {
            Domicilios dom1 = new Domicilios();
            lookMunicipioPais.Properties.DataSource = dom1.Listar_Pais();
            lookMunicipioPais.Properties.DisplayMember = "PaisNombre";
            lookMunicipioPais.Properties.ValueMember = "PaisId";
            lookMunicipioPais.Properties.NullText = "Seleciona Un Pais";
            lookMunicipioPais.EditValue = null;
        }
        private void CargarLookPais()
        {
            Domicilios dom = new Domicilios();
            lookEstadoPais.Properties.DataSource = dom.Listar_Pais();
            lookEstadoPais.Properties.DisplayMember = "PaisNombre";
            lookEstadoPais.Properties.ValueMember = "PaisId";
            lookEstadoPais.Properties.NullText = "Seleciona Un Pais";
            lookEstadoPais.EditValue = null;
        }
        private void CargarLookMunicipioEstado()
        {
            Domicilios dom = new Domicilios();
            lookMunicipioEstado.Properties.DataSource = dom.Listar_EstadoPaisId(Convert.ToInt32(lookMunicipioPais.EditValue.ToString()));
            lookMunicipioEstado.Properties.DisplayMember = "EstadoNombre";
            lookMunicipioEstado.Properties.ValueMember = "EstadoId";
            lookMunicipioEstado.Properties.NullText = "Seleciona Un Estado";
            lookMunicipioEstado.EditValue = null;
        }
        private void CargarIconos()
        {
            btnNuevo.LargeGlyph = imageCollection1.Images[0];
            btnGuardar.LargeGlyph = imageCollection1.Images[1];
            btnEditar.LargeGlyph = imageCollection1.Images[2];
            btnEliminar.LargeGlyph = imageCollection1.Images[3];
        }
        private void ListarPais()
        {
            Domicilios pais = new Domicilios();
            dtgDetallesPais.DataSource = pais.Listar_Pais();
        }
        private void ListarEstados()
        {
            Domicilios Estados = new Domicilios();
            dtgDetallesEstado.DataSource = Estados.Listar_Estado();
        }
        private void ListarMunicipio()
        {
            Domicilios Municipio = new Domicilios();
            dtgDetallesMunicipio.DataSource = Municipio.Listar_Municipio();
        }
        private void ListarLocalidad()
        {
            Domicilios Localidad = new Domicilios();
            dtgDetallesLocalidad.DataSource = Localidad.Listar_Localidad();
        }
        private void BloquearObjetosPais(Boolean Valor)
        {
            txtPaisNombre.Enabled = Valor;
            txtPaisCode.Enabled = Valor;
            txtPaisISO.Enabled = Valor;
        }
        private void BloquearObjetosEstados(Boolean Valor)
        {
            txtEstadoNombre.Enabled = Valor;
            lookEstadoPais.Enabled = Valor;
        }
        private void BloquearObjetosMunicipios(Boolean Valor)
        {
            txtMunicipioNombre.Enabled = Valor;
            lookMunicipioPais.Enabled = Valor;
            lookMunicipioEstado.Enabled = Valor;
        }
        private void BloquearObjetosLocalidad(Boolean Valor)
        {
            txtLocalidadNombre.Enabled = Valor;
            txtLocalidadCP.Enabled = Valor;
            txtLocalidadMunicipioId.Enabled = Valor;
        }
        private void FrmDomicilios_Load(object sender, EventArgs e)
        {
            BloquearObjetosPais(false);
            BloquearObjetosEstados(false);
            BloquearObjetosMunicipios(false);
            BloquearObjetosLocalidad(false);
            CargarLookPais();
            CargarLookMunicipioPais();

            CargarIconos();
            ListarPais();
            ListarEstados();
            ListarMunicipio();
            ListarLocalidad();
        }
        private void TabControl_SelectedPageChanged(object sender, DevExpress.XtraTab.TabPageChangedEventArgs e)
        {
            string valor = TabControl.SelectedTabPage.Name;
            switch (valor)
            {
                case "TabPais":
                    break;
                case "TabEstado":
                    break;
                case "TabMunicipio":
                    break;
                case "TabLocalidad":
                    break;
            }
        }

        private void btnGuardar_ItemClick(object sender, ItemClickEventArgs e)
        {
            try
            {
                Domicilios GuardarD = new Domicilios();
                string valor = TabControl.SelectedTabPage.Name;
                switch (valor)
                {
                    case "TabPais":
                        if (txtPaisNombre.Text != string.Empty && txtPaisCode.Text != string.Empty && txtPaisISO.Text != string.Empty)
                        {
                            if (txtPaisId.Text == string.Empty)
                            {
                                GuardarD.AgregarPais(txtPaisNombre.Text, txtPaisCode.Text, txtPaisISO.Text);
                            }
                            else
                            {
                                GuardarD.EditarPais(Convert.ToInt32(txtPaisId.Text), txtPaisNombre.Text, txtPaisCode.Text, txtPaisISO.Text);
                            }
                            dtgDetallesPais.DataSource = GuardarD.Listar_Pais();
                            LimpiarObjPais();
                            BloquearObjetosPais(false);
                            txtPaisNombre.Focus();
                        }
                        else
                        {
                            MessageBox.Show("Faltan Datos por Capturar");
                        }
                        break;
                    case "TabEstado":
                        if(txtEstadoNombre.Text!=string.Empty&& lookEstadoPais.EditValue!=null)
                        {
                            if(txtEstadoId.Text==string.Empty)
                            {
                                GuardarD.AgregarEstado(txtEstadoNombre.Text,Convert.ToInt32(lookEstadoPais.EditValue.ToString()));
                            }
                            else
                            {
                                GuardarD.EditarEstado(Convert.ToInt32(txtEstadoId.Text), txtEstadoNombre.Text, Convert.ToInt32(lookEstadoPais.EditValue.ToString()));
                            }
                            dtgDetallesEstado.DataSource = GuardarD.Listar_Estado();
                            LimpiarObjEstado();
                            BloquearObjetosEstados(false);
                            txtEstadoNombre.Focus();
                        }
                        else
                        {
                            MessageBox.Show("Faltan Datos por Capturar");
                        }
                        break;
                    case "TabMunicipio":
                        if (txtMunicipioNombre.Text != string.Empty&& lookMunicipioPais.EditValue!=null&&lookMunicipioEstado.EditValue!=null)
                        {
                            if (txtMunicipioId.Text == string.Empty)
                            {
                                GuardarD.AgregarMunicipio(txtMunicipioNombre.Text, Convert.ToInt32(lookMunicipioEstado.EditValue.ToString()));
                            }
                            else
                            {
                                GuardarD.EditarMunicipio(Convert.ToInt32(txtMunicipioId.Text), txtMunicipioNombre.Text, Convert.ToInt32(lookMunicipioEstado.EditValue.ToString()));
                            }
                            dtgDetallesMunicipio.DataSource = GuardarD.Listar_Municipio();
                            LimpiarObjMunicipio();
                            BloquearObjetosMunicipios(false);
                            txtMunicipioNombre.Focus();
                        }
                        else
                        {
                            MessageBox.Show("Faltan Datos por Capturar");
                        }
                        break;
                    case "TabLocalidad":
                        if (txtLocalidadNombre.Text != string.Empty && txtLocalidadMunicipioId.Text!=string.Empty)
                        {
                            if (txtLocalidadId.Text == string.Empty)
                            {
                                GuardarD.AgregarLocalidad(txtLocalidadNombre.Text,txtLocalidadCP.Text,Convert.ToInt32(txtLocalidadMunicipioId.Text));
                            }
                            else
                            {
                                GuardarD.EditarLocalidad(Convert.ToInt32(txtLocalidadId.Text), txtLocalidadNombre.Text, txtLocalidadCP.Text, Convert.ToInt32(txtLocalidadMunicipioId.Text));
                            }
                            dtgDetallesLocalidad.DataSource = GuardarD.Listar_Localidad();
                            LimpiarObjLocalidad();
                            BloquearObjetosLocalidad(false);
                            txtLocalidadNombre.Focus();
                        }
                        else
                        {
                            MessageBox.Show("Faltan Datos por Capturar");
                        }
                        break;
                }
                MessageBox.Show("Se ha Guardado los datos Con Exito");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void btnNuevo_ItemClick(object sender, ItemClickEventArgs e)
        {
            try
            {
                string valor = TabControl.SelectedTabPage.Name;
                switch (valor)
                {
                    case "TabPais":
                        LimpiarObjPais();
                        BloquearObjetosPais(true);
                        txtPaisNombre.Focus();
                        break;
                    case "TabEstado":
                        LimpiarObjEstado();
                        BloquearObjetosEstados(true);
                        txtEstadoNombre.Focus();
                        break;
                    case "TabMunicipio":
                        LimpiarObjMunicipio();
                        BloquearObjetosMunicipios(true);
                        txtMunicipioNombre.Focus();
                        break;
                    case "TabLocalidad":
                        LimpiarObjLocalidad();
                        BloquearObjetosLocalidad(true);
                        txtLocalidadNombre.Focus();
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void btnEditar_ItemClick(object sender, ItemClickEventArgs e)
        {
            try
            {
                string valor = TabControl.SelectedTabPage.Name;
                switch (valor)
                {
                    case "TabPais":
                        if(txtPaisId.Text!=string.Empty)
                        {
                            BloquearObjetosPais(true);
                        }
                        else
                        {
                            MessageBox.Show("No se ha seleccionado Datos a Editar");
                        }
                        break;
                    case "TabEstado":
                        if (txtEstadoId.Text != string.Empty)
                        {
                            BloquearObjetosEstados(true);
                        }
                        else
                        {
                            MessageBox.Show("No se ha seleccionado Datos a Editar");
                        }
                        break;
                    case "TabMunicipio":
                        if (txtMunicipioId.Text != string.Empty)
                        {
                            BloquearObjetosMunicipios(true);
                        }
                        else
                        {
                            MessageBox.Show("No se ha seleccionado Datos a Editar");
                        }
                        break;
                    case "TabLocalidad":
                        if (txtLocalidadId.Text != string.Empty)
                        {
                            BloquearObjetosLocalidad(true);
                        }
                        else
                        {
                            MessageBox.Show("No se ha seleccionado Datos a Editar");
                        }
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void lookMunicipioPais_EditValueChanged(object sender, EventArgs e)
        {
            CargarLookMunicipioEstado();
        }
        private void dtgDetallesPais_DoubleClick(object sender, EventArgs e)
        {
            foreach (int i in dtgPaisValores.GetSelectedRows())
            {
                DataRow row = dtgPaisValores.GetDataRow(i);
                txtPaisId.Text = row[0].ToString();
                txtPaisNombre.Text = row[1].ToString();
                txtPaisCode.Text = row[2].ToString();
                txtPaisISO.Text = row[3].ToString();
            } 
        }
        private void dtgDetallesEstado_DoubleClick(object sender, EventArgs e)
        {
            Domicilios BuscarEstado = new Domicilios();
            foreach (int i in dtgEstadosValores.GetSelectedRows())
            {
                DataRow row = dtgEstadosValores.GetDataRow(i);
                txtEstadoId.Text = row[0].ToString();
            }
            DataTable tb = BuscarEstado.Listar_EstadoID(Convert.ToInt32(txtEstadoId.Text));
            if(tb.Rows.Count>0)
            {
                txtEstadoNombre.Text = tb.Rows[0][1].ToString();
                lookEstadoPais.EditValue = null;
            }
        }
        private void dtgDetallesMunicipio_DoubleClick(object sender, EventArgs e)
        {
            foreach (int i in dtgMunicipioValores.GetSelectedRows())
            {
                DataRow row = dtgMunicipioValores.GetDataRow(i);
                txtMunicipioId.Text = row[0].ToString();
                txtMunicipioNombre.Text = row[1].ToString();
            }
        }
        private void dtgDetallesLocalidad_DoubleClick(object sender, EventArgs e)
        {
            foreach (int i in dtgLocalidadValores.GetSelectedRows())
            {
                DataRow row = dtgLocalidadValores.GetDataRow(i);
                txtLocalidadId.Text = row[0].ToString();
                txtLocalidadNombre.Text = row[1].ToString();
                txtLocalidadCP.Text = row[2].ToString();
                txtLocalidadMunicipioId.Text = string.Empty;
                
                Domicilios bMunicipio = new Domicilios();
                DataTable tb = bMunicipio.Listar_LocalidadID(Convert.ToInt32(txtLocalidadId.Text));
                txtLocalidadMunicipioId.Text=tb.Rows[0][3].ToString();
                txtLocalidadMunucipioNombre.Text = bMunicipio.Listar_MunicipioID(Convert.ToInt32(txtLocalidadMunicipioId.Text));
            }
        }

        private void txtLocalidadMunicipioId_KeyDown(object sender, KeyEventArgs e)
        {
            if(txtLocalidadMunicipioId.Text==string.Empty&&e.KeyValue==13)
            {
                FrmBuscarMunicipio buscar = new FrmBuscarMunicipio();
                string[] Valores = new string[2];
                Valores = buscar.Inicia();
                if(Valores[0]!=string.Empty && Valores[1]!=string.Empty)
                {
                    txtLocalidadMunicipioId.Text = Valores[0];
                    txtLocalidadMunucipioNombre.Text = Valores[1];
                }
            }
            else if(txtLocalidadMunicipioId.Text!=string.Empty&&e.KeyValue==13)
            {
                Domicilios bMunicipio=new Domicilios();
                txtLocalidadMunucipioNombre.Text = bMunicipio.Listar_MunicipioID(Convert.ToInt32(txtLocalidadMunicipioId.Text));
            }
        }

        private void txtLocalidadCP_KeyDown(object sender, KeyEventArgs e)
        {
            Validar_Campos valida = new Validar_Campos();
            valida.Solo_Numeros(sender, e, txtLocalidadCP.Text);
        }

        private void txtBuscarPais_KeyDown(object sender, KeyEventArgs e)
        {
            Domicilios pBuscar = new Domicilios();
            if(txtBuscarPais.Text!=string.Empty && e.KeyValue==13)
            {
                dtgDetallesPais.DataSource = pBuscar.Listar_PaisNom(txtBuscarPais.Text);
            }
            else if(txtBuscarPais.Text==string.Empty && e.KeyValue==13)
            {
                dtgDetallesPais.DataSource = pBuscar.Listar_Pais();
            }
        }

        private void txtBuscarEstado_KeyDown(object sender, KeyEventArgs e)
        {
            Domicilios pBuscar = new Domicilios();
            if (txtBuscarEstado.Text != string.Empty && e.KeyValue == 13)
            {
                dtgDetallesEstado.DataSource = pBuscar.Listar_EstadoNom(txtBuscarEstado.Text);
            }
            else if (txtBuscarEstado.Text == string.Empty && e.KeyValue == 13)
            {
                dtgDetallesEstado.DataSource = pBuscar.Listar_Estado();
            }
        }

        private void txtBuscarMunicipio_KeyDown(object sender, KeyEventArgs e)
        {
            Domicilios pBuscar = new Domicilios();
            if (txtBuscarMunicipio.Text != string.Empty && e.KeyValue == 13)
            {
                dtgDetallesMunicipio.DataSource = pBuscar.Listar_MunicipioNom(txtBuscarMunicipio.Text);
            }
            else if (txtBuscarMunicipio.Text == string.Empty && e.KeyValue == 13)
            {
                dtgDetallesMunicipio.DataSource = pBuscar.Listar_Municipio();
            }
        }

        private void txtBuscarLocalidad_KeyDown(object sender, KeyEventArgs e)
        {
            Domicilios pBuscar = new Domicilios();
            if (txtBuscarLocalidad.Text != string.Empty && e.KeyValue == 13)
            {
                dtgDetallesLocalidad.DataSource = pBuscar.Listar_LocalidadNom(txtBuscarLocalidad.Text);
            }
            else if (txtBuscarLocalidad.Text == string.Empty && e.KeyValue == 13)
            {
                dtgDetallesLocalidad.DataSource = pBuscar.Listar_Localidad();
            }
        }
    }
}