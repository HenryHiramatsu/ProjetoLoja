using ProjetoLoja.Models;
using MySql.Data.MySqlClient;
using Dapper;

namespace ProjetoLoja.Repositorio
{
    public class ProdutoRepositorio
    {
        private readonly string _connectionString;

        public ProdutoRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }
        public async Task<IEnumerable<Produto>> TodosProdutos()
        {
            using var connection = new MySqlConnection(_connectionString);
            var sql = "select Id, Nome, Descricao, Preco, ImageUrl, Estoque FROM Produto";
            return await connection.QueryAsync<Produto>(sql);
        }
    }
}
