import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ------------------------------------- ESTILO DE LOS TEXTOS ----------------------------------------------------------
final styleDefinicion = TextStyle(
  color: Colors.black,
  fontFamily: 'OpenSans',
  fontSize: 16.5,
);

// --------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- DEFINICION DE IC -------------------------------------------------------------------------------------------------
String definicionIC = 'La IC es un síndrome complejo que resulta de cualquier anormalidad estructural o funcional que compromete el llene o la eyección ventricular. Puede resultar de alteraciones del pericardio, del miocardio, de los vasos coronarios, de las válvulas, de los grandes vasos o de ciertas anormalidades metabólicas. Clínicamente se presenta con síntomas y signos típicos que resultan de las anormalidades mencionadas (Consulta la sección de síntomas para más información). \n \n La IC se puede clasificar de acuerdo a los siguientes parámetros: ';
String tipo1 = '• IC AGUDA : Los síntomas y signos de IC ocurren habitualmente en el transcurso de las primeras 24 horas';
String tipo2 = '• IC CRÓNICA : Es la presentación más frecuente, los síntomas o signos ocurren en días o semanas. Se caracteriza por su evolución progresiva en el tiempo, con períodos intercurrentes de descompensaciones de la enfermedad';
String tipo3 = '• IC IZQUIERDA : Predominan los síntomas y signos de congestión pulmonar o bajo gasto cardíaco (disnea en sus diferentes presentaciones o fatigabilidad).';
String tipo4 = '• IC DERECHA : Predominan los síntomas y signos de congestión sistémica (edema, hepatomegalia, distensión venosa yugular).';
String tipo5 = '• IC GLOBAL O CONGESTIVA : Se presentan síntomas y signos combinados de congestión pulmonar y sistémica.';

// --------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- SINTOMAS DE IC -------------------------------------------------------------------------------------------------
String definicionSin = 'La insuficiencia cardíaca puede ser constante (crónica) o puede comenzar de manera repentina (aguda). Algunos de los signos y síntomas de la insuficiencia cardíaca pueden ser los siguientes: ';
String sin1 = '• Falta de aire (disnea) cuando haces esfuerzos o te acuestas';
String sin2 = '• Fatiga y debilidad';
String sin3 = '• Hinchazón (edema) en las piernas, los tobillos y los pies';
String sin4 = '• Latidos del corazón rápidos o irregulares';
String sin5 = '• Menor capacidad para hacer ejercicio';
String sin6 = '• Tos o sibilancia constantes con flema blanca o rosa manchada de sangre';
String sin7 = '• Mayor necesidad de orinar por la noche';
String sin8 = '• Hinchazón del abdomen (ascitis)';
String sin9 = '• Aumento de peso muy rápido por retención de líquido';
String sin10 = '•	Falta de apetito y náuseas';
String sin11 = '•	Dificultad para concentrarse o menor estado de alerta';
String sin12 = '•	Falta de aire repentina y grave, y tos con moco rosa espumoso';
String sin13 = '•	Dolor en el pecho si la insuficiencia cardíaca es producto de un ataque cardíaco';
String info1 = 'Consulta con el médico si crees que podrías tener signos o síntomas de insuficiencia cardíaca. Busca tratamiento de emergencia si experimentas cualquiera de los siguientes síntomas:';
String info2 = '•	Dolor en el pecho';
String info3 = '•	Desmayo o debilidad intensa';
String info4 = '•	Latidos del corazón rápidos o irregulares asociados con falta de aire, dolor en el pecho o desmayos';
String info5 = '•	Falta de aire repentina y grave, y tos con moco rosa espumoso';
String info6 = 'Si bien estos signos y síntomas pueden deberse a la insuficiencia cardíaca, hay muchas otras causas posibles, como otras afecciones cardíacas y pulmonares que pueden poner en riesgo la vida. No intentes auto diagnosticarte. Llama al 911 o al número local de emergencias para obtener ayuda de inmediato. Los médicos de la sala de emergencias intentarán estabilizar tu afección y determinar si los síntomas se deben a una insuficiencia cardíaca o a algo más.';
String info7 = 'Si tienes un diagnóstico de insuficiencia cardíaca, y si cualquiera de los síntomas empeora de manera repentina o presentas un nuevo signo o síntoma, esto puede significar que la insuficiencia cardíaca existente está empeorando o no responde al tratamiento. Este también puede ser el caso si aumentas 5 libras (2,3 kg) o más en unos pocos días. Comunícate con el médico de inmediato.';
String linkSin = 'https://insuficienciacardiaca.es/wp-content/uploads/2019/07/sintomas-insuficiencia-cardiaca-1024x514.jpg';

