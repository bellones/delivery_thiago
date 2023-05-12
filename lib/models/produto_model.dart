class ProdutoModel {
  final String id;
  int desconto, estoque, pagamento;
  bool usaDesconto, usaEstoque, promocao;
  String foto, idcategoria, idloja, nome;
  int valor;

  ProdutoModel({
    this.id = "",
    this.nome = "",
    this.desconto = 0,
    this.estoque = 0,
    this.foto = "",
    this.idcategoria = "",
    this.idloja = "",
    this.pagamento = 0,
    this.promocao = false,
    this.usaDesconto = false,
    this.usaEstoque = false,
    this.valor = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'desconto': desconto,
      'estoque': estoque,
      'foto': foto,
      'idcategoria': idcategoria,
      'idloja': idloja,
      'pagamento': pagamento,
      'promocao': promocao,
      'usaDesconto': usaDesconto,
      'usaEstoque': usaEstoque,
      'valor': valor,
    };
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      id: map['id'],
      nome: map['nome'],
      desconto: map['desconto'],
      estoque: map['estoque'],
      foto: map['foto'],
      idcategoria: map['idcategoria'],
      idloja: map['idloja'],
      pagamento: map['pagamento'],
      promocao: map['promocao'],
      usaDesconto: map['usaDesconto'],
      usaEstoque: map['usaEstoque'],
      valor: map['valor'],
    );
  }

  factory ProdutoModel.fromJson(Map<String, dynamic> map) {
    return ProdutoModel(
      id: map['id'],
      nome: map['nome'],
      desconto: map['desconto'],
      estoque: map['estoque'],
      foto: map['foto'],
      idcategoria: map['idcategoria'],
      idloja: map['idloja'],
      pagamento: map['pagamento'],
      promocao: map['promocao'],
      usaDesconto: map['usaDesconto'],
      usaEstoque: map['usaEstoque'],
      valor: map['valor'],
    );
  }
}
