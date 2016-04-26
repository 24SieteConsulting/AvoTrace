Imports System.Text
Imports System.IO
Imports System.String
Imports Microsoft.VisualBasic
Public Class FrmEjecucionCreacionScript

    Private Sub btnSeleccionarTXT_Click(sender As System.Object, e As System.EventArgs) Handles btnSeleccionarTXT.Click
        Try
            ' Configuración del FolderBrowserDialog  
            With FolderBrowserDialog1

                .Reset() ' resetea  

                ' leyenda  
                .Description = " Seleccionar una carpeta "
                ' Path " Mis documentos "  
                '.SelectedPath = Environment.GetFolderPath(Environment.SpecialFolder.CommonDocuments)
                '.SelectedPath = Environment.GetFolderPath("C:\GitHub\Aplicacion\Scripts\Liberaciones\ScriptGeneralDesarrollo")

                ' deshabilita el botón " crear nueva carpeta "  
                .ShowNewFolderButton = False
                '.RootFolder = Environment.SpecialFolder.Desktop  
                '.RootFolder = Environment.SpecialFolder.StartMenu  

                Dim ret As DialogResult = .ShowDialog ' abre el diálogo  

                ' si se presionó el botón aceptar ...  
                If ret = Windows.Forms.DialogResult.OK Then
                    txtDirectorioSeleccionado.Text = .SelectedPath
                Else

                    txtDirectorioSeleccionado.Text = ""
                End If

                .Dispose()

            End With
        Catch oe As Exception
            MsgBox(oe.Message, MsgBoxStyle.Critical)
        End Try
    End Sub
    Private Function Fn_NombreConFecha() As String
        Dim localDate As Date = DateTime.Now
        Dim nombre As String
        Dim mes As String
        mes = "00" & Convert.ToString(localDate.Month)
        mes = mes.Substring((mes.Length - 2), 2)


        Dim dia As String
        dia = "00" & Convert.ToString(localDate.Day)
        dia = dia.Substring((dia.Length - 2), 2)

        Dim hora As String
        hora = "00" & Convert.ToString(localDate.Hour)
        hora = hora.Substring((hora.Length - 2), 2)

        Dim minuto As String
        minuto = "00" & Convert.ToString(localDate.Minute)
        minuto = minuto.Substring((minuto.Length - 2), 2)


        Dim segundo As String
        segundo = "00" & Convert.ToString(localDate.Second)
        segundo = segundo.Substring((minuto.Length - 2), 2)


        nombre = localDate.Year & mes & dia & hora & minuto & segundo

        Return nombre

    End Function
    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles btnProcesarDirectorio.Click
        txtVentanaSalida.Text = ""

        Dim nFiles As ObjectModel.ReadOnlyCollection(Of String)
        nFiles = My.Computer.FileSystem.GetFiles(txtDirectorioSeleccionado.Text, FileIO.SearchOption.SearchAllSubDirectories, "*.txt")
        Dim builder As New StringBuilder

        Try


            txtVentanaSalida.Text = ""
            For x As Integer = 0 To nFiles.Count - 1

                Dim arhcivoLeer As String = nFiles(x)
                builder.Append("" & vbCrLf)
                builder.Append("--" & arhcivoLeer)
                builder.Append("" & vbCrLf)


                If Not arhcivoLeer.Contains("OUTPUT") Then


                    Try


                        Dim sr As StreamReader = New StreamReader(arhcivoLeer)
                        Dim line As String
                        ' Read and display the lines from the file until the end 
                        ' of the file is reached.
                        Do
                            line = sr.ReadLine()

                            If Not String.IsNullOrEmpty(line) Then
                                builder.Append(line)
                                Dim nombre As String
                                nombre = "OUTPUT_" & Fn_NombreConFecha()

                                MtdProcesaArchivoTexto(line, txtDirectorioSeleccionado.Text & "\" & nombre & ".sql")
                                builder.Append("" & vbCrLf)
                            End If



                            'Console.WriteLine(line)
                        Loop Until line Is Nothing
                        sr.Close()





                    Catch ex As Exception
                        builder.Append("Error al procesar el archivo " & arhcivoLeer)
                        builder.Append("Errro " & ex.Message)
                    End Try

                End If



            Next

            txtVentanaSalida.Text = builder.ToString
            MessageBox.Show("Su archivo se ha procesado correctamente")

        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try


        

    End Sub
    Private Sub MtdProcesaArchivoTexto(archivioPorAnexar As String, ArchivoFinal As String)
        
        Dim salida As StreamWriter
        salida = File.AppendText(ArchivoFinal) 'Abrir para añadir


        Dim sr As StreamReader = New StreamReader(archivioPorAnexar)
        Dim line As String
        ' Read and display the lines from the file until the end 
        ' of the file is reached.
        Do
            line = sr.ReadLine()
            'Console.WriteLine(line)
            salida.WriteLine(line)
        Loop Until line Is Nothing
        sr.Close()

        salida.WriteLine(TxtSeparador.Text)
        'salida.WriteLine("Una linea que añado...") 'Añadir
        'salida.WriteLine("Y otra")
        salida.Flush() 'Acabar de escribir
        salida.Close() 'Cerra



    End Sub

    Private Sub Button2_Click(sender As System.Object, e As System.EventArgs)

    End Sub

    Private Sub txtDirectorioSeleccionado_KeyPress(sender As System.Object, e As System.Windows.Forms.KeyPressEventArgs) Handles txtDirectorioSeleccionado.KeyPress

        If e.KeyChar = Convert.ToChar(Keys.Return) Then
            'If e.KeyChar = ChrW(Keys.Return) Then
            e.Handled = True
            txtDirectorioSeleccionado.Text = "C:\GitHub\Aplicacion\Scripts\Liberaciones\ScriptGeneralDesarrollo"

        ElseIf e.KeyChar = "."c Then
            ' si se pulsa en el punto se convertirá en coma
            e.Handled = True
            SendKeys.Send(",")
        End If

    End Sub

    Private Sub txtDirectorioSeleccionado_KeyDown(sender As System.Object, e As System.Windows.Forms.KeyEventArgs) Handles txtDirectorioSeleccionado.KeyDown

    End Sub

    Private Sub Button1_Click_1(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        'txtDirectorioSeleccionado.Text = ""
        txtVentanaSalida.Text = ""
    End Sub
End Class
