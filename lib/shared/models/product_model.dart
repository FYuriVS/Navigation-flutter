class ProductModel {
  final String agrupamento;
  final String campanhaDescricao;
  final String campanhaMecanica;
  final String codCampanha;
  final String codGrupo;
  final int codGrupoEcommerce;
  final String codProduto;
  final String codSubgrupo;
  final String codSubgrupoEcommerce;
  final String codigoBarras;
  final int contador;
  final int conversaoNota;
  final double desconto;
  final String descricao;
  final String descricaoGrupo;
  final String descricaoGrupoEcommerce;
  final String descricaoMarca;
  final String descricaoSubgrupo;
  final String descricaoSubgrupoEcommerce;
  final dynamic
      detalheProduto; // Pode ser de qualquer tipo, dependendo do JSON real
  final int flagEstoque;
  final String fornecedor;
  final String fragrancia;
  final List<String> imagens;
  final int multiploVenda;
  final int ordenacao;
  final String origemProduto;
  final double precoTabela;
  final double precoVenda;
  final int qtBrinde;
  final int qtEstoque;
  final int tipoCampanha;
  final String unidadeVenda;
  final double valorVenda;

  ProductModel({
    required this.agrupamento,
    required this.campanhaDescricao,
    required this.campanhaMecanica,
    required this.codCampanha,
    required this.codGrupo,
    required this.codGrupoEcommerce,
    required this.codProduto,
    required this.codSubgrupo,
    required this.codSubgrupoEcommerce,
    required this.codigoBarras,
    required this.contador,
    required this.conversaoNota,
    required this.desconto,
    required this.descricao,
    required this.descricaoGrupo,
    required this.descricaoGrupoEcommerce,
    required this.descricaoMarca,
    required this.descricaoSubgrupo,
    required this.descricaoSubgrupoEcommerce,
    required this.detalheProduto,
    required this.flagEstoque,
    required this.fornecedor,
    required this.fragrancia,
    required this.imagens,
    required this.multiploVenda,
    required this.ordenacao,
    required this.origemProduto,
    required this.precoTabela,
    required this.precoVenda,
    required this.qtBrinde,
    required this.qtEstoque,
    required this.tipoCampanha,
    required this.unidadeVenda,
    required this.valorVenda,
  });
}
