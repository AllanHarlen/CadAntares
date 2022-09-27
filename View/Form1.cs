using MySql.Data.MySqlClient;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Cadastrar
{
    public partial class frm_cadastro : Form
    {

        Antares antares = new Antares();
        public frm_cadastro()
        {
            InitializeComponent();
            //this.TopMost = true;

            // validação para utilização do http e liberação de segurança ao acessar
            ServicePointManager.Expect100Continue = true;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void txt_razao_TextChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (txt_cnpjs.TextLength < 14 || string.IsNullOrEmpty(txt_cnpjs.Text))
            {
                MessageBox.Show("Digite um CNPJ valido!", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                // criação da URL do API através do string format.
                string strURLs = string.Format(@"https://www.receitaws.com.br/v1/cnpj/" + txt_cnpjs.Text.Trim());

                try
                {
                    // Iniciando o acesso a conexão Http da strURL
                    using (HttpClient clientecnpjs = new HttpClient())
                    {
                        var resultado = clientecnpjs.GetAsync(strURLs).Result;
                        if (resultado.IsSuccessStatusCode)
                        {
                            var result = resultado.Content.ReadAsStringAsync().Result;
                            buscacnpj cads = JsonConvert.DeserializeObject<buscacnpj>(result);
                            
                            txt_razao.Text = cads.razao;
                            txt_fantasia.Text = cads.fantasia;
                            txt_cep.Text = cads.cep;
                            txt_endereco.Text = cads.endereco + ", " + cads.numero;
                            cbb_uf.Text = cads.uf;
                            txt_bairro.Text = cads.bairro;
                            txt_fone.Text = cads.fone;
                            txt_email.Text = cads.email;
                            cbb_cidade.Text = cads.cidade;
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
        }

        private void button_cep_Click_1(object sender, EventArgs e)
        {
            if (txt_cep.TextLength < 8 || string.IsNullOrEmpty(txt_cep.Text))
            {
                MessageBox.Show("Digite um CEP valido!", this.Text, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                // criação da URL do API através do string format.
                string strURL = string.Format("https://viacep.com.br/ws/{0}/json/", txt_cep.Text.Trim());

                try
                {
                    // Iniciando o acesso a conexão Http da strURL
                    using (HttpClient cliente = new HttpClient())
                    {
                        var resultado = cliente.GetAsync(strURL).Result;
                        if (resultado.IsSuccessStatusCode)
                        {
                            var result = resultado.Content.ReadAsStringAsync().Result;
                            informativos cad = JsonConvert.DeserializeObject<informativos>(result);
                            
                            txt_bairro.Text = cad.bairro;
                            txt_endereco.Text = cad.endereco;
                            cbb_uf.Text = cad.uf;
                            cbb_cidade.Text = cad.cidade;
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            frm_help help = new frm_help();
            help.ShowDialog();
        }

        private void pictureBox3_MouseEnter(object sender, EventArgs e)
        {
            pictureBox3.BackColor = Color.DodgerBlue;
        }

        private void folderBrowserDialog1_HelpRequest(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            antares.BuscaNroSerie("xxx");
        }

        private void frm_cadastro_Load(object sender, EventArgs e)
        {
            if (antares.getDatabaseName("antares"))
            {
                List<string> estados = new List<string>(antares.getEstados());
                foreach (var uf in estados)
                {
                    cbb_uf.Items.Add(uf.ToString());
                }
            }  
        }

        private void txt_cnpjs_KeyPress(object sender, KeyPressEventArgs e)
        {
            string tecla = e.KeyChar.ToString();
        }

        private void cbb_uf_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbb_cidade.Items.Clear();
            string select = cbb_uf.SelectedItem.ToString();

            if (select != "")
            {
                List<string> cidades = new List<string>(antares.getCidades(select));
                foreach (var city in cidades)
                {
                    cbb_cidade.Items.Add(city.ToString());
                }
                
                cbb_cidade.SelectedItem = cidades[0];
            }

        }

        private void txt_cnpjs_Click(object sender, EventArgs e)
        {
            if (txt_cnpjs.Text == "")
            {
                txt_cnpjs.Select(0, 0);
            }
        }

        private void txt_cep_Click(object sender, EventArgs e)
        {
            if (txt_cep.Text == "")
            {
                txt_cep.Select(0, 0);
            }
        }

        private void txt_fone_Click(object sender, EventArgs e)
        {
            if (txt_fone.Text == "")
            {
                txt_fone.Select(1, 0);
            }
        }

        private void button_ok_MouseEnter(object sender, EventArgs e)
        {
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            //Verificação de Campos Obrigatórios;
            if (txt_razao.TextLength <= 0 || txt_fantasia.TextLength <= 0 || txt_cnae.TextLength <= 0 || txt_cep.TextLength <= 0 || txt_bairro.TextLength <= 0 || txt_endereco.TextLength <= 0 || txt_cnpjs.TextLength <= 0 || txt_inscricao.TextLength <= 0 || txt_fone.TextLength <= 0 || cbb_cidade.Text == "" || cbb_regime.Text == "" || cbb_uf.Text == "")
            {
                MessageBox.Show("Preencha os Campos Obrigatórios!");
            }
            else
            {
                string regime = "";
                if (cbb_regime.Text != "")
                {
                    if (cbb_regime.Text == "Simples")
                    {
                        regime = "1";
                    }
                    else
                    {
                        regime = "3";
                    }
                }

                string[] sql = 
                    {
                        "UPDATE empresa SET fantasia = '" + txt_fantasia.Text + "', razao = '" + txt_razao.Text + "', endereco  = '" + txt_endereco.Text + "', bairro = '" + txt_bairro.Text + "', cidade = '" + cbb_cidade.Text + "', uf = '" + cbb_uf.Text + "', cep = '" + txt_cep.Text + "', inscricao = '" + txt_inscricao.Text + "', cnpj = '" + txt_cnpjs.Text + "', email = '" + txt_email.Text + "', fone = '" + txt_fone.Text + "', cnae = '" + txt_cnae.Text + "', regime = '" + regime + "', codigouf = '" + antares.getUForCidade(cbb_uf.Text, "UF") + "', codigocidade = '" + antares.getUForCidade(cbb_cidade.Text, "City") + "'",

                        "UPDATE configuracoesnfe SET cnpj = '" + txt_cnpjs.Text + "', serie = '1', email = '" + txt_email.Text + "', nomeexibicao = '" + txt_fantasia.Text + "', ie = '" + txt_inscricao.Text + "', municipio = '" + cbb_cidade.Text + "', unidadefederadacodigo = '" + antares.getUForCidade(cbb_uf.Text, "UF") + "', codmunicipio = '" + antares.getUForCidade(cbb_cidade.Text, "City") + "'"                        
                    };

                MySqlConnection conn = new MySqlConnection(antares.ConnectionString);
                conn.Open();

                for (int i = 0; i < sql.Length; i++)
                {
                    MySqlCommand comando = new MySqlCommand(sql[i], conn);
                    comando.ExecuteNonQuery();
                }

                conn.Close();

                var msgok = MessageBox.Show("Cadastro efetuado com sucesso, sistema inicializando..", "AntaresERP", MessageBoxButtons.OK);
                if (msgok == DialogResult.OK)
                {
                    var parentDirName = Directory.GetParent(Directory.GetCurrentDirectory());
                    Process notePad = Process.Start(parentDirName + @"\Antares\AntaresErp.exe");
                    this.Close();
                }
            }
        }

        private void pictureBox3_MouseLeave(object sender, EventArgs e)
        {
            pictureBox3.BackColor = Color.Empty;
        }

        private void pictureBox4_MouseEnter(object sender, EventArgs e)
        {
            button_ok.BackColor = Color.DodgerBlue;
        }

        private void pictureBox5_MouseEnter(object sender, EventArgs e)
        {
            button_cancel.BackColor = Color.DodgerBlue;
        }

        private void pictureBox4_MouseLeave(object sender, EventArgs e)
        {
            button_ok.BackColor = Color.Empty;
        }

        private void pictureBox5_MouseLeave(object sender, EventArgs e)
        {
            button_cancel.BackColor = Color.Empty;
        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {            
            var msg = MessageBox.Show("Você deseja cancelar o procedimento?", "AntaresERP", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (msg == DialogResult.Yes)
            {
                this.Close();
            }
        }
    }
}
