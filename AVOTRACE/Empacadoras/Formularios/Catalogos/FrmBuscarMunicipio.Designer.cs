namespace Empacadoras
{
    partial class FrmBuscarMunicipio
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmBuscarMunicipio));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar2 = new DevExpress.XtraBars.Bar();
            this.btnSalir = new DevExpress.XtraBars.BarLargeButtonItem();
            this.bar3 = new DevExpress.XtraBars.Bar();
            this.barDockControl1 = new DevExpress.XtraBars.BarDockControl();
            this.barDockControl2 = new DevExpress.XtraBars.BarDockControl();
            this.barDockControl3 = new DevExpress.XtraBars.BarDockControl();
            this.barDockControl4 = new DevExpress.XtraBars.BarDockControl();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem5 = new DevExpress.XtraBars.BarButtonItem();
            this.btnGuardar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnNuevo = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnEliminar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.imageCollection1 = new DevExpress.Utils.ImageCollection(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dtgDetallesMunicipio = new DevExpress.XtraGrid.GridControl();
            this.dtgMunicipioValores = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCollection1)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgDetallesMunicipio)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtgMunicipioValores)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar2,
            this.bar3});
            this.barManager1.DockControls.Add(this.barDockControl1);
            this.barManager1.DockControls.Add(this.barDockControl2);
            this.barManager1.DockControls.Add(this.barDockControl3);
            this.barManager1.DockControls.Add(this.barDockControl4);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem4,
            this.barButtonItem5,
            this.btnGuardar,
            this.btnSalir,
            this.btnNuevo,
            this.btnEliminar});
            this.barManager1.MainMenu = this.bar2;
            this.barManager1.MaxItemId = 7;
            this.barManager1.StatusBar = this.bar3;
            // 
            // bar2
            // 
            this.bar2.BarName = "Menú principal";
            this.bar2.DockCol = 0;
            this.bar2.DockRow = 0;
            this.bar2.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSalir)});
            this.bar2.OptionsBar.MultiLine = true;
            this.bar2.OptionsBar.UseWholeRow = true;
            this.bar2.Text = "Menú principal";
            // 
            // btnSalir
            // 
            this.btnSalir.Caption = "Salir";
            this.btnSalir.Id = 3;
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSalir_ItemClick);
            // 
            // bar3
            // 
            this.bar3.BarName = "Barra de estado";
            this.bar3.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar3.DockCol = 0;
            this.bar3.DockRow = 0;
            this.bar3.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar3.OptionsBar.AllowQuickCustomization = false;
            this.bar3.OptionsBar.DrawDragBorder = false;
            this.bar3.OptionsBar.UseWholeRow = true;
            this.bar3.Text = "Barra de estado";
            // 
            // barDockControl1
            // 
            this.barDockControl1.CausesValidation = false;
            this.barDockControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControl1.Location = new System.Drawing.Point(0, 0);
            this.barDockControl1.Size = new System.Drawing.Size(424, 24);
            // 
            // barDockControl2
            // 
            this.barDockControl2.CausesValidation = false;
            this.barDockControl2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControl2.Location = new System.Drawing.Point(0, 348);
            this.barDockControl2.Size = new System.Drawing.Size(424, 22);
            // 
            // barDockControl3
            // 
            this.barDockControl3.CausesValidation = false;
            this.barDockControl3.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControl3.Location = new System.Drawing.Point(0, 24);
            this.barDockControl3.Size = new System.Drawing.Size(0, 324);
            // 
            // barDockControl4
            // 
            this.barDockControl4.CausesValidation = false;
            this.barDockControl4.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControl4.Location = new System.Drawing.Point(424, 24);
            this.barDockControl4.Size = new System.Drawing.Size(0, 324);
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Id = 4;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // barButtonItem5
            // 
            this.barButtonItem5.ActAsDropDown = true;
            this.barButtonItem5.ButtonStyle = DevExpress.XtraBars.BarButtonStyle.DropDown;
            this.barButtonItem5.Caption = "barButtonItem5";
            this.barButtonItem5.Id = 1;
            this.barButtonItem5.Name = "barButtonItem5";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Caption = "&Guardar";
            this.btnGuardar.Id = 2;
            this.btnGuardar.Name = "btnGuardar";
            // 
            // btnNuevo
            // 
            this.btnNuevo.Caption = "Nuevo";
            this.btnNuevo.Id = 5;
            this.btnNuevo.Name = "btnNuevo";
            // 
            // btnEliminar
            // 
            this.btnEliminar.Caption = "Eliminar";
            this.btnEliminar.Id = 6;
            this.btnEliminar.Name = "btnEliminar";
            // 
            // imageCollection1
            // 
            this.imageCollection1.ImageSize = new System.Drawing.Size(40, 40);
            this.imageCollection1.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("imageCollection1.ImageStream")));
            this.imageCollection1.Images.SetKeyName(0, "Nuevo.png");
            this.imageCollection1.Images.SetKeyName(1, "Guardar.png");
            this.imageCollection1.Images.SetKeyName(2, "Editar2.png");
            this.imageCollection1.Images.SetKeyName(3, "Eliminar.png");
            this.imageCollection1.Images.SetKeyName(4, "Editar.png");
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.textEdit1);
            this.panel1.Controls.Add(this.labelControl1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 24);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(424, 53);
            this.panel1.TabIndex = 5;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(120, 18);
            this.textEdit1.MenuManager = this.barManager1;
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(209, 20);
            this.textEdit1.TabIndex = 1;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(26, 18);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(87, 13);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Nombre Municipio:";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.dtgDetallesMunicipio);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 77);
            this.panel2.Name = "panel2";
            this.panel2.Padding = new System.Windows.Forms.Padding(10);
            this.panel2.Size = new System.Drawing.Size(424, 271);
            this.panel2.TabIndex = 6;
            // 
            // dtgDetallesMunicipio
            // 
            this.dtgDetallesMunicipio.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgDetallesMunicipio.Location = new System.Drawing.Point(10, 10);
            this.dtgDetallesMunicipio.MainView = this.dtgMunicipioValores;
            this.dtgDetallesMunicipio.MenuManager = this.barManager1;
            this.dtgDetallesMunicipio.Name = "dtgDetallesMunicipio";
            this.dtgDetallesMunicipio.Size = new System.Drawing.Size(404, 251);
            this.dtgDetallesMunicipio.TabIndex = 2;
            this.dtgDetallesMunicipio.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.dtgMunicipioValores});
            this.dtgDetallesMunicipio.DoubleClick += new System.EventHandler(this.dtgDetallesMunicipio_DoubleClick);
            // 
            // dtgMunicipioValores
            // 
            this.dtgMunicipioValores.GridControl = this.dtgDetallesMunicipio;
            this.dtgMunicipioValores.Name = "dtgMunicipioValores";
            this.dtgMunicipioValores.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.False;
            this.dtgMunicipioValores.OptionsBehavior.AllowDeleteRows = DevExpress.Utils.DefaultBoolean.False;
            this.dtgMunicipioValores.OptionsBehavior.AllowFixedGroups = DevExpress.Utils.DefaultBoolean.False;
            this.dtgMunicipioValores.OptionsBehavior.Editable = false;
            this.dtgMunicipioValores.OptionsBehavior.ReadOnly = true;
            this.dtgMunicipioValores.OptionsCustomization.AllowColumnMoving = false;
            this.dtgMunicipioValores.OptionsSelection.MultiSelect = true;
            this.dtgMunicipioValores.OptionsView.ColumnHeaderAutoHeight = DevExpress.Utils.DefaultBoolean.True;
            this.dtgMunicipioValores.OptionsView.ShowGroupPanel = false;
            // 
            // FrmBuscarMunicipio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(424, 370);
            this.ControlBox = false;
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.barDockControl3);
            this.Controls.Add(this.barDockControl4);
            this.Controls.Add(this.barDockControl2);
            this.Controls.Add(this.barDockControl1);
            this.FormBorderEffect = DevExpress.XtraEditors.FormBorderEffect.None;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmBuscarMunicipio";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Buscar Municipio";
            this.Load += new System.EventHandler(this.FrmBuscarMunicipio_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCollection1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgDetallesMunicipio)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtgMunicipioValores)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar2;
        private DevExpress.XtraBars.BarLargeButtonItem btnSalir;
        private DevExpress.XtraBars.Bar bar3;
        private DevExpress.XtraBars.BarDockControl barDockControl1;
        private DevExpress.XtraBars.BarDockControl barDockControl2;
        private DevExpress.XtraBars.BarDockControl barDockControl3;
        private DevExpress.XtraBars.BarDockControl barDockControl4;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraBars.BarButtonItem barButtonItem5;
        private DevExpress.XtraBars.BarLargeButtonItem btnGuardar;
        private DevExpress.XtraBars.BarLargeButtonItem btnNuevo;
        private DevExpress.XtraBars.BarLargeButtonItem btnEliminar;
        private DevExpress.Utils.ImageCollection imageCollection1;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.Panel panel2;
        private DevExpress.XtraGrid.GridControl dtgDetallesMunicipio;
        private DevExpress.XtraGrid.Views.Grid.GridView dtgMunicipioValores;
    }
}