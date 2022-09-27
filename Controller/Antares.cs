using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Security.Cryptography.X509Certificates;
using System.Windows.Forms;

namespace Cadastrar
{
    class Antares
    {

        private string conexao = "Server=localhost;Database=antares;uid=root;pwd=root;Port=3306";
        public string ConnectionString
            {
                get {return conexao;}
                set {conexao = value;}
            }

        // Retona todos os estados;
        public List<string> getEstados()
        {
            List<string> federativa = new List<string>();
            string data = "SELECT uf FROM municipiosibge ORDER BY uf";

            try
            {
                MySqlConnection bd = new MySqlConnection(ConnectionString);
                MySqlCommand comando = new MySqlCommand(data, bd);

                bd.Open();
                MySqlDataReader ler = comando.ExecuteReader();

                foreach (var uf in ler)
                {
                    if (ler.HasRows)
                    {
                        if (!federativa.Exists(e => e == ler.GetString(0)))
                        {
                            federativa.Add(ler.GetString(0));
                        }
                    }
                }

                ler.Close();
                bd.Close();

                return federativa;
            }
            catch (Exception)
            {
                throw;
            }
        }

        // Retona todas as cidades;
        public List<string> getCidades(string uf)
        {
            List<string> cidade = new List<string>();
            string data = "SELECT uf, cidade FROM municipiosibge WHERE uf = '" + uf + "' ORDER BY cidade ";

            try
            {
                MySqlConnection bd = new MySqlConnection(ConnectionString);
                MySqlCommand comando = new MySqlCommand(data, bd);

                bd.Open();
                MySqlDataReader ler = comando.ExecuteReader();

                foreach (var city in ler)
                {
                    if (ler.HasRows)
                    {
                        if (!cidade.Exists(e => e == ler.GetString(1)))
                        {
                            cidade.Add(ler.GetString(1));
                        }
                    }
                }

                ler.Close();
                bd.Close();

                return cidade;
            }
            catch (Exception)
            {
                throw;
            }
        }

        // Retornar condição da conexão;
        public bool HasConnectionDB(MySqlConnection bd)
        {
            if (bd.State == ConnectionState.Open)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        // Retorna true se existir a database e false caso não exista.
        public bool getDatabaseName(string dbname)
        {
            string comando = "SHOW DATABASES WHERE `database` = '" + dbname + "'";
            bool condition = false;

            MySqlConnection bd = new MySqlConnection(ConnectionString);
            MySqlCommand cmd = new MySqlCommand(comando, bd);
            bd.Open();

            if (HasConnectionDB(bd))
            {
                MySqlDataReader ler = cmd.ExecuteReader();
                foreach (var city in ler)
                {
                    if (ler.HasRows)
                    {
                        if (ler.GetString(0) == dbname)
                        {
                            condition = true;
                        }
                        else
                        {
                            condition = false;
                        }
                    }
                    else
                    {
                        condition = false;
                    }
                }
            }

            bd.Close();
            return condition;
        }

        public string getUForCidade(string search, string CityOrUF)
        {
            string comando;
            string arm = "";

            if (CityOrUF == "City")
            {
                comando = "SELECT ibgecidade FROM municipiosibge WHERE cidade = '" + search + "'";
            }
            else
            {
                comando = "SELECT coduf FROM municipiosibge WHERE uf = '" + search + "'";
            }

            MySqlConnection conn = new MySqlConnection(ConnectionString);
            MySqlCommand com = new MySqlCommand(comando, conn);
            conn.Open();

            if (HasConnectionDB(conn))
            {
                MySqlDataReader ler = com.ExecuteReader();
                foreach (var city in ler)
                {
                    if (ler.HasRows)
                    {
                        return arm = ler.GetString(0);
                    }
                }
            }

            conn.Close();
            return arm;
        }

        public void InstallProgram(string program, string arguments, string verbs)
        {
            ProcessStartInfo startInfo = new ProcessStartInfo(Directory.GetCurrentDirectory() + program);
            startInfo.Arguments = @arguments;
            if (verbs != "" || verbs != null)
            {
                startInfo.Verb = verbs;
            }
            Process notePad = Process.Start(startInfo);
        }
        
        public void openCad()
        {
            frm_cadastro cnpjcad = new frm_cadastro();

            cnpjcad.Show();
            Application.Run(cnpjcad);
        }

        public X509Certificate2 BuscaNroSerie(string NroSerie)
        {
            NroSerie = (NroSerie == "xxx") ? string.Empty : NroSerie;

            X509Certificate2 _X509Cert = new X509Certificate2();
            try
            {
                X509Store store = new X509Store("MY", StoreLocation.CurrentUser);
                store.Open(OpenFlags.ReadOnly | OpenFlags.OpenExistingOnly);
                X509Certificate2Collection collection = (X509Certificate2Collection)store.Certificates;
                X509Certificate2Collection collection1 = (X509Certificate2Collection)collection.Find(X509FindType.FindByTimeValid, DateTime.Now, false);
                X509Certificate2Collection collection2 = (X509Certificate2Collection)collection.Find(X509FindType.FindByKeyUsage, X509KeyUsageFlags.DigitalSignature, false);
                if (NroSerie == "")
                {
                    X509Certificate2Collection scollection = X509Certificate2UI.SelectFromCollection(collection2, "Certificados Digitais", "Selecione o Certificado Digital para uso no aplicativo", X509SelectionFlag.SingleSelection);
                    if (scollection.Count == 0)
                    {
                        _X509Cert.Reset();
                        Console.WriteLine("Nenhum certificado válido foi encontrado com o número de série informado: " + NroSerie, "Atenção");
                    }
                    else
                    {
                        _X509Cert = scollection[0];
                    }
                }
                else
                {
                    X509Certificate2Collection scollection = (X509Certificate2Collection)collection2.Find(X509FindType.FindBySerialNumber, NroSerie, false);
                    if (scollection.Count == 0)
                    {
                        _X509Cert.Reset();
                        Console.WriteLine("Nenhum certificado válido foi encontrado com o número de série informado: " + NroSerie, "Atenção");
                    }
                    else
                    {
                        _X509Cert = scollection[0];
                    }
                }
                store.Close();
                txtCertificadoDigital.Text = _X509Cert.SerialNumber.ToString();
                return _X509Cert;

            }
            catch (System.Exception ex)
            {
                Console.WriteLine(ex.Message);
                return _X509Cert;
            }
        }


    }
}
