import 'package:flutter/material.dart';
import 'package:navegacao/shared/models/product_model.dart';
import 'package:navegacao/shared/widgets/product_widget.dart';
import '../../../core/navigator_keys.dart';

class ProductsPage extends StatelessWidget {
  final ProductModel productData = ProductModel(
    agrupamento: "07559",
    campanhaDescricao: "PROMO EICO",
    campanhaMecanica: "V",
    codCampanha: "00234399",
    codGrupo: "15",
    codGrupoEcommerce: 1,
    codProduto: "0755901",
    codSubgrupo: "1502",
    codSubgrupoEcommerce: "0101",
    codigoBarras: "7908448002637",
    contador: 6,
    conversaoNota: 1,
    desconto: 0,
    descricao:
        "KIT SHAMPOO+CONDICIONADOR SALÃO EM CASA HIDRATAÇÃO INTENSIVA EICO 1550ML",
    descricaoGrupo: "CAPILAR",
    descricaoGrupoEcommerce: "CABELOS",
    descricaoMarca: "EICO",
    descricaoSubgrupo: "SHAMPOO LT",
    descricaoSubgrupoEcommerce: "Shampoo",
    detalheProduto: null,
    flagEstoque: 0,
    fornecedor: "047719",
    fragrancia: "HID INTEN",
    imagens: [
      "https://midiasmarketplace-dev.guarany.com.br/imagens/produto/250q/7908448002637/1.png",
      "https://midiasmarketplace-dev.guarany.com.br/imagens/produto/250q/7908448002637/2.png",
      "https://midiasmarketplace-dev.guarany.com.br/imagens/produto/250q/7908448002637/3.png",
    ],
    multiploVenda: 1,
    ordenacao: 36,
    origemProduto: "NOR",
    precoTabela: 75.85,
    precoVenda: 49.9,
    qtBrinde: 0,
    qtEstoque: 298,
    tipoCampanha: 11,
    unidadeVenda: "UN",
    valorVenda: 49.9,
  );

  ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Page'),
      ),
      body: Column(
        children: [
          Product(product: productData),
          // Exemplo de botão comentado
          /*
          ElevatedButton(
            child: const Text('Produto tal'),
            onPressed: () {
              Navigator.pushNamed(
                NavigatorKeys.navigatorKeyProducts.currentContext!,
                '/product',
                arguments: {'product': 'Toshi Ossada'},
              );
            },
          ),
          */
        ],
      ),
    );
  }
}
