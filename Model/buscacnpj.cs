using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cadastrar
{
    class buscacnpj
    {
        [JsonProperty(PropertyName = "nome")]
        public string razao { get; set; }

        [JsonProperty(PropertyName = "fantasia")]
        public string fantasia { get; set; }

        [JsonProperty(PropertyName = "cnpj")]
        public string cnpj { get; set; }

        [JsonProperty(PropertyName = "cep")]
        public string cep { get; set; }

        [JsonProperty(PropertyName = "logradouro")]
        public string endereco { get; set; }

        [JsonProperty(PropertyName = "numero")]
        public string numero { get; set; }

        [JsonProperty(PropertyName = "uf")]
        public string uf { get; set; }

        [JsonProperty(PropertyName = "municipio")]
        public string cidade { get; set; }

        [JsonProperty(PropertyName = "bairro")]
        public string bairro { get; set; }

        [JsonProperty(PropertyName = "telefone")]
        public string fone { get; set; }

        [JsonProperty(PropertyName = "email")]
        public string email { get; set; }

        //[JsonProperty(PropertyName = "atividades_secundarias")]
        //public string atividades { get; set; }

    }
}
