<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmEjecucionCreacionScript
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.FolderBrowserDialog1 = New System.Windows.Forms.FolderBrowserDialog()
        Me.btnSeleccionarTXT = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtDirectorioSeleccionado = New System.Windows.Forms.TextBox()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.txtVentanaSalida = New System.Windows.Forms.TextBox()
        Me.btnProcesarDirectorio = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.TxtSeparador = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'btnSeleccionarTXT
        '
        Me.btnSeleccionarTXT.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSeleccionarTXT.Location = New System.Drawing.Point(779, 8)
        Me.btnSeleccionarTXT.Name = "btnSeleccionarTXT"
        Me.btnSeleccionarTXT.Size = New System.Drawing.Size(260, 42)
        Me.btnSeleccionarTXT.TabIndex = 0
        Me.btnSeleccionarTXT.Text = "Examinar"
        Me.btnSeleccionarTXT.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(32, 30)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(159, 18)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Directorio Secuencia:"
        '
        'txtDirectorioSeleccionado
        '
        Me.txtDirectorioSeleccionado.Enabled = False
        Me.txtDirectorioSeleccionado.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtDirectorioSeleccionado.Location = New System.Drawing.Point(207, 31)
        Me.txtDirectorioSeleccionado.Name = "txtDirectorioSeleccionado"
        Me.txtDirectorioSeleccionado.Size = New System.Drawing.Size(578, 26)
        Me.txtDirectorioSeleccionado.TabIndex = 2
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.btnSeleccionarTXT)
        Me.Panel1.Location = New System.Drawing.Point(12, 12)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(1049, 63)
        Me.Panel1.TabIndex = 3
        '
        'txtVentanaSalida
        '
        Me.txtVentanaSalida.Location = New System.Drawing.Point(22, 129)
        Me.txtVentanaSalida.Multiline = True
        Me.txtVentanaSalida.Name = "txtVentanaSalida"
        Me.txtVentanaSalida.ScrollBars = System.Windows.Forms.ScrollBars.Both
        Me.txtVentanaSalida.Size = New System.Drawing.Size(1039, 258)
        Me.txtVentanaSalida.TabIndex = 4
        '
        'btnProcesarDirectorio
        '
        Me.btnProcesarDirectorio.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnProcesarDirectorio.Location = New System.Drawing.Point(791, 81)
        Me.btnProcesarDirectorio.Name = "btnProcesarDirectorio"
        Me.btnProcesarDirectorio.Size = New System.Drawing.Size(270, 42)
        Me.btnProcesarDirectorio.TabIndex = 5
        Me.btnProcesarDirectorio.Text = "Visualizar"
        Me.btnProcesarDirectorio.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.Location = New System.Drawing.Point(22, 393)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(1039, 42)
        Me.Button1.TabIndex = 6
        Me.Button1.Text = "Limpiar"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'TxtSeparador
        '
        Me.TxtSeparador.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TxtSeparador.Location = New System.Drawing.Point(207, 84)
        Me.TxtSeparador.Name = "TxtSeparador"
        Me.TxtSeparador.Size = New System.Drawing.Size(578, 26)
        Me.TxtSeparador.TabIndex = 7
        Me.TxtSeparador.Text = "GO"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Arial", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(32, 87)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(102, 18)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "Separar Con:"
        '
        'FrmEjecucionCreacionScript
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1073, 440)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.TxtSeparador)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.btnProcesarDirectorio)
        Me.Controls.Add(Me.txtVentanaSalida)
        Me.Controls.Add(Me.txtDirectorioSeleccionado)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Panel1)
        Me.MaximumSize = New System.Drawing.Size(1089, 478)
        Me.MinimumSize = New System.Drawing.Size(1089, 478)
        Me.Name = "FrmEjecucionCreacionScript"
        Me.Text = "Creacion Script de Liberacion"
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents FolderBrowserDialog1 As System.Windows.Forms.FolderBrowserDialog
    Friend WithEvents btnSeleccionarTXT As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtDirectorioSeleccionado As System.Windows.Forms.TextBox
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents txtVentanaSalida As System.Windows.Forms.TextBox
    Friend WithEvents btnProcesarDirectorio As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents TxtSeparador As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label

End Class
