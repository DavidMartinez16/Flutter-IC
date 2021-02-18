class PesoInfo {
  final int index;
  final String name;
  final String description1;
  final String description2;
  final String info1;
  final String info2;
  final String img1;
  final String img2;

  PesoInfo(
    this.index, {
    this.name,
    this.description1,
    this.description2,
    this.info1,
    this.info2,
    this.img1,
    this.img2
  });
}

List<PesoInfo> peso = [
  PesoInfo(1,
      name: 'Deltoides',
      description1: 'Ambos brazos pegados al cuerpo y sin tirar del cuello.',
      description2: 'Subir los dos brazos a la vez, sin doblar el codo hasta la altura del hombro y bajar.',
      info1: 'Hacer 2 series de 5 veces cada una.',
      info2: 'Realizar el ejercicio 1 vez al día.',
        img1: 'assets/Exercises/Peso/deltoides1.png',
        img2: 'assets/Exercises/Peso/deltoides2.png',
      ),
  PesoInfo(2,
      name: 'Trapecios',
      description1: 'Posiciona tus brazos en forma de "Candelabro"',
      description2: 'Llevar ambos brazos a la vez hacia el medio por delante de la cara y, hacia atrás sin sobrepasar la línea de los hombros.',
      info1: 'Hacer 2 series de 5 veces cada una.',
      info2: 'Realizar el ejercicio 1 vez al día.',
        img1: 'assets/Exercises/Peso/trapecios1.png',
        img2: 'assets/Exercises/Peso/trapecios2.png',
      ),
  PesoInfo(3,
      name: 'Pectorales',
      description1: 'Ambos brazos separados a la altura de los hombros con los codos flexionados y manos hacia abajo.',
      description2: 'Juntar las pesas por delante, sin sobrepasar la altura de los hombros y separar.',
      info1: 'Hacer 2 series de 5 veces cada una.',
      info2: 'Realizar el ejercicio 1 vez al día.',
        img1: 'assets/Exercises/Peso/pectorales1.png',
        img2: 'assets/Exercises/Peso/pectorales2.png',
      ),
  PesoInfo(4,
      name: 'Biceps',
      description1: 'Los brazos con una ligera separación del cuerpo y codos extendidos.',
      description2: 'Flexionar los codos llevando las manos en dirección a los hombros.',
      info1: 'Hacer 2 series de 5 veces cada una.',
      info2: 'Realizar el ejercicio 1 vez al día.',
        img1: 'assets/Exercises/Peso/biceps1.png',
        img2: 'assets/Exercises/Peso/biceps2.png',
      ),
];