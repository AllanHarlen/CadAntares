using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cadastrar
{
    public class informativos
    {
        [JsonProperty(PropertyName = "cep")]
        public string ceps { get; set; }

        [JsonProperty(PropertyName = "logradouro")]
        public string endereco { get; set; }

        [JsonProperty(PropertyName = "bairro")]
        public string bairro { get; set; }

        [JsonProperty(PropertyName = "localidade")]
        public string cidade { get; set; }

        [JsonProperty(PropertyName = "uf")]
        public string uf { get; set; }

        [JsonProperty(PropertyName = "ibge")]
        public string ibge { get; set; }       

    }
    
}
