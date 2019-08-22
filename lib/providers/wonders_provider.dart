import 'package:flutter/material.dart';

class WondersProvider with ChangeNotifier {
  int _index = 0;
  List<Wonder> wondersList = [
    Wonder(
      name: 'Grande Muralha da China',
      location: 'China',
      year: '700 AC',
      animationName: 'GreatWallIn',
      description:
          '''Grande Muralha da China é uma série de fortificações feitas de pedra, tijolo, terra compactada, madeira e outros materiais, geralmente construída ao longo de uma linha leste-oeste através das fronteiras históricas do norte da China para proteger os Estados e impérios chineses contra as invasões dos vários grupos nômades das estepes da Eurásia, principalmente os mongóis''',
    ),
    Wonder(
      name: 'Petra',
      location: 'Jordan',
      year: '312 AC',
      animationName: 'Petra',
      description:
          '''Petra, originalmente conhecida pelos nabateus como Raqmu, é uma cidade histórica e arqueológica localizada no sul da Jordânia.
        A cidade é famosa por sua arquitetura esculpida em rocha e por seu sistema de canalização de água.
        Outro nome para Petra é Cidade Rosa, devido à cor das pedras do local.''',
    ),
    Wonder(
      name: 'Coliseu',
      location: 'Roma , Itália',
      year: '80 DC',
      animationName: 'Coliseum',
      description:
          ''' O Coliseu de Roma foi construído no século I (cerca de 70 d.C.). Sua construção teve início no governo do imperador Vespasiano e foi concluído quando Tito, seu filho, estava no poder.
        No total, foram seis anos para erigir um dos mais emblemáticos símbolos do Império Romano.
        A intenção principal era o entretenimento do povo. Ou seja, um local para os espetáculos públicos e a luta dos gladiadores romanos.
        Quando ele foi inaugurado pelo Imperador Tito, foram realizados 100 dias de jogos nas arenas. As atrações incluíam execuções, batalhas navais, combates de gladiadores, lutas e caça de animais, dentre outros.''',
    ),
    Wonder(
        name: 'Chichen Itza',
        location: 'Yucatán, Mexico',
        year: '600 DC',
        animationName: 'ChiChenItzaIn',
        description:
            '''Chichén Itzá foi uma grande cidade pré-colombiana construída pela civilização maia no final do período clássico.
        O sítio arqueológico está localizado no município de Tinum, no estado de Yucatán, México '''),
    Wonder(
      name: 'Machu Picchu',
      location: 'Cuzco, Peru',
      year: '1450 DC',
      animationName: 'MachuPicchu',
      description:
          '''Machu Picchu é uma cidadela inca que fica no alto da Cordilheira dos Andes no Peru, acima do vale do rio Urubamba.
        Construída no século XV e posteriormente abandonada, ela é conhecida pelas sofisticadas muralhas de pedra contínuas, cujos imensos blocos foram unidos sem o uso de argamassa,
        pelas construções intrigantes que levam em conta o alinhamento dos astros e pelas vistas panorâmicas. A antiga utilidade dessas construções segue sendo um mistério.''',
    ),
    Wonder(
      name: 'Taj Mahal',
      location: 'Agra, Uttar Pradesh, India',
      year: '1643 DC',
      animationName: 'TajMahal',
      description:
          '''O Taj Mahal é um mausoléu situado em Agra, na Índia, sendo o mais conhecido dos monumentos do país.
          Encontra-se classificado pela UNESCO como Patrimônio da Humanidade.
          Foi anunciado em 2007 como uma das sete maravilhas do mundo moderno.''',
    ),
    Wonder(
      name: 'Cristo Redentor',
      location: 'Rio de Janeiro, Brazil',
      year: '1931 DC',
      animationName: 'Christ',
      description:
          ''' Cristo Redentor é uma estátua art déco que retrata Jesus Cristo, localizada no topo do morro do Corcovado,
          a 709 metros acima do nível do mar, no Parque Nacional da Tijuca, com vista para a maior parte da cidade do Rio de Janeiro, Brasil.
          Em 2007 foi eleito informalmente como uma das sete maravilhas do mundo moderno.''',
    ),
  ];

  get name => wondersList[_index].name;
  get animationName => wondersList[_index].animationName;
  get location => wondersList[_index].location;
  get year => wondersList[_index].year;
  get description => wondersList[_index].description;

  void nextWonder() {
    if (this._index != wondersList.length - 1) _index += 1;
    notifyListeners();
  }

  void previousWonder() {
    if (this._index != 0) _index -= 1;
    notifyListeners();
  }
}

class Wonder {
  final String name;
  final String description;
  final String location;
  final String year;
  final String animationName;

  Wonder({
    @required this.name,
    @required this.description,
    @required this.location,
    @required this.year,
    @required this.animationName,
  }) {
/*     String _pathName = this.name.toLowerCase().replaceAll(RegExp(r"\s+\b|\b\s"), "_");
    this.path = 'assets/imgs/wonders/$_pathName.jpeg'; */
  }
}