// --------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- CAUSAS DE IC -------------------------------------------------------------------------------------------------
String definicionCau = 'La insuficiencia cardíaca casi siempre es una afección prolongada (crónica), pero se puede presentar repentinamente. Puede ser causada por muchos problemas diferentes del corazón. \n \n A medida que el bombeo del corazón se vuelve menos eficaz, la sangre puede acumularse en otras zonas del cuerpo. El líquido se acumula en los pulmones, el hígado, el tracto gastrointestinal, al igual que en los brazos y las piernas. Esto se denomina insuficiencia cardíaca congestiva.';
String text1 = 'Las causas más comunes de insuficiencia cardíaca son : ';
String comun1 = '• La enfermedad de la arteria coronaria (EAC), es un estrechamiento o bloqueo de los pequeños vasos sanguíneos que suministran sangre y oxígeno al corazón. Esto puede debilitar el miocardio ya sea a lo largo del tiempo o repentinamente.';
String comun2 = '• La presión arterial alta que no esté bien controlada, que puede llevar a que se presenten problemas de rigidez o eventualmente llevar al debilitamiento del músculo.';
String text2 = 'Otros problemas del corazón que pueden causar insuficiencia cardíaca son : ';
String cau1 = '• Cardiopatía congénita';
String cau2 = '• Ataque cardíaco (cuando la enfermedad de la arteria coronaria resulta en un bloqueo repentino de una arteria del corazón).';
String cau3 = '• Válvulas cardíacas permeables o estrechas.';
String cau4 = '• Infección que debilita el miocardio.';
String cau5 = '• Algunos tipos de ritmos cardíacos anormales (arritmias).';
String text3 = 'Otras enfermedades que pueden causar o contribuir a la insuficiencia cardíaca son : ';
String enf1 = '• Amiloidosis';
String enf2 = '• Enfisema';
String enf3 = '• Hipertiroidismo';
String enf4 = '• Sarcoidosis';
String enf5 = '• Anemia grave';
String enf6 = '• Demasiado hierro en el cuerpo';
String enf7 = '• Hipotiroidismo';
String linkCau = 'https://insuficienciacardiaca.es/wp-content/uploads/2019/07/causas-insuficiencia-cardiaca-1.jpg';

// --------------------------------------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- TRATAMIENTO DE IC -------------------------------------------------------------------------------------------------
String definicionTra1 = 'La insuficiencia cardíaca es una enfermedad crónica que necesita control de por vida. No obstante, con tratamiento, los signos y síntomas de la insuficiencia cardíaca pueden mejorar y el corazón puede fortalecerse. El tratamiento puede ayudarte a vivir más tiempo y a reducir la probabilidad de muerte súbita.';
String definicionTra2 = 'En algunas ocasiones, los médicos pueden corregir la insuficiencia cardíaca tratando la causa de fondo. Por ejemplo, al reparar una válvula cardíaca o al controlar la aceleración del ritmo cardíaco se puede revertir la insuficiencia cardíaca. Sin embargo, para la mayoría de las personas, el tratamiento de la insuficiencia cardíaca implica equilibrar los medicamentos correctos y, en algunos casos, usar dispositivos que ayuden a que el corazón lata y se contraiga correctamente.';
String linkTra = 'https://m.gifmania.com/Gif-Animados-Personas/Imagenes-Profesiones/Enfermeras/Enfermera-Escribiendo-61182.gif';
String text4 = 'Los médicos suelen tratar la insuficiencia cardíaca con una combinación de medicamentos. Según los síntomas, puedes tomar uno o más medicamentos, entre ellos los mostrados a continuación.';
String eca = 'Estos medicamentos ayudan a las personas con insuficiencia cardíaca sistólica a vivir más tiempo y a sentirse mejor. Los inhibidores de la enzima convertidora de la angiotensina son un tipo de vasodilatador, un medicamento que ensancha los vasos sanguíneos para disminuir la presión arterial, mejorar el flujo sanguíneo y disminuir la carga de trabajo del corazón. Algunos ejemplos son el enalapril (Vasotec), el lisinopril (Zestril) y el captopril (Capoten).';
String ara = 'Estos medicamentos, como el losartán (Cozaar) y el valsartán (Diovan), tienen muchos de los beneficios de los inhibidores de la enzima convertidora de la angiotensina. Pueden ser una alternativa para las personas que no pueden tolerar los inhibidores de la enzima convertidora de la angiotensina.';
String beta = 'Este tipo de medicamentos no solo disminuye el ritmo cardíaco y reduce la presión arterial, sino también limita o revierte parte del daño en el corazón si tienes insuficiencia cardíaca sistólica. Algunos ejemplos son el carvedilol (Coreg), el metoprolol (Lopressor) y el bisoprolol (Zebeta). Estos medicamentos reducen el riesgo de algunos ritmos cardíacos anormales y disminuye la probabilidad de morir de forma inesperada. Los betabloqueadores pueden reducir los signos y síntomas de la insuficiencia cardíaca, mejorar la función del corazón y ayudar a vivir más tiempo.';
String diu = 'Este tipo de medicamentos no solo disminuye el ritmo cardíaco y reduce la presión arterial, sino también limita o revierte parte del daño en el corazón si tienes insuficiencia cardíaca sistólica. Algunos ejemplos son el carvedilol (Coreg), el metoprolol (Lopressor) y el bisoprolol (Zebeta). Estos medicamentos reducen el riesgo de algunos ritmos cardíacos anormales y disminuye la probabilidad de morir de forma inesperada. Los betabloqueadores pueden reducir los signos y síntomas de la insuficiencia cardíaca, mejorar la función del corazón y ayudar a vivir más tiempo.';
String digo = 'Este medicamento, también conocido como «digitálico», aumenta la fuerza de las contracciones del músculo cardíaco. También tiende a desacelerar los latidos del corazón. La digoxina reduce los síntomas de insuficiencia cardíaca que provoca la insuficiencia cardíaca sistólica. Es más probable que se administre a una persona con problemas de ritmo cardíaco, como la fibrilación auricular.';
String textFinal = 'Es posible que debas tomar dos o más medicamentos para tratar la insuficiencia cardíaca. El médico también puede recetarte otros medicamentos para el corazón, como nitratos para el dolor de pecho, una estatina para reducir el colesterol o medicamentos anticoagulantes para ayudar a prevenir los coágulos sanguíneos, junto con los medicamentos para la insuficiencia cardíaca. Tal vez el médico necesite ajustar las dosis con frecuencia, especialmente si acabas de comenzar a tomar un nuevo medicamento o si la afección está empeorando.';

