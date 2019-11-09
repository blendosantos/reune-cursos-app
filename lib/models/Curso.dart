class Curso {
  int id;
  String idBanner;
  String idImagemDestaque;
  String titulo;
  String subTitulo;
  String local;
  String endereco;
  String dsLocal;
  String linkGeolocalizacao;
  String dtInicial;
  String dtFinal;
  String descricao;
  String cargaHoraria;
  String urlVideo;
  String slug;
  String status;
  String createdAt;
  String updatedAt;
  String deletedAt;
  List<Planos> planos;
  Banner banner;

  Curso(
      {this.id,
      this.idBanner,
      this.idImagemDestaque,
      this.titulo,
      this.subTitulo,
      this.local,
      this.endereco,
      this.dsLocal,
      this.linkGeolocalizacao,
      this.dtInicial,
      this.dtFinal,
      this.descricao,
      this.cargaHoraria,
      this.urlVideo,
      this.slug,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.planos,
      this.banner});

  Curso.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idBanner = json['idBanner'];
    idImagemDestaque = json['idImagemDestaque'];
    titulo = json['titulo'];
    subTitulo = json['sub_titulo'];
    local = json['local'];
    endereco = json['endereco'];
    dsLocal = (json['ds_local']);
    linkGeolocalizacao = json['link_geolocalizacao'];
    dtInicial = json['dt_inicial'];
    dtFinal = json['dt_final'];
    descricao = json['descricao'];
    cargaHoraria = json['carga_horaria'];
    urlVideo = json['url_video'];
    slug = json['slug'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    if (json['planos'] != null) {
      planos = new List<Planos>();
      json['planos'].forEach((v) {
        planos.add(new Planos.fromJson(v));
      });
    }
    banner =
        json['banner'] != null ? new Banner.fromJson(json['banner']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idBanner'] = this.idBanner;
    data['idImagemDestaque'] = this.idImagemDestaque;
    data['titulo'] = this.titulo;
    data['sub_titulo'] = this.subTitulo;
    data['local'] = this.local;
    data['endereco'] = this.endereco;
    data['ds_local'] = this.dsLocal;
    data['link_geolocalizacao'] = this.linkGeolocalizacao;
    data['dt_inicial'] = this.dtInicial;
    data['dt_final'] = this.dtFinal;
    data['descricao'] = this.descricao;
    data['carga_horaria'] = this.cargaHoraria;
    data['url_video'] = this.urlVideo;
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.planos != null) {
      data['planos'] = this.planos.map((v) => v.toJson()).toList();
    }
    if (this.banner != null) {
      data['banner'] = this.banner.toJson();
    }
    return data;
  }
}

class Planos {
  int id;
  String idEvento;
  String titulo;
  String valor;
  String item1;
  Null item2;
  Null item3;
  String tempo;
  String createdAt;
  Null updatedAt;

  Planos(
      {this.id,
      this.idEvento,
      this.titulo,
      this.valor,
      this.item1,
      this.item2,
      this.item3,
      this.tempo,
      this.createdAt,
      this.updatedAt});

  Planos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idEvento = json['idEvento'];
    titulo = json['titulo'];
    valor = json['valor'];
    item1 = json['item1'];
    item2 = json['item2'];
    item3 = json['item3'];
    tempo = json['tempo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idEvento'] = this.idEvento;
    data['titulo'] = this.titulo;
    data['valor'] = this.valor;
    data['item1'] = this.item1;
    data['item2'] = this.item2;
    data['item3'] = this.item3;
    data['tempo'] = this.tempo;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Banner {
  int id;
  String path;
  String descricao;
  String nmOriginal;
  String createdAt;
  Null updatedAt;
  Null deletedAt;

  Banner(
      {this.id,
      this.path,
      this.descricao,
      this.nmOriginal,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Banner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    path = json['path'];
    descricao = json['descricao'];
    nmOriginal = json['nm_original'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['path'] = this.path;
    data['descricao'] = this.descricao;
    data['nm_original'] = this.nmOriginal;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
