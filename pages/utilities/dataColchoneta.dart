class ColchonetaInfo {
  final int index;
  final String name;
  final String description1;
  final String description2;
  final String info1;
  final String info2;
  final String img1;
  final String img2;

  ColchonetaInfo(
    this.index, {
    this.name,
    this.description1,
    this.description2,
    this.info1,
    this.info2,
    this.img1,
    this.img2,
  });
}

List<ColchonetaInfo> colchoneta = [
  ColchonetaInfo(1,
      name: 'Puente',
      description1: 'Acuéstate sobre una colchoneta en el suelo y flexiona tus piernas.',
      description2: 'Subir las caderas separando los glúteos del suelo y bajar.',
      info1: 'Hacer 3 series de 5 veces cada una.',
      info2: 'Realizar el ejercicio 1 vez al día.',
      img1 : 'assets/Exercises/Colchoneta/puente1.png',
      img2 : 'assets/Exercises/Colchoneta/puente2.png',
    ),
  ColchonetaInfo(2,
      name: 'Abdominales',
      description1: 'Acuéstate sobre una colchoneta en el suelo y flexiona tus piernas.',
      description2: 'Separar los hombros de la colchoneta e inclinar el cuerpo para tocar con la mano el tobillo del mismo lado, vuelve al centro y repite hacia el otro lado.',
      info1: 'Hacer 3 series de 10 veces cada una alternando ambos lados.',
      info2: 'Realizar el ejercicio 1 vez al día.',
      img1 : 'assets/Exercises/Colchoneta/abdominales1.png',
      img2 : 'assets/Exercises/Colchoneta/abdominales2.png',
    ),
  ColchonetaInfo(3,
      name: 'Estiramiento de Isquiotibiales',
      description1: 'Acostado en una colchoneta, apoyar una pierna sobre la otra rodilla y llavar a extensión.',
      description2: 'tirar del pie hacia el suelo, evitando contener la respiración.',
      info1: 'Hacer 2 series de 6 veces con cada pierna.',
      info2: 'Realizar el ejercicio 1 vez al día.',
      img1 : 'assets/Exercises/Colchoneta/isquio1.png',
      img2 :'assets/Exercises/Colchoneta/isquio2.png',
    ),
  ColchonetaInfo(4,
      name: 'Extensión de Tobillos',
      description1: 'Acuéstate sobre una colchoneta en el suelo y estira tus piernas.',
      description2: 'Flexionar y extender los tobillos al límite del moviemiento.',
      info1: 'Hacer 3 series de 5 veces cada una.',
      info2: 'Realizar el ejercicio 1 vez al día.',
      img1 : 'assets/Exercises/Colchoneta/tobillos1.png',
      img2 : 'assets/Exercises/Colchoneta/tobillos2.png',
    ),
];