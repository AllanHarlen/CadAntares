using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace Cadastrar
{
    public partial class frmprogressbar : Form
    {
        Antares antares = new Antares();
        string[] filePath = {@"\db\db.sql", @"\db\db2.sql", @"\db\insert.sql"};
        string[] install = {@"\pack\SQLSysClrTypes.msi", @"\pack\SQLSysClrTypes15.msi", @"\pack\ReportViewer.msi", @"\pack\ReportViewer15.msi"};

        public frmprogressbar()
        {
            InitializeComponent();
        }

        private async void frmprogressbar_Shown(object sender, EventArgs e)
        {
            try
            {
                // iniciar a primeira instalação 
                txt_process.Text = "Instalação dos componentes, por gentileza aguarde...";
                progressBar.Value = 1;
                antares.InstallProgram(@"\pack\mariadb-10.1.48-winx64.msi", 
                                       @"SERVICENAME=MySQL DATADIR=C:\mydata\DB PASSWORD=root PORT=3306 /qn", "");

                progressBar.Value = 10;
                MySqlConnection conect = new MySqlConnection(antares.ConnectionString = @"Server=localhost;Database=mysql;uid=root;pwd=root;Port=3306");
                await Task.Delay(100000);

                // criação do BD.
                for (int i = 0; i < filePath.Length; i++)
                {
                    var data = File.ReadAllText(Directory.GetCurrentDirectory() + filePath[i]);

                    conect.Open();
                    MySqlCommand comando = new MySqlCommand(data, conect);
                    progressBar.Value += 10;                    
                    comando.ExecuteNonQuery();
                    conect.Close();
                }

                txt_process.Text = "Configuração do banco de dados, por gentileza aguarde...";

                // instalação dos componentes
                for (int i = 0; i < (install.Length); i++)
                {
                   antares.InstallProgram(install[i], "/qn", "");
                   progressBar.Value += 10;
                   await Task.Delay(50000);
                }

                this.Close();
                progressBar.Value = 100;
                // iniciar o formulário de cadastro em uma nova theared
                Thread t = new Thread(antares.openCad);
                t.Start();
            }
            catch (Exception ex)
            {

                string error = "";
                if (ex.InnerException != null)
                {
                    error = ex.InnerException.Message;
                }
                else
                {
                    error = ex.Message;
                }

                var msg = MessageBox.Show("Falha no procedimento de instalação (" + error + "), Você deseja reiniciar o procedimento?", "AntaresERP", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (msg == DialogResult.Yes)
                {
                    progressBar.Value = 1;
                    txt_process.Text = "Removendo o banco de dados, por gentileza aguarde...";
                    antares.InstallProgram(@"\pack\mariadb-10.1.48-winx64.msi", @"/qn", "uninstall");
                    await Task.Delay(50000);

                    // aguardar remoção
                    txt_process.Text = "Removendo os componentes, por gentileza aguarde...";

                    // instalação dos componentes
                    for (int i = 0; i < install.Length; i++)
                    {                        
                        antares.InstallProgram(install[i], "/qn", "uninstall");
                        progressBar.Value += 10;
                        await Task.Delay(50000);                        
                    }

                    progressBar.Value = 100;
                    Application.Restart();
                }
               else if (msg == DialogResult.No)
               {
                    this.Close();
               }
            }
        }

    }
}
