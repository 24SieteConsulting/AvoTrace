namespace Empacadoras
{
    partial class FrmBase
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmBase));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bIconos = new DevExpress.XtraBars.Bar();
            this.btnNuevo = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnGuardar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnEditar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnBuscar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnEliminar = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnImprimir = new DevExpress.XtraBars.BarLargeButtonItem();
            this.btnSalir = new DevExpress.XtraBars.BarLargeButtonItem();
            this.bEstado = new DevExpress.XtraBars.Bar();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.pnlDatos = new DevExpress.XtraEditors.PanelControl();
            this.cmbBotones = new System.Windows.Forms.ComboBox();
            this.pnlGrid = new DevExpress.XtraEditors.PanelControl();
            this.dtgDetallesPais = new DevExpress.XtraGrid.GridControl();
            this.dtgPaisValores = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.Aqua = new DevExpress.Utils.ImageCollection(this.components);
            this.AzulCielo = new DevExpress.Utils.ImageCollection(this.components);
            this.AzulRey = new DevExpress.Utils.ImageCollection(this.components);
            this.Dorado = new DevExpress.Utils.ImageCollection(this.components);
            this.Ginda = new DevExpress.Utils.ImageCollection(this.components);
            this.Gris = new DevExpress.Utils.ImageCollection(this.components);
            this.Morado = new DevExpress.Utils.ImageCollection(this.components);
            this.Rojo = new DevExpress.Utils.ImageCollection(this.components);
            this.Rosa = new DevExpress.Utils.ImageCollection(this.components);
            this.Verde = new DevExpress.Utils.ImageCollection(this.components);
            this.Violeta = new DevExpress.Utils.ImageCollection(this.components);
            this.Combinado = new DevExpress.Utils.ImageCollection(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlDatos)).BeginInit();
            this.pnlDatos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlGrid)).BeginInit();
            this.pnlGrid.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgDetallesPais)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtgPaisValores)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Aqua)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AzulCielo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AzulRey)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dorado)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Ginda)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Gris)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Morado)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Rojo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Rosa)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Verde)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Violeta)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Combinado)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bIconos,
            this.bEstado});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnNuevo,
            this.btnGuardar,
            this.btnEditar,
            this.btnBuscar,
            this.btnEliminar,
            this.btnSalir,
            this.btnImprimir});
            this.barManager1.MainMenu = this.bIconos;
            this.barManager1.MaxItemId = 7;
            this.barManager1.StatusBar = this.bEstado;
            // 
            // bIconos
            // 
            this.bIconos.BarName = "Menú principal";
            this.bIconos.DockCol = 0;
            this.bIconos.DockRow = 0;
            this.bIconos.DockStyle = DevExpress.XtraBars.BarDockStyle.Left;
            this.bIconos.FloatLocation = new System.Drawing.Point(42, 184);
            this.bIconos.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnNuevo),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnGuardar),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnEditar),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnBuscar),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnEliminar),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnImprimir),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSalir)});
            this.bIconos.OptionsBar.AllowCollapse = true;
            this.bIconos.OptionsBar.AllowQuickCustomization = false;
            this.bIconos.OptionsBar.AutoPopupMode = DevExpress.XtraBars.BarAutoPopupMode.None;
            this.bIconos.OptionsBar.DisableClose = true;
            this.bIconos.OptionsBar.DisableCustomization = true;
            this.bIconos.OptionsBar.DrawBorder = false;
            this.bIconos.OptionsBar.DrawDragBorder = false;
            this.bIconos.OptionsBar.RotateWhenVertical = false;
            this.bIconos.OptionsBar.UseWholeRow = true;
            this.bIconos.Text = "Menú principal";
            // 
            // btnNuevo
            // 
            this.btnNuevo.Caption = "Nuevo";
            this.btnNuevo.Glyph = ((System.Drawing.Image)(resources.GetObject("btnNuevo.Glyph")));
            this.btnNuevo.Id = 0;
            this.btnNuevo.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnNuevo.LargeGlyph")));
            this.btnNuevo.Name = "btnNuevo";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Caption = "Guardar";
            this.btnGuardar.Glyph = ((System.Drawing.Image)(resources.GetObject("btnGuardar.Glyph")));
            this.btnGuardar.Id = 1;
            this.btnGuardar.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnGuardar.LargeGlyph")));
            this.btnGuardar.Name = "btnGuardar";
            // 
            // btnEditar
            // 
            this.btnEditar.Caption = "Editar";
            this.btnEditar.Glyph = ((System.Drawing.Image)(resources.GetObject("btnEditar.Glyph")));
            this.btnEditar.Id = 2;
            this.btnEditar.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnEditar.LargeGlyph")));
            this.btnEditar.Name = "btnEditar";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Caption = "Buscar";
            this.btnBuscar.Glyph = ((System.Drawing.Image)(resources.GetObject("btnBuscar.Glyph")));
            this.btnBuscar.Id = 3;
            this.btnBuscar.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnBuscar.LargeGlyph")));
            this.btnBuscar.Name = "btnBuscar";
            // 
            // btnEliminar
            // 
            this.btnEliminar.Caption = "Eliminar";
            this.btnEliminar.Glyph = ((System.Drawing.Image)(resources.GetObject("btnEliminar.Glyph")));
            this.btnEliminar.Id = 4;
            this.btnEliminar.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnEliminar.LargeGlyph")));
            this.btnEliminar.Name = "btnEliminar";
            // 
            // btnImprimir
            // 
            this.btnImprimir.Caption = "Imprimir";
            this.btnImprimir.Glyph = ((System.Drawing.Image)(resources.GetObject("btnImprimir.Glyph")));
            this.btnImprimir.Id = 6;
            this.btnImprimir.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnImprimir.LargeGlyph")));
            this.btnImprimir.Name = "btnImprimir";
            // 
            // btnSalir
            // 
            this.btnSalir.Caption = "Salir";
            this.btnSalir.Glyph = ((System.Drawing.Image)(resources.GetObject("btnSalir.Glyph")));
            this.btnSalir.Id = 5;
            this.btnSalir.LargeGlyph = ((System.Drawing.Image)(resources.GetObject("btnSalir.LargeGlyph")));
            this.btnSalir.Name = "btnSalir";
            // 
            // bEstado
            // 
            this.bEstado.BarName = "Barra de estado";
            this.bEstado.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bEstado.DockCol = 0;
            this.bEstado.DockRow = 0;
            this.bEstado.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bEstado.OptionsBar.AllowQuickCustomization = false;
            this.bEstado.OptionsBar.DrawDragBorder = false;
            this.bEstado.OptionsBar.UseWholeRow = true;
            this.bEstado.Text = "Barra de estado";
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Size = new System.Drawing.Size(470, 0);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 456);
            this.barDockControlBottom.Size = new System.Drawing.Size(470, 22);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 0);
            this.barDockControlLeft.Size = new System.Drawing.Size(54, 456);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(470, 0);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 456);
            // 
            // pnlDatos
            // 
            this.pnlDatos.Controls.Add(this.cmbBotones);
            this.pnlDatos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlDatos.Location = new System.Drawing.Point(54, 0);
            this.pnlDatos.Name = "pnlDatos";
            this.pnlDatos.Size = new System.Drawing.Size(416, 220);
            this.pnlDatos.TabIndex = 4;
            // 
            // cmbBotones
            // 
            this.cmbBotones.FormattingEnabled = true;
            this.cmbBotones.Items.AddRange(new object[] {
            "Aqua",
            "Azul Cielo",
            "Azul Rey",
            "Dorado",
            "Ginda",
            "Gris",
            "Morado",
            "Rojo",
            "Rosa",
            "Verde",
            "Violeta",
            "Combinado"});
            this.cmbBotones.Location = new System.Drawing.Point(12, 12);
            this.cmbBotones.Name = "cmbBotones";
            this.cmbBotones.Size = new System.Drawing.Size(166, 21);
            this.cmbBotones.TabIndex = 0;
            this.cmbBotones.SelectionChangeCommitted += new System.EventHandler(this.cmbBotones_SelectionChangeCommitted);
            // 
            // pnlGrid
            // 
            this.pnlGrid.Controls.Add(this.dtgDetallesPais);
            this.pnlGrid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlGrid.Location = new System.Drawing.Point(54, 220);
            this.pnlGrid.Name = "pnlGrid";
            this.pnlGrid.Padding = new System.Windows.Forms.Padding(10);
            this.pnlGrid.Size = new System.Drawing.Size(416, 236);
            this.pnlGrid.TabIndex = 5;
            // 
            // dtgDetallesPais
            // 
            this.dtgDetallesPais.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgDetallesPais.Location = new System.Drawing.Point(12, 12);
            this.dtgDetallesPais.MainView = this.dtgPaisValores;
            this.dtgDetallesPais.MenuManager = this.barManager1;
            this.dtgDetallesPais.Name = "dtgDetallesPais";
            this.dtgDetallesPais.Size = new System.Drawing.Size(392, 212);
            this.dtgDetallesPais.TabIndex = 1;
            this.dtgDetallesPais.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.dtgPaisValores});
            // 
            // dtgPaisValores
            // 
            this.dtgPaisValores.GridControl = this.dtgDetallesPais;
            this.dtgPaisValores.Name = "dtgPaisValores";
            this.dtgPaisValores.OptionsBehavior.AllowAddRows = DevExpress.Utils.DefaultBoolean.False;
            this.dtgPaisValores.OptionsBehavior.AllowDeleteRows = DevExpress.Utils.DefaultBoolean.False;
            this.dtgPaisValores.OptionsBehavior.AllowFixedGroups = DevExpress.Utils.DefaultBoolean.False;
            this.dtgPaisValores.OptionsBehavior.Editable = false;
            this.dtgPaisValores.OptionsBehavior.ReadOnly = true;
            this.dtgPaisValores.OptionsCustomization.AllowColumnMoving = false;
            this.dtgPaisValores.OptionsSelection.MultiSelect = true;
            this.dtgPaisValores.OptionsView.ColumnHeaderAutoHeight = DevExpress.Utils.DefaultBoolean.True;
            this.dtgPaisValores.OptionsView.ShowGroupPanel = false;
            // 
            // Aqua
            // 
            this.Aqua.ImageSize = new System.Drawing.Size(60, 60);
            this.Aqua.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Aqua.ImageStream")));
            this.Aqua.Images.SetKeyName(0, "Nuevo_Aqua.png");
            this.Aqua.Images.SetKeyName(1, "Guardar_Aqua.png");
            this.Aqua.Images.SetKeyName(2, "Editar_Aqua.png");
            this.Aqua.Images.SetKeyName(3, "Buscar_Aqua.png");
            this.Aqua.Images.SetKeyName(4, "Eliminar_Aqua.png");
            this.Aqua.Images.SetKeyName(5, "Imprimir_Aqua.png");
            this.Aqua.Images.SetKeyName(6, "Salir_Aqua.png");
            // 
            // AzulCielo
            // 
            this.AzulCielo.ImageSize = new System.Drawing.Size(60, 60);
            this.AzulCielo.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("AzulCielo.ImageStream")));
            this.AzulCielo.Images.SetKeyName(0, "Nuevo_AzulCielo.png");
            this.AzulCielo.Images.SetKeyName(1, "Guardar_AzulCielo.png");
            this.AzulCielo.Images.SetKeyName(2, "Editar_AzulCielo.png");
            this.AzulCielo.Images.SetKeyName(3, "Buscar_AzulCielo.png");
            this.AzulCielo.Images.SetKeyName(4, "Eliminar_AzulCielo.png");
            this.AzulCielo.Images.SetKeyName(5, "Imprimir_AzulCielo.png");
            this.AzulCielo.Images.SetKeyName(6, "Salir_AzulCielo.png");
            // 
            // AzulRey
            // 
            this.AzulRey.ImageSize = new System.Drawing.Size(60, 60);
            this.AzulRey.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("AzulRey.ImageStream")));
            this.AzulRey.Images.SetKeyName(0, "Nuevo_AZulRey.png");
            this.AzulRey.Images.SetKeyName(1, "Guardar_AzulRey.png");
            this.AzulRey.Images.SetKeyName(2, "Editar_AzulRey.png");
            this.AzulRey.Images.SetKeyName(3, "Buscar_AzulRey.png");
            this.AzulRey.Images.SetKeyName(4, "Eliminar_AzulRey.png");
            this.AzulRey.Images.SetKeyName(5, "Imprimir_AzulRey.png");
            this.AzulRey.Images.SetKeyName(6, "Salir_AzulRey.png");
            // 
            // Dorado
            // 
            this.Dorado.ImageSize = new System.Drawing.Size(60, 60);
            this.Dorado.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Dorado.ImageStream")));
            this.Dorado.Images.SetKeyName(0, "Nuevo_Dorado.png");
            this.Dorado.Images.SetKeyName(1, "Guardar_Dorado.png");
            this.Dorado.Images.SetKeyName(2, "Editar_Dorado.png");
            this.Dorado.Images.SetKeyName(3, "Buscar_Dorado.png");
            this.Dorado.Images.SetKeyName(4, "Eliminar_Dorado.png");
            this.Dorado.Images.SetKeyName(5, "Imprimir_Dorado.png");
            this.Dorado.Images.SetKeyName(6, "Salir_Dorado.png");
            // 
            // Ginda
            // 
            this.Ginda.ImageSize = new System.Drawing.Size(60, 60);
            this.Ginda.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Ginda.ImageStream")));
            this.Ginda.Images.SetKeyName(0, "Nuevo_Ginda.png");
            this.Ginda.Images.SetKeyName(1, "Guardar_Ginda.png");
            this.Ginda.Images.SetKeyName(2, "Editar_Ginda.png");
            this.Ginda.Images.SetKeyName(3, "Buscar_Ginda.png");
            this.Ginda.Images.SetKeyName(4, "Eliminar_Ginda.png");
            this.Ginda.Images.SetKeyName(5, "Imprimir_Ginda.png");
            this.Ginda.Images.SetKeyName(6, "Salir_Ginda.png");
            // 
            // Gris
            // 
            this.Gris.ImageSize = new System.Drawing.Size(60, 60);
            this.Gris.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Gris.ImageStream")));
            this.Gris.Images.SetKeyName(0, "Nuevo_Gris.png");
            this.Gris.Images.SetKeyName(1, "Guardar_Gris.png");
            this.Gris.Images.SetKeyName(2, "Editar_Gris.png");
            this.Gris.Images.SetKeyName(3, "Buscar_Gris.png");
            this.Gris.Images.SetKeyName(4, "Eliminar_Gris.png");
            this.Gris.Images.SetKeyName(5, "Imprimir_Gris.png");
            this.Gris.Images.SetKeyName(6, "Salir_Gris.png");
            // 
            // Morado
            // 
            this.Morado.ImageSize = new System.Drawing.Size(60, 60);
            this.Morado.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Morado.ImageStream")));
            this.Morado.Images.SetKeyName(0, "Nuevo_Morado.png");
            this.Morado.Images.SetKeyName(1, "Guardar_Morado.png");
            this.Morado.Images.SetKeyName(2, "Editar_Morado.png");
            this.Morado.Images.SetKeyName(3, "Buscar_Morado.png");
            this.Morado.Images.SetKeyName(4, "Eliminar_Morado.png");
            this.Morado.Images.SetKeyName(5, "Imprimir_Morado.png");
            this.Morado.Images.SetKeyName(6, "Salir_Morado.png");
            // 
            // Rojo
            // 
            this.Rojo.ImageSize = new System.Drawing.Size(60, 60);
            this.Rojo.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Rojo.ImageStream")));
            this.Rojo.Images.SetKeyName(0, "Nuevo_Rojo.png");
            this.Rojo.Images.SetKeyName(1, "Guardar_Rojo.png");
            this.Rojo.Images.SetKeyName(2, "Editar_Rojos.png");
            this.Rojo.Images.SetKeyName(3, "Buscar_Rojo.png");
            this.Rojo.Images.SetKeyName(4, "Eliminar_Rojo.png");
            this.Rojo.Images.SetKeyName(5, "Imprimir_Rojo.png");
            this.Rojo.Images.SetKeyName(6, "Salir_Rojo.png");
            // 
            // Rosa
            // 
            this.Rosa.ImageSize = new System.Drawing.Size(60, 60);
            this.Rosa.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Rosa.ImageStream")));
            this.Rosa.Images.SetKeyName(0, "Nuevo_Rosa.png");
            this.Rosa.Images.SetKeyName(1, "Guardar_Rosa.png");
            this.Rosa.Images.SetKeyName(2, "Editar_Rosa.png");
            this.Rosa.Images.SetKeyName(3, "Buscar_Rosa.png");
            this.Rosa.Images.SetKeyName(4, "Eliminar_Rosa.png");
            this.Rosa.Images.SetKeyName(5, "Imprimir_Rosa.png");
            this.Rosa.Images.SetKeyName(6, "Salir_Rosa.png");
            // 
            // Verde
            // 
            this.Verde.ImageSize = new System.Drawing.Size(60, 60);
            this.Verde.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Verde.ImageStream")));
            this.Verde.Images.SetKeyName(0, "Nuevo_Verde.png");
            this.Verde.Images.SetKeyName(1, "Guardar_Verde.png");
            this.Verde.Images.SetKeyName(2, "Editar_Verde.png");
            this.Verde.Images.SetKeyName(3, "Buscar_Verde.png");
            this.Verde.Images.SetKeyName(4, "Eliminar_Verde.png");
            this.Verde.Images.SetKeyName(5, "Imprimir_Verde.png");
            this.Verde.Images.SetKeyName(6, "Salir_Verde.png");
            // 
            // Violeta
            // 
            this.Violeta.ImageSize = new System.Drawing.Size(60, 60);
            this.Violeta.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Violeta.ImageStream")));
            this.Violeta.Images.SetKeyName(0, "Nuevo_Violeta.png");
            this.Violeta.Images.SetKeyName(1, "Guardar_Violeta.png");
            this.Violeta.Images.SetKeyName(2, "Editar_Violeta.png");
            this.Violeta.Images.SetKeyName(3, "Buscar_Violeta.png");
            this.Violeta.Images.SetKeyName(4, "Eliminar_Violeta.png");
            this.Violeta.Images.SetKeyName(5, "Imprimir_Violeta.png");
            this.Violeta.Images.SetKeyName(6, "Salir_Violeta.png");
            // 
            // Combinado
            // 
            this.Combinado.ImageSize = new System.Drawing.Size(60, 60);
            this.Combinado.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("Combinado.ImageStream")));
            this.Combinado.Images.SetKeyName(0, "Nuevo_Aqua.png");
            this.Combinado.Images.SetKeyName(1, "Guardar_Verde.png");
            this.Combinado.Images.SetKeyName(2, "Editar_AzulRey.png");
            this.Combinado.Images.SetKeyName(3, "Buscar_Morado.png");
            this.Combinado.Images.SetKeyName(4, "Eliminar_Ginda.png");
            this.Combinado.Images.SetKeyName(5, "Imprimir_Gris.png");
            this.Combinado.Images.SetKeyName(6, "Salir_AzulCielo.png");
            // 
            // FrmBase
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(470, 478);
            this.Controls.Add(this.pnlGrid);
            this.Controls.Add(this.pnlDatos);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "FrmBase";
            this.Text = "FrmBase";
            this.Load += new System.EventHandler(this.FrmBase_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlDatos)).EndInit();
            this.pnlDatos.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pnlGrid)).EndInit();
            this.pnlGrid.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgDetallesPais)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtgPaisValores)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Aqua)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AzulCielo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AzulRey)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dorado)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Ginda)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Gris)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Morado)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Rojo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Rosa)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Verde)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Violeta)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Combinado)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bIconos;
        private DevExpress.XtraBars.BarLargeButtonItem btnNuevo;
        private DevExpress.XtraBars.Bar bEstado;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarLargeButtonItem btnGuardar;
        private DevExpress.XtraBars.BarLargeButtonItem btnEditar;
        private DevExpress.XtraBars.BarLargeButtonItem btnBuscar;
        private DevExpress.XtraBars.BarLargeButtonItem btnEliminar;
        private DevExpress.XtraBars.BarLargeButtonItem btnSalir;
        private DevExpress.XtraEditors.PanelControl pnlGrid;
        private DevExpress.XtraEditors.PanelControl pnlDatos;
        private DevExpress.XtraGrid.GridControl dtgDetallesPais;
        private DevExpress.XtraGrid.Views.Grid.GridView dtgPaisValores;
        private DevExpress.Utils.ImageCollection Aqua;
        private DevExpress.XtraBars.BarLargeButtonItem btnImprimir;
        private System.Windows.Forms.ComboBox cmbBotones;
        private DevExpress.Utils.ImageCollection AzulCielo;
        private DevExpress.Utils.ImageCollection AzulRey;
        private DevExpress.Utils.ImageCollection Dorado;
        private DevExpress.Utils.ImageCollection Ginda;
        private DevExpress.Utils.ImageCollection Gris;
        private DevExpress.Utils.ImageCollection Morado;
        private DevExpress.Utils.ImageCollection Rojo;
        private DevExpress.Utils.ImageCollection Rosa;
        private DevExpress.Utils.ImageCollection Verde;
        private DevExpress.Utils.ImageCollection Violeta;
        private DevExpress.Utils.ImageCollection Combinado;
    }
}