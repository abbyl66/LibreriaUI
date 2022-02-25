import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'biblioteca.dart';
import 'fragmento.dart';

void main() {
  runApp(BibliotecaUI());
}

class BibliotecaUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Biblioteca",
      theme: ThemeData(
        primaryColor: new Color(0xFFEACFBE),
      ),
      routes: {},
      home: BibliotecaDis(),
    );
  }
}

class BibliotecaDis extends StatefulWidget {
  @override
  _BibliotecaUI createState() {
    return _BibliotecaUI();
  }
}

//Clase para items(libros).
class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;
  final String description;

  const CardItem(
      {required this.urlImage,
      required this.title,
      required this.subtitle,
      required this.description});
}

class _BibliotecaUI extends State<BibliotecaDis> {

  //Items de lista horizontal.
  List<CardItem> libros = [
    CardItem(
        urlImage:
            "https://www.editorialhidra.com/media/hidra/images/edition-75665.jpg",
        title: 'El principe cruel',
        subtitle: 'Holly Black',
        description:
            'Jude tenía siete años cuando sus padres fueron asesinados y, junto con sus dos hermana, fue trasladada a la traicionera Corte Suprema del Reino Feérico. Diez años más tarde, lo único que Jude desea, a pesar de ser una mera mortal, es sentir que pertenece a ese lugar. Pero muchos de los habitantes desprecian a los humanos. Especialmente el Príncipe Cardan, el hijo más joven y perverso del Alto Rey. Para hacerse un hueco en la Corte, Jude deberá enfrentarse a él. Y afrontar las consecuencias. Como resultado, se verá envuelta en las intrigas y engaños del palacio, ademas de descubrir su propia habilidad para el derramamiento de sangre. Al tiempo que la guerra civil amenaza con arrasar las Cortes Feéricas, Jude se verá obligada a poner en riesgo su propia vida con una peligrosa alianza para tratar de salvar a sus hermanas, y al propio reino.'),
    CardItem(
        urlImage:
            "https://www.polifemo.com/static/img/portadas/_visd_0000JPG01JAA.jpg",
        title: 'El rey malvado',
        subtitle: 'Holly Black',
        description:
            'Tras descubrir que Oak es el legítimo heredero de Faerie, Jude hará lo posible por mantener a su hermano pequeño a salvo. Para ello, se ha convertido en el poder a la sombra del reinado de Cardan. Sin embargo, Cardan hace todo lo posible por humillarla y menospreciarla a pesar de que su fascinación por ella sigue intacta. Cuando es más que evidente para Jude que alguien cercano a ella pretende traicionarla, tratará de averiguar de quién se trata mientras lucha por mantener a raya sus sentimientos por Cardan.'),
    CardItem(
        urlImage:
            "https://infoliteraria.com/wp-content/uploads/2019/11/Nosotros-en-la-luna.jpg",
        title: 'Nosotros en la luna',
        subtitle: 'Alice Kellen',
        description:
            'Cuando Rhys y Ginger se conocen en las calles de la ciudad de la luz, no imaginan que sus vidas se unirán para siempre, a pesar de la distancia y de que no puedan ser más diferentes. Ella vive en Londres y a veces se siente tan perdida que se ha olvidado hasta de sus propios sueños. Él es incapaz de quedarse quieto en ningún lugar y cree saber quién es. Y cada noche su amistad crece entree-mails llenos de confidencias, dudas e inquietudes. Pero ¿qué ocurre cuando el paso del tiempo pone a prueba su relación?'),
    CardItem(
        urlImage:
            "https://images-na.ssl-images-amazon.com/images/I/61b0f3B3qAS.jpg",
        title: 'La historiadora',
        subtitle: 'Elizabeth Kostova',
        description:
            'Cuando Rhys y Ginger se conocen en las calles de la ciudad de la luz, no imaginan que sus vidas se unirán para siempre, a pesar de la distancia y de que no puedan ser más diferentes. Ella vive en Londres y a veces se siente tan perdida que se ha olvidado hasta de sus propios sueños. Él es incapaz de quedarse quieto en ningún lugar y cree saber quién es. Y cada noche su amistad crece entree-mails llenos de confidencias, dudas e inquietudes. Pero ¿qué ocurre cuando el paso del tiempo pone a prueba su relación?'),
    CardItem(
        urlImage:
            "https://imagessl1.casadellibro.com/a/l/t7/01/9788427216501.jpg",
        title: 'American Royals',
        subtitle: 'Katherine McGee',
        description:
            'La princesa Beatrice siempre ha aceptado su deber, pero empieza a acusar la presión a medida que se acerca el día de convertirse en la primera soberana de Estados Unidos. A nadie le importa Samantha, la princesa sustituta, salvo cuando incumple las normas; así que ella tampoco se interesa por nada… De haber nacido una generación antes, Jefferson, el gemelo de Samantha, hubiera sido el primero en la línea sucesoria, pero las nuevas leyes lo relegan al tercer lugar. Casi todo el país adora al príncipe, pero son dos chicas, muy distintas entre sí, quienes compiten por ganarse su corazón.'),
    CardItem(
        urlImage:
            "https://imagessl5.casadellibro.com/a/l/t7/35/9788408102335.jpg",
        title: 'Príncipe mecánico',
        subtitle: 'Cassandra Clare',
        description:
            'Consciente del singular poder de Tessa, El Magister sigue tras sus pasos, dispuesto a acabar con los Cazadores de Sombras. Tessa, junto al bello y autodestructivo Will y el dulce y devoto Jem, iniciará un viaje que les llevará a descubrir el secreto familiar que esconde la verdadera identidad de la chica.Segundo título de la exitosa trilogía que precede la historia de Cazadores de sombras y nos desvela sus orígenes.  '),
  ];

