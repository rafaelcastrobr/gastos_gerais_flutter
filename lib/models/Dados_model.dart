class Dados {
  String? titulo;
  String? valor;

  Dados({this.titulo, this.valor});

  Dados.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    valor = json['valor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = titulo;
    data['valor'] = valor;
    return data;
  }

  String toString() {
    return "Título: $titulo\nValor: $valor";
  }
}
