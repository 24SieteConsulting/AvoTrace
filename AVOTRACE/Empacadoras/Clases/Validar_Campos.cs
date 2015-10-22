using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Empacadoras
{
    class Validar_Campos
    {
        public void Valida_Numeros(object sender, KeyEventArgs e, string Cadena)
        {
            int valor = Cadena.IndexOf(".");

            if (e.KeyValue < 48 || e.KeyValue > 57) e.SuppressKeyPress = true; // 0-9
            if (e.KeyValue <= 105 && e.KeyValue >= 96) e.SuppressKeyPress = false; // 0-9
            if (e.Shift && e.KeyValue == 187) e.SuppressKeyPress = false; // +
            if (e.KeyValue == 46 || e.KeyValue == 8) e.SuppressKeyPress = false; // DEL and BackSpace
            if (e.KeyValue == 37 || e.KeyValue == 39) e.SuppressKeyPress = false; // Left/Right Arrow
            if (e.KeyValue == 110 && valor < 0) e.SuppressKeyPress = false; // Left/Right Arrow
            if (e.KeyValue == 190 && valor > 0) e.SuppressKeyPress = true; // .
            if (e.KeyValue == 190 && valor < 0) e.SuppressKeyPress = false; // .
        }
        public void Solo_Numeros(object sender, KeyEventArgs e, string Cadena)
        {
            if ((e.KeyValue >= 48 && e.KeyValue <= 57) || (e.KeyValue >= 96 && e.KeyValue <= 105)) e.SuppressKeyPress = false; // 0-9
            else if (e.Shift && e.KeyValue == 187) e.SuppressKeyPress = false; // +
            else if (e.KeyValue == 46 || e.KeyValue == 8) e.SuppressKeyPress = false; // DEL and BackSpace
            else if (e.KeyValue == 37 || e.KeyValue == 39) e.SuppressKeyPress = false; // Left/Right Arrow
            else e.SuppressKeyPress = true;
        }
        public void Solo_NumerosLetras(object sender, KeyEventArgs e, string Cadena)
        {
            if ((e.KeyValue >= 48 && e.KeyValue <= 57) || (e.KeyValue >= 96 && e.KeyValue <= 105)) e.SuppressKeyPress = false; // 0-9
            else if ((e.KeyValue >= 65 && e.KeyValue <= 90)) e.SuppressKeyPress = false; // A-Z
            else if (e.KeyValue == 46 || e.KeyValue == 8) e.SuppressKeyPress = false; // DEL and BackSpace
            else if (e.KeyValue == 37 || e.KeyValue == 39) e.SuppressKeyPress = false; // Left/Right Arrow
            else e.SuppressKeyPress = true;
        }
        public void Valida_Simbolos(object sender, KeyEventArgs e, string Cadena)
        {
            if (e.KeyValue == 219) e.SuppressKeyPress = true; // '
        }

        public void Valida_Letras(object sender, KeyEventArgs e)
        {
            if (e.KeyValue >= 65 && e.KeyValue <= 90) e.SuppressKeyPress = false; // A-Z
            else if (e.KeyValue == 192) e.SuppressKeyPress = false; // ñ
            else if (e.KeyValue == 32) e.SuppressKeyPress = false; // space
            else if (e.KeyValue == 46 || e.KeyValue == 8) e.SuppressKeyPress = false; // DEL and BackSpace
            else if (e.KeyValue == 37 || e.KeyValue == 39) e.SuppressKeyPress = false; // Left/Right Arrow
            else e.SuppressKeyPress = true;
        }
    }
}
