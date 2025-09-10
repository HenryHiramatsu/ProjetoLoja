using ProjetoLoja.Models;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProjetoLoja.Models
{
    public class ItemCarrinho
    {

        public int ProdutoId { get; set; }

        public Produto Produto { get; set; }
        public int Quantidade { get; set; }
        public decimal Preco { get; set; }


        public decimal Total => Quantidade * Preco;
    }
}