  //Items de lista vertical.
  List<CardItem> libros2 = [
    CardItem(urlImage: "https://espaciolibros.com//wp-content/uploads/2020/08/libros-recomendados-2020-elisabet-benavent-cuento-perfecto.jpg", title: "Un cuento Perfecto", subtitle: "Elísabet Benavent", description: "¿Qué sucede cuando descubres que el final de tu cuento no es como soñabas? -Érase una vez una mujer que lo tenía todo y un chico que no tenía nada. -Érase una vez una historia de amor entre el éxito y la duda. -Érase una vez un cuento perfecto. Elísabet Benavent, @BetaCoqueta, regresa al panorama de la literatura con una novela que explora el significado del éxito en la vida y reflexiona con ironía y humor acerca de las imposiciones sociales, la presión del grupo y la autoexigencia que, aunque cueste creerlo, no es sinónimo de felicidad.Los lectores han dicho"),
    CardItem(urlImage: "https://stylelovely.com/wp-content/uploads/libros-el_desorden_que_dejas.jpg", title: "El desorden que dejas", subtitle: "Carlos Montero", description: "La novela premiada es un intenso thriller psicológico protagonizado y relatado en primera persona por Raquel, una joven profesora de literatura en horas bajas que acepta una suplencia en un instituto de Novariz, el pueblo de donde, casualmente, procede su marido. En su primer día de trabajo, la joven se entera de que Elvira, su predecesora, se ha suicidado y al finalizar las clases encuentra en su bolso una nota que dice: «¿Y tú cuánto vas a tardar en matarte?». Decidida, Raquel intentará averiguar quién está detrás de esa amenaza, e inevitablemente se empezará a obsesionar con la antigua profesora. ¿Qué le ocurrió? ¿Qué la llevó a la depresión si los alumnos la adoraban? ¿Realmente se suicidó o alguien acabó con su vida? ¿Se está repitiendo el mismo patrón con ella? Y sobre todo, ¿por qué de repente algunos indicios apuntan al marido de Raquel? Una novela que arranca como una historia de acoso a una profesora para convertirse enseguida en un thriller perverso y apasionante. Una disección de la debilidad humana. De la culpa. De la fragilidad de las relaciones. Y de las mentiras y secretos sobre las que montamos nuestras vidas sin calibrar ni ser conscientes de las consecuencias."),
    CardItem(urlImage: "https://images-na.ssl-images-amazon.com/images/I/8108lS8HOKL.jpg", title: "Fuimos canciones", subtitle: "Elísabet Benavent", description: "Macarena vive en Madrid y es asistente de una influencer de moda. Macarena disfruta la vida a sorbos e intenta ser feliz. Macarena tiene dos amigas: Adriana y Jimena. Macarena guarda un secreto que deletrea a escondidas. Ese secreto tiene tres letras: L-E-O. Macarena no sabe que Leo está en Madrid. Macarena teme, Macarena sueña, Macarena ama, Macarena vuela... Y en este juego del destino intenta aceptar que lo que fuimos no puede ser lo que seremos... ¿O quizás sí?"),
    CardItem(urlImage: "https://i.blogs.es/a9ca3a/king/450_1000.jpg", title: "El bazar de los malos sueños", subtitle: "Stephen King", description: "Stephen King nos presenta en El bazar de los malos sueños una excepcional selección de relatos, algunos nuevos y otros revisados en profundidad. Cada uno viene precedido de su propia introducción, donde habla sobre sus orígenes y sobre los motivos que lo llevaron a escribirlo, incluyendo aspectos autobiográficos. Aunque han pasado ya treinta y cinco años desde que escribió su primera colección, Stephen King sigue deslumbrándonos con su maestría en el género. En esta ocasión trata temas como la moralidad, la vida después de la muerte, la culpa y lo que corregiríamos del pasado si pudiéramos ver el futuro."),
    CardItem(urlImage: "https://i.blogs.es/4d94df/mata/1366_2000.jpg", title: "Matar a un risueñor", subtitle: "Harper Lee", description: "Jean Louise Finch evoca una época de su infancia en Alabama, cuando su padre, Atticus, decidió defender ante los tribunales a un hombre negro acusado de violar a una mujer blanca. Novela de iniciación, Matar a un ruiseñor muestra una comunidad, la del sur de Estados Unidos durante la década de 1930, dominada por los prejuicios raciales, la desconfianza hacia lo diferente y la rigidez de los vínculos familiares y vecinales, así como por un sistema judicial sin apenas garantías para la población de color."),
    CardItem(urlImage: "https://i.blogs.es/d0e302/aten/1366_2000.jpg", title: "Comerciantes de atención...", subtitle: "Tim Wu", description: "Nos enfrentamos constantemente a un aluvión de anuncios, redes sociales y otros esfuerzos para captar nuestra atención. Esto no es el subproducto de innovaciones tecnológicas recientes, sino el resultado de más de un siglo de crecimiento y expansión en las industrias que se nutren de la atención humana. El modelo de negocio no ha cambiado: desvío gratuito a cambio de un momento de su consideración que se vende al anunciante con la oferta más alta. Pese a las revueltas que se han levantado contra el implacable asedio de nuestra conciencia, los comerciantes de atención siempre están desarrollando nuevas ideas, incluso cuando sus medios para entrar en nuestras cabezas están cambiando nuestra propia naturaleza (cognitiva, social, política...) en formas inimaginables hace una generación."),
    

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Fragmento(),
      appBar: AppBar(
        title: Container(
          width: 300,
          height: 35,
          margin: EdgeInsets.only(left: 5),
          child: FutureBuilder(
              builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Container(
              child: Center(
                child: Text(
                  "Busca un libro",
                  style: TextStyle(
                      color: Colors.black26, fontSize: 15, letterSpacing: 2),
                ),
              ),
            );
          }),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white70),
        ),
        backgroundColor: Color(0xFFE3DDD3),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white70,
              )),
          Padding(padding: EdgeInsets.only(right: 35))
        ],
      ),
      body: ListView(
        children: <Widget>[listaHorizontal(), Divider(), 
                Text("LIBROS DESTACADOS", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: 8, color: Color(0xFFC9C4BB) ), textAlign: TextAlign.center,), listaVertical(libros2)],
      ),
    );
  }

  //Primera lista: Horizontal.
  Widget listaHorizontal() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 230,
      child: ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, _) => SizedBox(
          width: 12,
        ),
        itemBuilder: (context, index) => portada(portada: libros[index]),
      ),
    );
  }

  //Segunda lista: Vertical.
  Widget listaVertical(List libros) {
    return Container(
        height: 335,
        margin: EdgeInsets.all(10.0),
        color: Colors.transparent,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column( 
              children: <Widget>[
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Biblioteca(portada: libros[0],))),
                        leading: Image.network(
                            libros[0].urlImage),
                        title: Text(
                          libros[0].title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(libros[0].subtitle),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Biblioteca(portada: libros[1],))),
                         leading: Image.network(libros[1].urlImage),
                  title: Text(libros[1].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(libros[1].subtitle),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Biblioteca(portada: libros[2],))),
                         leading: Image.network(libros[2].urlImage),
                  title: Text(libros[2].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(libros[2].subtitle),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Biblioteca(portada: libros[3],))),
                         leading: Image.network(libros[3].urlImage),
                  title: Text(libros[3].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(libros[3].subtitle),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Biblioteca(portada: libros[4],))),
                         leading: Image.network(libros[4].urlImage),
                  title: Text(libros[4].title, style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(libros[4].subtitle),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  margin: EdgeInsets.all(5),
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Biblioteca(portada: libros[5],))),
                         leading: Image.network(libros[5].urlImage),
                  title: Text(libros[5].title, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.justify,),
                  subtitle: Text(libros[5].subtitle),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }

  //UI de la lista horizontal.
  Widget portada({
    required CardItem portada,
  }) =>
      Container(
        width: 120,
        child: Column(
          children: [
            Expanded(
                child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Material(
                            child: Ink.image(
                          image: NetworkImage(portada.urlImage),
                          fit: BoxFit.cover,
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Biblioteca(
                                          portada: portada,
                                        ))),
                          ),
                        ))))),
            SizedBox(
              height: 4,
            ),
            Text(
              portada.title,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            Text(
              portada.subtitle,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      );
}
