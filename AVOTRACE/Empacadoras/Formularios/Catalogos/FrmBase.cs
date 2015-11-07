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
    public partial class FrmBase : DevExpress.XtraEditors.XtraForm
    {
        public FrmBase()
        {
            InitializeComponent();
        }

        private static FrmBase m_FormDefInstance;
        public static FrmBase DefInstance
        {
            get
            {
                if (m_FormDefInstance == null || m_FormDefInstance.IsDisposed)
                    m_FormDefInstance = new FrmBase();
                return m_FormDefInstance;
            }
            set
            {
                m_FormDefInstance = value;
            }
        }
        private void CargarAqua()
        {
            btnNuevo.LargeGlyph = Aqua.Images[0];
            btnGuardar.LargeGlyph = Aqua.Images[1];
            btnEditar.LargeGlyph = Aqua.Images[2];
            btnBuscar.LargeGlyph = Aqua.Images[3];
            btnEliminar.LargeGlyph = Aqua.Images[4];
            btnImprimir.LargeGlyph = Aqua.Images[5];
            btnSalir.LargeGlyph = Aqua.Images[6];
        }
        private void CargarAzulCielo()
        {
            btnNuevo.LargeGlyph = AzulCielo.Images[0];
            btnGuardar.LargeGlyph = AzulCielo.Images[1];
            btnEditar.LargeGlyph = AzulCielo.Images[2];
            btnBuscar.LargeGlyph = AzulCielo.Images[3];
            btnEliminar.LargeGlyph = AzulCielo.Images[4];
            btnImprimir.LargeGlyph = AzulCielo.Images[5];
            btnSalir.LargeGlyph = AzulCielo.Images[6];
        }
        private void CargarAzulRey()
        {
            btnNuevo.LargeGlyph = AzulRey.Images[0];
            btnGuardar.LargeGlyph = AzulRey.Images[1];
            btnEditar.LargeGlyph = AzulRey.Images[2];
            btnBuscar.LargeGlyph = AzulRey.Images[3];
            btnEliminar.LargeGlyph = AzulRey.Images[4];
            btnImprimir.LargeGlyph = AzulRey.Images[5];
            btnSalir.LargeGlyph = AzulRey.Images[6];
        }
        private void CargarDorado()
        {
            btnNuevo.LargeGlyph = Dorado.Images[0];
            btnGuardar.LargeGlyph = Dorado.Images[1];
            btnEditar.LargeGlyph = Dorado.Images[2];
            btnBuscar.LargeGlyph = Dorado.Images[3];
            btnEliminar.LargeGlyph = Dorado.Images[4];
            btnImprimir.LargeGlyph = Dorado.Images[5];
            btnSalir.LargeGlyph = Dorado.Images[6];
        }
        private void CargarGinda()
        {
            btnNuevo.LargeGlyph = Ginda.Images[0];
            btnGuardar.LargeGlyph = Ginda.Images[1];
            btnEditar.LargeGlyph = Ginda.Images[2];
            btnBuscar.LargeGlyph = Ginda.Images[3];
            btnEliminar.LargeGlyph = Ginda.Images[4];
            btnImprimir.LargeGlyph = Ginda.Images[5];
            btnSalir.LargeGlyph = Ginda.Images[6];
        }
        private void CargarGris()
        {
            btnNuevo.LargeGlyph = Gris.Images[0];
            btnGuardar.LargeGlyph = Gris.Images[1];
            btnEditar.LargeGlyph = Gris.Images[2];
            btnBuscar.LargeGlyph = Gris.Images[3];
            btnEliminar.LargeGlyph = Gris.Images[4];
            btnImprimir.LargeGlyph = Gris.Images[5];
            btnSalir.LargeGlyph = Gris.Images[6];
        }
        private void CargarMorado()
        {
            btnNuevo.LargeGlyph = Morado.Images[0];
            btnGuardar.LargeGlyph = Morado.Images[1];
            btnEditar.LargeGlyph = Morado.Images[2];
            btnBuscar.LargeGlyph = Morado.Images[3];
            btnEliminar.LargeGlyph = Morado.Images[4];
            btnImprimir.LargeGlyph = Morado.Images[5];
            btnSalir.LargeGlyph = Morado.Images[6];
        }
        private void CargarRojo()
        {
            btnNuevo.LargeGlyph = Rojo.Images[0];
            btnGuardar.LargeGlyph = Rojo.Images[1];
            btnEditar.LargeGlyph = Rojo.Images[2];
            btnBuscar.LargeGlyph = Rojo.Images[3];
            btnEliminar.LargeGlyph = Rojo.Images[4];
            btnImprimir.LargeGlyph = Rojo.Images[5];
            btnSalir.LargeGlyph = Rojo.Images[6];
        }
        private void CargarRosa()
        {
            btnNuevo.LargeGlyph = Rosa.Images[0];
            btnGuardar.LargeGlyph = Rosa.Images[1];
            btnEditar.LargeGlyph = Rosa.Images[2];
            btnBuscar.LargeGlyph = Rosa.Images[3];
            btnEliminar.LargeGlyph = Rosa.Images[4];
            btnImprimir.LargeGlyph = Rosa.Images[5];
            btnSalir.LargeGlyph = Rosa.Images[6];
        }
        private void CargarVerde()
        {
            btnNuevo.LargeGlyph = Verde.Images[0];
            btnGuardar.LargeGlyph = Verde.Images[1];
            btnEditar.LargeGlyph = Verde.Images[2];
            btnBuscar.LargeGlyph = Verde.Images[3];
            btnEliminar.LargeGlyph = Verde.Images[4];
            btnImprimir.LargeGlyph = Verde.Images[5];
            btnSalir.LargeGlyph = Verde.Images[6];
        }
        private void CargarVioleta()
        {
            btnNuevo.LargeGlyph = Violeta.Images[0];
            btnGuardar.LargeGlyph = Violeta.Images[1];
            btnEditar.LargeGlyph = Violeta.Images[2];
            btnBuscar.LargeGlyph = Violeta.Images[3];
            btnEliminar.LargeGlyph = Violeta.Images[4];
            btnImprimir.LargeGlyph = Violeta.Images[5];
            btnSalir.LargeGlyph = Violeta.Images[6];
        }
        private void CargarCombinado()
        {
            btnNuevo.LargeGlyph = Combinado.Images[0];
            btnGuardar.LargeGlyph = Combinado.Images[1];
            btnEditar.LargeGlyph = Combinado.Images[2];
            btnBuscar.LargeGlyph = Combinado.Images[3];
            btnEliminar.LargeGlyph = Combinado.Images[4];
            btnImprimir.LargeGlyph = Combinado.Images[5];
            btnSalir.LargeGlyph = Combinado.Images[6];
        }
        private void FrmBase_Load(object sender, EventArgs e)
        {
            cmbBotones.SelectedIndex = 0;
            CargarAqua();
        }

        private void cmbBotones_SelectionChangeCommitted(object sender, EventArgs e)
        {
            switch (cmbBotones.SelectedIndex)
            {
                case 0:
                    CargarAqua();
                    break;
                case 1:
                    CargarAzulCielo();
                    break;
                case 2:
                    CargarAzulRey();
                    break;
                case 3:
                    CargarDorado();
                    break;
                case 4:
                    CargarGinda();
                    break;
                case 5:
                    CargarGris();
                    break;
                case 6:
                    CargarMorado();
                    break;
                case 7:
                    CargarRojo();
                    break;
                case 8:
                    CargarRosa();
                    break;
                case 9:
                    CargarVerde();
                    break;
                case 10:
                    CargarVioleta();
                    break;
                case 11:
                    CargarCombinado();
                    break;
            }

        }

    }
}