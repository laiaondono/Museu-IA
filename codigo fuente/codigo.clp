;;ONTOLOGIA --------------------------------------------------------------------
(defclass Epoca "La clase Epoca hace referencia al periodo histórico en el que se encuadra la obra."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Este atributo indica el nombre de una epoca.
    (single-slot nombreEpoca
        (type STRING)
        (create-accessor read-write))
)

(defclass Tematica "La clase Tematica hace referencia a las palabras claves con las que se puede clasificar la obra."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Este atributo indica la palabra clave de una tematica.
    (single-slot palabraClave
        (type STRING)
        (create-accessor read-write))
)

(defclass Visitante "La clase Visitante almacena los datos necesarios (datos personales y preferencias) que permiten generar una serie de obras recomendadas para éste. Se generará una instancia para cada visitante con los datos que el propio usuario introduzca."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Esta relación indica que corrientes prefiere un visitante.
    (multislot prefiereCorriente
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Esta relación indica que epocas prefiere un visitante.
    (multislot prefiereEpoca
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Esta relación indica que tematicas prefiere un visitante.
    (multislot prefiereTematica
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Este atributo indica el conocimiento sobre pintura de un visitante.
    (single-slot conocimiento
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica el numero de personas de un grupo visitante.
    (single-slot numPersonasGrupo
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica el numero de dias que un visitante dedicará a ver las obras.
    (single-slot numDiasVisita
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica el tipo de visitante (individual, grupo o familia).
    (single-slot tipo
        (type STRING)
        (create-accessor read-write))
    ;;; Este atributo indica el las horas diarias que un visitante dedicara a su visita para ver las obras.
    (single-slot duracionVisita
        (type INTEGER)
        (create-accessor read-write))
    ;;; Esta relación indica que pintores prefiere un visitante.
    (multislot prefierePintor
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Pintor "La clase Pintor hace referencia al autor que ha pintado la obra."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Este atributo indica el año de inicio de su actividad como pintor.
    (single-slot inicioEpoca
        (type INTEGER)
        (create-accessor read-write))
    ;;; Esta relación indica a que epoca corrresponde una obra y pintor.
    (multislot correspondeA
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Este atributo indica el nombre de un pintor.
    (single-slot nombrePintor
        (type STRING)
        (create-accessor read-write))
    ;;; Este atributo indica el año de finalizacion de su actividad como pintor.
    (single-slot finalEpoca
        (type INTEGER)
        (create-accessor read-write))
    ;;; Esta relación indica a que corriente pertenece una obra y pintor.
    (multislot perteneceA
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Este atributo indica la nacionalidad del pintor.
    (single-slot nacionalidad
        (type STRING)
        (create-accessor read-write))
)

(defclass Obra "La clase Obra incluye todos los atributos propios de una pintura (características de la pieza, pintor, epoca, corriente y temática). También contiene el número de la sala en la que se encuentra y un atributo interes, en el cual guardaremos una puntuación del interes que, con los datos del visitante, creemos que éste tiene por ver dicha obra."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Esta relación indica que pintor ha pintado una obra.
    (single-slot pintadaPor
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Esta relación indica a que corriente pertenece una obra y pintor.
    (multislot perteneceA
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Esta relación indica a que epoca corrresponde una obra y pintor.
    (multislot correspondeA
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Este atributo indica la altura de una obra.
    (single-slot altura
        (type FLOAT)
        (create-accessor read-write))
    ;;; Esta relación indica en que temática se clasifica una obra.
    (multislot clasificadaEn
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Este atributo indica el interes que tiene el visitante sobre la obra.
    (single-slot interes
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica el nombre de una obra.
    (single-slot nombreObra
        (type STRING)
        (create-accessor read-write))
    ;;; Este atributo indica la complejidad de pintar una obra.
    (single-slot complejidad
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica el numero de sala donde se encuentra una obra.
    (single-slot numSala
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica el año de creacion de una obra.
    (single-slot anoCreacion
        (type INTEGER)
        (create-accessor read-write))
    ;;; Este atributo indica la anchura de una obra.
    (single-slot anchura
        (type FLOAT)
        (create-accessor read-write))
    ;;; Este atributo indica la relevancia de una obra.
    (single-slot relevancia
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Corriente "La clase Corriente hace referencia al estilo/escuela/corriente/periodo pictorico de la obra."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Este atributo indica el nombre de una corriente.
    (single-slot nombreCorriente
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([Autorretrato_con_oreja_vendada] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Impresionismo])
         (altura  60)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Autorretrato con oreja vendada")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1889)
         (anchura  50)
         (relevancia  2)
    )

    ([Amanecer_en_la_Riera_de_Sant_Joan] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  54)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "Amanecer en la Riera de Sant Joan")
         (complejidad  3)
         (numSala  2)
         (anoCreacion  1903)
         (anchura  "45,5")
         (relevancia  3)
    )

    ([Epoca_Cubismo] of Epoca
         (nombreEpoca  "Cubismo")
    )

    ([Sueño_causado_por_el_vuelo_de_una_abeja_alrededor_de_una_granada_un_segundo_antes_de_despertar] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  51)
         (clasificadaEn  [Simbolica])
         (interes  0)
         (nombreObra  "Sueño causado por el vuelo de una abeja alrededor de una granada un segundo antes de despertar")
         (complejidad  1)
         (numSala  3)
         (anoCreacion  1944)
         (anchura  41)
         (relevancia  2)
    )

    ([El_grito] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  91)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "El grito")
         (complejidad  1)
         (numSala  1)
         (anoCreacion  1893)
         (anchura  74)
         (relevancia  1)
    )

    ([Renacimiento] of Corriente
         (nombreCorriente  "Renacimiento")
    )

    ([El_dormitori_de_Van_Gogh_a_Arle] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  72)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "El dormitori de Van Gogh a Arle")
         (complejidad  3)
         (numSala  5)
         (anoCreacion  1888)
         (anchura  90)
         (relevancia  2)
    )

    ([Alegorica] of Tematica
         (palabraClave  "Alegorica")
    )

    ([Japonismo] of Corriente
         (nombreCorriente  "Japonismo")
    )

    ([Maternidad] of Obra
         (pintadaPor  [Joan_Miro])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  92)
         (clasificadaEn  [Simbolica])
         (interes  0)
         (nombreObra  "Maternidad")
         (complejidad  3)
         (numSala  5)
         (anoCreacion  1924)
         (anchura  73)
         (relevancia  1)
    )

    ([Desnudo] of Tematica
         (palabraClave  "Desnudo")
    )

    ([Salvador_Dali] of Pintor
         (inicioEpoca  1917)
         (correspondeA  [Epoca_Surrealismo])
         (nombrePintor  "Salvador Dali")
         (finalEpoca  1988)
         (perteneceA  [Surrealismo])
         (nacionalidad  "España")
    )

    ([Historica] of Tematica
         (palabraClave  "Historica")
    )

    ([El_gran_masturbador] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  110)
         (clasificadaEn  [Simbolica])
         (interes  0)
         (nombreObra  "El gran masturbador")
         (complejidad  1)
         (numSala  3)
         (anoCreacion  1929)
         (anchura  150)
         (relevancia  1)
    )

    ([Naturaleza_muerta] of Tematica
         (palabraClave  "Naturaleza muerta")
    )

    ([Leda] of Obra
         (pintadaPor  [Leonardo_da_Vinci])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  130)
         (clasificadaEn  [Mitologia])
         (interes  0)
         (nombreObra  "Leda")
         (complejidad  1)
         (numSala  4)
         (anoCreacion  1510)
         (anchura  "77,5")
         (relevancia  3)
    )

    ([Gato_cogiendo_un_pajaro] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  100)
         (clasificadaEn  [Animales])
         (interes  0)
         (nombreObra  "Gato cogiendo un pajaro")
         (complejidad  3)
         (numSala  1)
         (anoCreacion  1939)
         (anchura  81)
         (relevancia  2)
    )

    ([Anibal_vencedor_contempla_Italia_desde_los_Alpes] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  87)
         (clasificadaEn  [Historica])
         (interes  0)
         (nombreObra  "Anibal vencedor contempla Italia desde los Alpes")
         (complejidad  1)
         (numSala  3)
         (anoCreacion  1771)
         (anchura  "131,5")
         (relevancia  3)
    )

    ([El_3_de_mayo_en_Madrid] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  347)
         (clasificadaEn  [Historica])
         (interes  0)
         (nombreObra  "El 3 de mayo en Madrid")
         (complejidad  1)
         (numSala  2)
         (anoCreacion  1814)
         (anchura  268)
         (relevancia  1)
    )

    ([Autorretrato_con_un_sombrero_de_paja] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  "40,6")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Autorretrato con un sombrero de paja")
         (complejidad  1)
         (numSala  5)
         (anoCreacion  1887)
         (anchura  "31,8")
         (relevancia  1)
    )

    ([Paraiso] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  "74,5")
         (clasificadaEn  [Religion])
         (interes  0)
         (nombreObra  "Paraiso")
         (complejidad  2)
         (numSala  4)
         (anoCreacion  1575)
         (anchura  30)
         (relevancia  3)
    )

    ([El_viejo_guitarrista_ciego] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  "82,5")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "El viejo guitarrista ciego")
         (complejidad  3)
         (numSala  1)
         (anoCreacion  1903)
         (anchura  "121,5")
         (relevancia  2)
    )

    ([La_Gioconda] of Obra
         (pintadaPor  [Leonardo_da_Vinci])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  77)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "La Gioconda")
         (complejidad  2)
         (numSala  3)
         (anoCreacion  1519)
         (anchura  53)
         (relevancia  1)
    )

    ([Manana] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Realismo])
         (correspondeA  [Epoca_Realismo])
         (altura  "103,5")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Mañana")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1884)
         (anchura  "96,5")
         (relevancia  3)
    )

    ([Joan_Miro] of Pintor
         (inicioEpoca  1912)
         (correspondeA  [Epoca_Surrealismo])
         (nombrePintor  "Joan Miro")
         (finalEpoca  1983)
         (perteneceA  [Surrealismo])
         (nacionalidad  "España")
    )

    ([La_persistencia_de_la_memoria] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  24,1)
         (clasificadaEn  [Paisaje] [Simbolica])
         (interes  0)
         (nombreObra  "La persistencia de la memoria")
         (complejidad  3)
         (numSala  1)
         (anoCreacion  1931)
         (anchura  33.0)
         (relevancia  1)
    )

    ([Leonardo_da_Vinci] of Pintor
         (inicioEpoca  1474)
         (correspondeA  [Epoca_Renacimiento])
         (nombrePintor  "Leonardo da Vinci")
         (finalEpoca  1519)
         (perteneceA  [Renacimiento])
         (nacionalidad  "Italia")
    )

    ([Epoca_Medieval] of Epoca
         (nombreEpoca  "Medieval")
    )

    ([Figura_en_la_ventana] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Realismo])
         (correspondeA  [Epoca_Realismo])
         (altura  102)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Figura en la ventana")
         (complejidad  2)
         (numSala  1)
         (anoCreacion  1925)
         (anchura  75)
         (relevancia  1)
    )

    ([El_Beso] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  81)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "El beso")
         (complejidad  3)
         (numSala  3)
         (anoCreacion  1897)
         (anchura  99)
         (relevancia  2)
    )

    ([La_Creacion] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  77)
         (clasificadaEn  [Paisaje] [Religion])
         (interes  0)
         (nombreObra  "La Creacion")
         (complejidad  1)
         (numSala  2)
         (anoCreacion  1515)
         (anchura  188)
         (relevancia  2)
    )

    ([El_somriure_de_les_ales_flamejants] of Obra
         (pintadaPor  [Joan_Miro])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  35)
         (clasificadaEn  [Abstracta])
         (interes  0)
         (nombreObra  "El somriure de les ales flamejants")
         (complejidad  2)
         (numSala  1)
         (anoCreacion  1953)
         (anchura  46)
         (relevancia  1)
    )

    ([Epoca_Expresionismo] of Epoca
         (nombreEpoca  "Expresionismo")
    )

    ([La_virgen_de_las_rocas] of Obra
         (pintadaPor  [Leonardo_da_Vinci])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  "189,5")
         (clasificadaEn  [Religion])
         (interes  0)
         (nombreObra  "La virgen de las rocas")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1505)
         (anchura  120)
         (relevancia  2)
    )

    ([Epoca_Romanticismo] of Epoca
         (nombreEpoca  "Romanticismo")
    )

    ([Hombre_y_mujer] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  "60,2")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Hombre y mujer")
         (complejidad  2)
         (numSala  1)
         (anoCreacion  1898)
         (anchura  100)
         (relevancia  1)
    )

    ([Epoca_contemporanea] of Epoca
         (nombreEpoca  "Contemporanea")
    )

    ([Fernando_VII] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  "225,5")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Fernando VII")
         (complejidad  1)
         (numSala  2)
         (anoCreacion  1814)
         (anchura  "124,5")
         (relevancia  2)
    )

    ([Expresionismo] of Corriente
         (nombreCorriente  "Expresionismo")
    )

    ([La_noche_estrellada] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  73)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "La noche estrellada")
         (complejidad  2)
         (numSala  3)
         (anoCreacion  1889)
         (anchura  92)
         (relevancia  1)
    )

    ([Una_habitacion_azul] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  "50,8")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Una habitacion azul")
         (complejidad  2)
         (numSala  2)
         (anoCreacion  1901)
         (anchura  62)
         (relevancia  3)
    )

    ([Infierno] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  "86,5")
         (clasificadaEn  [Religion])
         (interes  0)
         (nombreObra  "Infierno")
         (complejidad  2)
         (numSala  3)
         (anoCreacion  1504)
         (anchura  "39,5")
         (relevancia  3)
    )

    ([Pablo_Picasso] of Pintor
         (inicioEpoca  1895)
         (correspondeA  [Epoca_Postimpresionismo] [Epoca_Cubismo] [Epoca_Surrealismo])
         (nombrePintor  "Pablo Picasso")
         (finalEpoca  1973)
         (perteneceA  [Postimpresionismo] [Cubismo] [Surrealismo])
         (nacionalidad  "España")
    )

    ([Corrida_de_toros] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Surrealismo] [Cubismo])
         (correspondeA  [Epoca_Surrealismo] [Epoca_Cubismo])
         (altura  "85,5")
         (clasificadaEn  [Animales])
         (interes  0)
         (nombreObra  "Corrida de toros")
         (complejidad  2)
         (numSala  3)
         (anoCreacion  1934)
         (anchura  "92,5")
         (relevancia  3)
    )

    ([El_Bosco] of Pintor
         (inicioEpoca  1480)
         (correspondeA  [Renacimiento])
         (nombrePintor  "El Bosco")
         (finalEpoca  1516)
         (perteneceA  [Renacimiento])
         (nacionalidad  "Holanda")
    )

    ([Epoca_Renacimiento] of Epoca
         (nombreEpoca  "Renacimiento")
    )

    ([Subida_del_Bendito] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  "86,5")
         (clasificadaEn  [Religion])
         (interes  0)
         (nombreObra  "Subida del Bendito")
         (complejidad  1)
         (numSala  2)
         (anoCreacion  1504)
         (anchura  "39,5")
         (relevancia  2)
    )

    ([Romanticismo] of Corriente
         (nombreCorriente  "Romanticismo")
    )

    ([Epoca_Surrealismo] of Epoca
         (nombreEpoca  "Surrealismo")
    )

    ([Surrealismo] of Corriente
         (nombreCorriente  "Surrealismo")
    )

    ([Vista_sobre_el_Rover_en_St._Cloud] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Impresionismo])
         (correspondeA  [Epoca_Impresionismo])
         (altura  "46,5")
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "Vista sobre el Rover en St. Cloud")
         (complejidad  2)
         (numSala  3)
         (anoCreacion  1890)
         (anchura  38)
         (relevancia  3)
    )

    ([Medieval] of Corriente
         (nombreCorriente  "Medieval")
    )

    ([Impresionismo] of Corriente
         (nombreCorriente  "Impresionismo")
    )

    ([Irises] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  71)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "Irises")
         (complejidad  2)
         (numSala  4)
         (anoCreacion  1889)
         (anchura  93)
         (relevancia  2)
    )

    ([La_Masia] of Obra
         (pintadaPor  [Joan_Miro])
         (perteneceA  [Cubismo] [Primitivismo])
         (correspondeA  [Epoca_Cubismo])
         (altura  132)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "La Masia")
         (complejidad  1)
         (numSala  3)
         (anoCreacion  1922)
         (anchura  147)
         (relevancia  2)
    )

    ([Muerte_en_la_habitacion_del_enfermo] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  160)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Muerte en la habitacion del enfermo")
         (complejidad  2)
         (numSala  4)
         (anoCreacion  1893)
         (anchura  "134,5")
         (relevancia  2)
    )

    ([El_Patio_de_Port_Lligat] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  77)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "El Patio de Port Lligat")
         (complejidad  3)
         (numSala  3)
         (anoCreacion  1968)
         (anchura  "61,5")
         (relevancia  3)
    )

    ([Baile_de_la_vida] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  126)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Baile de la vida")
         (complejidad  2)
         (numSala  4)
         (anoCreacion  1900)
         (anchura  "190,5")
         (relevancia  3)
    )

    ([Un_gallo] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  "77,5")
         (clasificadaEn  [Animales])
         (interes  0)
         (nombreObra  "Un gallo")
         (complejidad  3)
         (numSala  4)
         (anoCreacion  1988)
         (anchura  54)
         (relevancia  3)
    )

    ([Neoimpresionismo] of Corriente
         (nombreCorriente  "Neoimpresionismo")
    )

    ([Religion] of Tematica
         (palabraClave  "Religion")
    )

    ([Cubismo] of Corriente
         (nombreCorriente  "Cubismo")
    )

    ([Postimpresionismo] of Corriente
         (nombreCorriente  "Postimpresionismo")
    )

    ([Tieta] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Impresionismo])
         (correspondeA  [Epoca_Impresionismo])
         (altura  "52,7")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Tieta")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1920)
         (anchura  "41,3")
         (relevancia  3)
    )

    ([Hombre_de_Vitruvio] of Obra
         (pintadaPor  [Leonardo_da_Vinci])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  "34,3")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Hombre de Vitruvio")
         (complejidad  2)
         (numSala  2)
         (anoCreacion  1492)
         (anchura  "24,5")
         (relevancia  1)
    )

    ([Las_senoritas_de_Avignon] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Cubismo])
         (correspondeA  [Epoca_Cubismo])
         (altura  "243,7")
         (clasificadaEn  [Desnudo])
         (interes  0)
         (nombreObra  "Las señoritas de Avignon")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1907)
         (anchura  "233,7")
         (relevancia  1)
    )

    ([Epoca_Realismo] of Epoca
         (nombreEpoca  "Realismo")
    )

    ([Realismo] of Corriente
         (nombreCorriente  "Realismo")
    )

    ([Epoca_Postimpresionismo] of Epoca
         (nombreEpoca  "Postimpresionismo")
    )

    ([La_maja_vestida] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  188)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "La maja vestida")
         (complejidad  1)
         (numSala  5)
         (anoCreacion  1807)
         (anchura  "94.7")
         (relevancia  1)
    )

    ([Tarde_en_la_calle_Karl_Johan] of Obra
         (pintadaPor  [Edvard_Munch])
         (perteneceA  [Expresionismo])
         (correspondeA  [Epoca_Expresionismo])
         (altura  "84,5")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Tarde en la calle Karl Johan")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1892)
         (anchura  121)
         (relevancia  2)
    )

    ([El_campo_labrado] of Obra
         (pintadaPor  [Joan_Miro])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  66)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "El campo labrado")
         (complejidad  1)
         (numSala  4)
         (anoCreacion  1923)
         (anchura  "92,7")
         (relevancia  1)
    )

    ([La_ultima_cena] of Obra
         (pintadaPor  [Leonardo_da_Vinci])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  460)
         (clasificadaEn  [Religion])
         (interes  0)
         (nombreObra  "La ultima cena")
         (complejidad  1)
         (numSala  1)
         (anoCreacion  1498)
         (anchura  880)
         (relevancia  1)
    )

    ([Francisco_de_Goya] of Pintor
         (inicioEpoca  1765)
         (correspondeA  [Epoca_Romanticismo])
         (nombrePintor  "Francisco de Goya")
         (finalEpoca  1828)
         (perteneceA  [Romanticismo])
         (nacionalidad  "España")
    )

    ([Animales] of Tematica
         (palabraClave  "Animales")
    )

    ([Triptico_del_Jardin_de_las_delicias] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  "205.5")
         (clasificadaEn  [Religion] [Paisaje])
         (interes  0)
         (nombreObra  "Triptico del Jardin de las delicias")
         (complejidad  1)
         (numSala  5)
         (anoCreacion  1500)
         (anchura  "384.9")
         (relevancia  1)
    )

    ([Adoracion_del_nino] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Renacimiento])
         (correspondeA  [Epoca_Medieval] [Epoca_Renacimiento])
         (altura  66)
         (clasificadaEn  [Religion])
         (interes  0)
         (nombreObra  "Adoración del niño")
         (complejidad  1)
         (numSala  1)
         (anoCreacion  1568)
         (anchura  43)
         (relevancia  3)
    )

    ([Un_artista] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  100)
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Un artista")
         (complejidad  2)
         (numSala  5)
         (anoCreacion  1963)
         (anchura  73)
         (relevancia  2)
    )

    ([Campo_de_trigo_con_cipreses] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_contemporanea])
         (altura  93)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "Campo de trigo con cipreses")
         (complejidad  3)
         (numSala  1)
         (anoCreacion  1889)
         (anchura  72)
         (relevancia  1)
    )

    ([Puntillismo] of Corriente
         (nombreCorriente  "Puntillismo")
    )

    ([Mitologia] of Tematica
         (palabraClave  "Mitologia")
    )

    ([El_bell_ocell_que_desxifra_el_desconegut_a_una_parella_d'enamorats] of Obra
         (pintadaPor  [Joan_Miro])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  "52,5")
         (clasificadaEn  [Abstracta])
         (interes  0)
         (nombreObra  "El bell ocell que desxifra el desconegut a una parella d'enamorats")
         (complejidad  2)
         (numSala  1)
         (anoCreacion  1941)
         (anchura  47)
         (relevancia  2)
    )

    ([Simbolica] of Tematica
         (palabraClave  "Simbolica")
    )

    ([Paisaje] of Tematica
         (palabraClave  "Paisaje")
    )

    ([El_sueno_de_la_razon_produce_monstruos] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  "21,8")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "El sueño de la razón produce monstruos")
         (complejidad  3)
         (numSala  4)
         (anoCreacion  1799)
         (anchura  "15,2")
         (relevancia  3)
    )

    ([Fiesta_en_Figueres] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  "27,5")
         (clasificadaEn  [Simbolica])
         (interes  0)
         (nombreObra  "Fiesta en Figueres")
         (complejidad  3)
         (numSala  4)
         (anoCreacion  1916)
         (anchura  "19,5")
         (relevancia  3)
    )

    ([Bailarin] of Obra
         (pintadaPor  [Joan_Miro])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  "115,5")
         (clasificadaEn  [Simbolica])
         (interes  0)
         (nombreObra  "Bailarin")
         (complejidad  3)
         (numSala  2)
         (anoCreacion  1925)
         (anchura  "88,5")
         (relevancia  1)
    )

    ([Autorretrato] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  "45,8")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "Autorretrato")
         (complejidad  1)
         (numSala  1)
         (anoCreacion  1775)
         (anchura  "35,6")
         (relevancia  2)
    )

    ([La_torre_de_los_enigmas] of Obra
         (pintadaPor  [Salvador_Dali])
         (perteneceA  [Surrealismo])
         (correspondeA  [Epoca_Surrealismo])
         (altura  35)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "La torre de los enigmas")
         (complejidad  2)
         (numSala  2)
         (anoCreacion  1981)
         (anchura  27)
         (relevancia  3)
    )

    ([Saturno_devorando_a_un_hijo] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  87)
         (clasificadaEn  [Mitologia])
         (interes  0)
         (nombreObra  "Saturno devorando a un hijo")
         (complejidad  1)
         (numSala  4)
         (anoCreacion  1638)
         (anchura  "182.5")
         (relevancia  1)
    )

    ([La_extraccion_de_la_piedra_de_la_locura] of Obra
         (pintadaPor  [El_Bosco])
         (perteneceA  [Medieval] [Renacimiento])
         (correspondeA  [Epoca_Renacimiento])
         (altura  34)
         (clasificadaEn  [Paisaje] [Religion])
         (interes  0)
         (nombreObra  "La extraccion de la piedra de la locura")
         (complejidad  3)
         (numSala  2)
         (anoCreacion  1505)
         (anchura  48)
         (relevancia  3)
    )

    ([Vincent_van_Gogh] of Pintor
         (inicioEpoca  1885)
         (correspondeA  [Epoca_Postimpresionismo])
         (nombrePintor  "Vincent van Gogh")
         (finalEpoca  1890)
         (perteneceA  [Puntillismo] [Neoimpresionismo] [Postimpresionismo])
         (nacionalidad  "Holanda")
    )

    ([La_maja_desnuda] of Obra
         (pintadaPor  [Francisco_de_Goya])
         (perteneceA  [Romanticismo])
         (correspondeA  [Epoca_Romanticismo])
         (altura  "190.6")
         (clasificadaEn  [Retrato])
         (interes  0)
         (nombreObra  "La maja desnuda")
         (complejidad  1)
         (numSala  4)
         (anoCreacion  1800)
         (anchura  "97.3")
         (relevancia  1)
    )

    ([Los_Girasoles] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_contemporanea])
         (altura  91)
         (clasificadaEn  [Naturaleza_muerta])
         (interes  0)
         (nombreObra  "Los girasoles")
         (complejidad  3)
         (numSala  3)
         (anoCreacion  1888)
         (anchura  73)
         (relevancia  1)
    )

    ([Retrato] of Tematica
         (palabraClave  "Retrato")
    )

    ([Edvard_Munch] of Pintor
         (inicioEpoca  1884)
         (correspondeA  [Realismo])
         (nombrePintor  "Edvard Munch")
         (finalEpoca  1943)
         (perteneceA  [Expresionismo])
         (nacionalidad  "Noruega")
    )

    ([Guernica] of Obra
         (pintadaPor  [Pablo_Picasso])
         (perteneceA  [Cubismo] [Surrealismo])
         (correspondeA  [Epoca_Cubismo] [Epoca_Surrealismo])
         (altura  349)
         (clasificadaEn  [Alegorica] [Simbolica])
         (interes  0)
         (nombreObra  "Guernica")
         (complejidad  1)
         (numSala  4)
         (anoCreacion  1937)
         (anchura  776)
         (relevancia  1)
    )

    ([Epoca_Impresionismo] of Epoca
         (nombreEpoca  "Impresionismo")
    )

    ([Primitivismo] of Corriente
         (nombreCorriente  "Primitivismo")
    )

    ([Ramas_con_Flor_de_Almendro] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Japonismo])
         (correspondeA  [Epoca_Realismo])
         (altura  92)
         (clasificadaEn  [Naturaleza_muerta])
         (interes  0)
         (nombreObra  "Ramas con Flor de Almendro")
         (complejidad  2)
         (numSala  2)
         (anoCreacion  1890)
         (anchura  "73,5")
         (relevancia  1)
    )

    ([Cafe_Terrace_de_Noche] of Obra
         (pintadaPor  [Vincent_van_Gogh])
         (perteneceA  [Postimpresionismo])
         (correspondeA  [Epoca_Postimpresionismo])
         (altura  81)
         (clasificadaEn  [Paisaje])
         (interes  0)
         (nombreObra  "Cafe Terrace de Noche")
         (complejidad  2)
         (numSala  3)
         (anoCreacion  1888)
         (anchura  "65,5")
         (relevancia  2)
    )

    ([Abstracta] of Tematica
         (palabraClave  "Abstracta")
    )

)

;;CODIGO --------------------------------------------------------------------

;;MODULOS ------------------------------------------------------------------

(defmodule MAIN (export ?ALL))

(defmodule RECOGER_DATOS
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule PROCESAR_DATOS
    (import MAIN ?ALL)
    (import RECOGER_DATOS deftemplate ?ALL)
    (export ?ALL)
)

(defmodule MOSTRAR_RESULTADO
    (import MAIN ?ALL)
    (export ?ALL)
)

;;MODULO MAIN --------------------------------------------------------------

(defrule MAIN::iniciar_visita "Iniciar Visita"
    (declare (salience 20))
    =>
    (printout t"A continuación pasaremos a recoger los datos y preferencias del visitante" crlf)
    (focus RECOGER_DATOS)
)

(deftemplate MAIN::obras_seleccionadas
    (multislot obras (type INSTANCE))
)

(deftemplate MAIN::obras_ordenadas
    (multislot obras (type INSTANCE))
)

(deftemplate MAIN::obras_diarias
    (multislot numObrasDiarias (type INTEGER))
)

(defglobal ?*mostrar_ruta* = FALSE)

(deffunction MAIN::leer_respuesta (?pregunta $?valores)
   (printout t ?pregunta " Introduce uno de los siguientes valores: " crlf)
   (progn$ (?valor ?valores) 
        (printout t ?valor crlf)
    )
   (bind ?respuesta (read))
   (lowcase ?respuesta)
   (while (not (member ?respuesta ?valores)) do
      (printout t ?pregunta crlf)
      (progn$ (?valor ?valores)
        (printout t ?valor crlf)
      )
      (bind ?respuesta (read))
    )
   ?respuesta
)

(deffunction MAIN::leer_multirespuesta (?pregunta $?valores)
   (printout t ?pregunta ". Introduce alguno/s de los siguientes valores: " crlf)
   (progn$ (?valor ?valores) 
        (printout t ?valor crlf)
    )
   (printout t " Introduce un valor por linea. Cuando ya no desees más valores introduce -1. " crlf)

   (bind $?respuestas (create$ ))

   (bind ?respuesta (readline))
   (while (not (eq (str-cat ?respuesta) "-1"))
        (while (not (member (str-cat ?respuesta) ?valores)) do
          (printout t ?pregunta ":" crlf)
          (progn$ (?valor ?valores)
            (printout t ?valor crlf)
          )
          (bind ?respuesta (readline))
        )
        (bind $?respuestas (insert$ $?respuestas (+ (length$ $?respuestas) 1) (str-cat ?respuesta)))
        (bind ?respuesta (readline))
   )
   $?respuestas
)

(deffunction MAIN::obra_maximo_interes ($?obras)
    (bind ?max -1)
    (bind ?obra_max_interes nil)
    (progn$ (?obra $?obras)
        (bind ?interes_obra (send ?obra get-interes))
        (if (> ?interes_obra ?max)
            then 
            (bind ?max ?interes_obra)
            (bind ?obra_max_interes ?obra)
        )
    )
    ?obra_max_interes
)

(deffunction MAIN::obra_min_sala ($?obras)
    (bind ?min 10)
    (bind ?obra_min_numSala nil)
    (progn$ (?obra $?obras)
        (bind ?numSala_obra (send ?obra get-numSala))
        (if (< ?numSala_obra ?min)
            then 
            (bind ?min ?numSala_obra)
            (bind ?obra_min_numSala ?obra)
        )
    )
    ?obra_min_numSala
)

(deffunction MAIN::calcula_num_obras (?visitante $?obras)
    (bind ?obras_diarias (assert (obras_diarias)))
    (bind $?obras_diarias_aux (create$ ))

    (bind ?tipo_visitante (send ?visitante get-tipo))
    (bind ?num_visitante (send ?visitante get-numPersonasGrupo))
    (bind ?conocimiento (send ?visitante get-conocimiento))

    (bind ?num_dias (send ?visitante get-numDiasVisita))
    (bind ?horas_dia (send ?visitante get-duracionVisita))
    (bind ?minutos_dia (* ?horas_dia 60))

    (bind ?minutos_totales (* (* ?horas_dia 60) ?num_dias))
    (bind ?num_obras 0)
    (bind ?num_obras_aux 0)

    (bind ?i 1)
    (while (and (<= ?i (length$ $?obras)) (> ?minutos_totales 0)) do
        (bind ?obra (nth$ ?i $?obras))
        (bind ?relevancia (send ?obra get-relevancia))
        (bind ?complejidad (send ?obra get-complejidad))
        (bind ?tiempo_obra (- 15 (* ?relevancia ?complejidad)))

        (if (< ?conocimiento 3) then
            (bind ?tiempo_obra (- ?tiempo_obra 5))
        )
        (if (eq ?tipo_visitante "Familia") then
            (bind ?tiempo_obra (+ ?tiempo_obra ?num_visitante))
        )
        (if (eq ?tipo_visitante "Grupo") then
            (bind ?tiempo_obra (+ ?tiempo_obra (/ ?num_visitante 2)))
        )
        (if (< ?tiempo_obra 1) then 
            (bind ?tiempo_obra 1)
        )
        (bind ?minutos_totales (- ?minutos_totales ?tiempo_obra))
        (bind ?minutos_dia (- ?minutos_dia ?tiempo_obra))

        (bind ?i (+ ?i 1))
        (bind ?num_obras (+ ?num_obras 1))
        (bind ?num_obras_aux (+ ?num_obras_aux 1))

        (if (< ?minutos_dia 0) then 
            (bind ?minutos_dia (* ?horas_dia 60))
            (bind $?obras_diarias_aux (insert$ $?obras_diarias_aux (+ (length$ $?obras_diarias_aux) 1) ?num_obras_aux))
            (bind ?num_obras_aux 0)
        )
    )

    (modify ?obras_diarias (numObrasDiarias ?obras_diarias_aux))
    ?num_obras
)

(defmessage-handler MAIN::Visitante imprimir ()
    (printout t crlf "Estos son los datos introducidos del visitante:" crlf)
    (format t "Tipo: %s" ?self:tipo)
    (printout t crlf)
    (format t "DiasVisita: %d" ?self:numDiasVisita)
    (printout t crlf)
    (format t "Horas por dia: %d" ?self:duracionVisita)
    (printout t crlf)
    (format t "PersonasGrupo: %d" ?self:numPersonasGrupo)
    (printout t crlf)
    (format t "Conocimiento: %d" ?self:conocimiento)
    (printout t crlf)
    (printout t "Pintores preferidos: ")
    (progn$ (?curr_pintor ?self:prefierePintor)
        (printout t (send ?curr_pintor get-nombrePintor) "     ")
    )
    (printout t crlf)
    (printout t "Tematicas preferidas: ")
    (progn$ (?curr_tematica ?self:prefiereTematica)
        (printout t (send ?curr_tematica get-palabraClave) "     ")
    )
    (printout t crlf)
    (printout t "Epocas preferidas: ")
    (progn$ (?curr_epoca ?self:prefiereEpoca)
        (printout t (send ?curr_epoca get-nombreEpoca) "     ")
    )
    (printout t crlf)
    (printout t "Corrientes preferidas: ")
    (progn$ (?curr_corriente ?self:prefiereCorriente)
        (printout t (send ?curr_corriente get-nombreCorriente) "     ")
    )
    (printout t crlf)
)

;;MODULO RECOGER_DATOS ----------------------------------------------------

(defrule RECOGER_DATOS::recoger_tipo_visitante "Recoger el tipo del visitante"
    (declare (salience 10))
    =>
    (bind $?tipos-visitante (create$ Individual Familia Grupo))

    (bind ?tipo (leer_respuesta "¿Que tipo de visitante eres?" $?tipos-visitante))
    (make-instance Visitante1 of Visitante (tipo (str-cat ?tipo)) (numPersonasGrupo 1))
)

(defrule RECOGER_DATOS::recoger_numPersonasGrupo "Recoger el numPersonasGrupo del visitante"
    ?visitante <- (object (is-a Visitante))
    (test (not (eq (send ?visitante get-tipo) "Individual"))) 
    =>
    (printout t "¿Cuantas personas sois en el grupo?" crlf)
    (bind ?respuesta (read))
    (while (not (integerp ?respuesta)) do
        (printout t "¿Cuantas personas sois en el grupo?" crlf)
        (bind ?respuesta (read))
    )
    (send ?visitante put-numPersonasGrupo ?respuesta)
    
)

(defrule RECOGER_DATOS::recoger_numDiasVisita "Recoger el numDias del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (printout t "¿Durante cuantos dias visitareis el museo?" crlf)
    (bind ?respuesta (read))
    (while (not (integerp ?respuesta)) do
        (printout t "¿Durante cuantos dias visitareis el museo?" crlf)
        (bind ?respuesta (read))
    )
    (send ?visitante put-numDiasVisita ?respuesta)
)

(defrule RECOGER_DATOS::recoger_duracionVisita "Recoger la duracionVisita del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (printout t "¿Durante cuantas horas visitareis el museo?" crlf)
    (bind ?respuesta (read))
    (while (not (integerp ?respuesta)) do
        (printout t "¿Durante cuantas horas visitareis el museo?" crlf)
        (bind ?respuesta (read))
    )
    (send ?visitante put-duracionVisita ?respuesta)
)

(defrule RECOGER_DATOS::recoger_conocimiento "Recoger el conocimiento del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (printout t "¿Cuanto conocimiento consideras que tienes de arte?" crlf)
    (printout t "Introduce un numero del 1 al 5 (1 nada - 5 mucho):" crlf)
    (bind ?respuesta (read))
    (while (or (or (not (integerp ?respuesta)) (< ?respuesta 1)) (> ?respuesta 5)) do
        (printout t "¿Cuanto conocimiento consideras que tienes de arte?" crlf)
        (printout t "Introduce un numero del 1 al 5:" crlf)
        (bind ?respuesta (read))
    )
    (send ?visitante put-conocimiento ?respuesta)
)

(defrule RECOGER_DATOS::recoger_pintores_favoritos "Recoger los pintores favoritos del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (bind ?pintores (find-all-instances ((?pintor Pintor)) TRUE))
    (bind $?nombre_pintores (create$ ))
    (loop-for-count (?i 1 (length$ ?pintores)) do
        (bind ?pintor (nth$ ?i ?pintores))
        (bind ?nombre_pintor (send ?pintor get-nombrePintor))
        (bind $?nombre_pintores (insert$ $?nombre_pintores (+ (length$ $?nombre_pintores) 1) ?nombre_pintor))
    )

    (bind $?pintores_escogidos (leer_multirespuesta "Selecciona tus pintores favoritos" $?nombre_pintores))

    (bind $?objetos_pintores (create$ ))
    (loop-for-count (?i 1 (length$ $?pintores_escogidos)) do
        (bind ?pintor_escogido (nth$ ?i $?pintores_escogidos))
        (bind ?pintor (find-instance ((?inst Pintor)) (eq ?inst:nombrePintor ?pintor_escogido)))
        (bind $?objetos_pintores (insert$ $?objetos_pintores (+ (length$ $?objetos_pintores) 1) ?pintor))
    )

    (send ?visitante put-prefierePintor $?objetos_pintores)
)

(defrule RECOGER_DATOS::recoger_tematicas_favoritas "Recoger las tematicas favoritas del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (bind ?tematicas (find-all-instances ((?tematica Tematica)) TRUE))
    (bind $?nombre_tematicas (create$ ))
    (loop-for-count (?i 1 (length$ ?tematicas)) do
        (bind ?tematica (nth$ ?i ?tematicas))
        (bind ?nombre_tematica (send ?tematica get-palabraClave))
        (bind $?nombre_tematicas (insert$ $?nombre_tematicas (+ (length$ $?nombre_tematicas) 1) ?nombre_tematica))
    )

    (bind $?tematicas_escogidas (leer_multirespuesta "Selecciona tus tematicas favoritas" $?nombre_tematicas))

    (bind $?objetos_tematicas (create$ ))
    (loop-for-count (?i 1 (length$ $?tematicas_escogidas)) do
        (bind ?tematica_escogida (nth$ ?i $?tematicas_escogidas))
        (bind ?tematica (find-instance ((?inst Tematica)) (eq ?inst:palabraClave ?tematica_escogida)))
        (bind $?objetos_tematicas (insert$ $?objetos_tematicas (+ (length$ $?objetos_tematicas) 1) ?tematica))
    )

    (send ?visitante put-prefiereTematica ?objetos_tematicas)
)

(defrule RECOGER_DATOS::recoger_epocas_favoritas "Recoger las epocas favoritas del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (bind ?epocas (find-all-instances ((?epoca Epoca)) TRUE))
    (bind $?nombre_epocas (create$ ))
    (loop-for-count (?i 1 (length$ ?epocas)) do
        (bind ?epoca (nth$ ?i ?epocas))
        (bind ?nombre_epoca (send ?epoca get-nombreEpoca))
        (bind $?nombre_epocas (insert$ $?nombre_epocas (+ (length$ $?nombre_epocas) 1) ?nombre_epoca))
    )

    (bind $?epocas_escogidas (leer_multirespuesta "Selecciona tus epocas favoritas" $?nombre_epocas))

    (bind $?objetos_epocas (create$ ))
    (loop-for-count (?i 1 (length$ $?epocas_escogidas)) do
        (bind ?epoca_escogida (nth$ ?i $?epocas_escogidas))
        (bind ?epoca (find-instance ((?inst Epoca)) (eq ?inst:nombreEpoca ?epoca_escogida)))
        (bind $?objetos_epocas (insert$ $?objetos_epocas (+ (length$ $?objetos_epocas) 1) ?epoca))
    )

    (send ?visitante put-prefiereEpoca ?objetos_epocas)
)

(defrule RECOGER_DATOS::recoger_corrientes_favoritas "Recoger las corrientes favoritas del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (bind ?corrientes (find-all-instances ((?corriente Corriente)) TRUE))
    (bind $?nombre_corrientes (create$ ))
    (loop-for-count (?i 1 (length$ ?corrientes)) do
        (bind ?corriente (nth$ ?i ?corrientes))
        (bind ?nombre_corriente (send ?corriente get-nombreCorriente))
        (bind $?nombre_corrientes (insert$ $?nombre_corrientes (+ (length$ $?nombre_corrientes) 1) ?nombre_corriente))
    )

    (bind $?corrientes_escogidas (leer_multirespuesta "Selecciona tus corrientes favoritas" $?nombre_corrientes))

    (bind $?objetos_corriente (create$ ))
    (loop-for-count (?i 1 (length$ $?corrientes_escogidas)) do
        (bind ?corriente_escogida (nth$ ?i $?corrientes_escogidas))
        (bind ?corriente (find-instance ((?inst Corriente)) (eq ?inst:nombreCorriente ?corriente_escogida)))
        (bind $?objetos_corriente (insert$ $?objetos_corriente (+ (length$ $?objetos_corriente) 1) ?corriente))
    )

    (send ?visitante put-prefiereCorriente ?objetos_corriente)

    (printout t (send ?visitante imprimir))
)

(defrule RECOGER_DATOS::iniciar_procesado_datos "Iniciar procesado datos"
    (declare (salience -20))
    =>
    (printout t crlf "Estamos procesando sus datos para generar una ruta recomendada" crlf)
    (focus PROCESAR_DATOS)
)


;;MODULO PROCESAR_DATOS ---------------------------------------------------

(defrule PROCESAR_DATOS::valorar_obras "Valora las obras segun las preferencias del visitante"
    ?visitante <- (object (is-a Visitante))
    =>
    (bind $?pintores_preferidos (create$ ))
    (progn$ (?curr_pintor (send ?visitante get-prefierePintor))
        (bind $?pintores_preferidos (insert$ $?pintores_preferidos (+ (length$ $?pintores_preferidos) 1) (send ?curr_pintor get-nombrePintor)))
    )

    (bind $?tematicas_preferidas (create$ ))
    (progn$ (?curr_tematica (send ?visitante get-prefiereTematica))
        (bind $?tematicas_preferidas (insert$ $?tematicas_preferidas (+ (length$ $?tematicas_preferidas) 1) (send ?curr_tematica get-palabraClave)))
    )

    (bind $?epocas_preferidas (create$ ))
    (progn$ (?curr_epoca (send ?visitante get-prefiereEpoca))
        (bind $?epocas_preferidas (insert$ $?epocas_preferidas (+ (length$ $?epocas_preferidas) 1) (send ?curr_epoca get-nombreEpoca)))
    )

    (bind $?corrientes_preferidas (create$ ))
    (progn$ (?curr_corriente (send ?visitante get-prefiereCorriente))
        (bind $?corrientes_preferidas (insert$ $?corrientes_preferidas (+ (length$ $?corrientes_preferidas) 1) (send ?curr_corriente get-nombreCorriente)))
    )

    (bind $?obras (find-all-instances ((?inst Obra)) TRUE))
    (progn$ (?curr_obra ?obras)
        (bind ?total 0)
        (bind ?autor (send ?curr_obra get-pintadaPor))

        (if (member (send ?autor get-nombrePintor) $?pintores_preferidos) then
            (bind ?total (+ ?total 100))
        )

        (bind ?i 1)
        (while (<= ?i (length$ (send ?curr_obra get-clasificadaEn))) do
            (bind ?tematica (nth$ ?i (send ?curr_obra get-clasificadaEn)))
            (if (member (send ?tematica get-palabraClave) $?tematicas_preferidas) then
                (bind ?total (+ ?total 50))
            )
            (bind ?i (+ ?i 1))
        )

        (bind ?i 1)
        (while (<= ?i (length$ (send ?curr_obra get-correspondeA))) do
            (bind ?epoca (nth$ ?i (send ?curr_obra get-correspondeA)))
            (if (member (send ?epoca get-nombreEpoca) $?epocas_preferidas) then
                (bind ?total (+ ?total 75))
            )
            (bind ?i (+ ?i 1))
        )

        (bind ?i 1)
        (while (<= ?i (length$ (send ?curr_obra get-perteneceA))) do
            (bind ?corriente (nth$ ?i (send ?curr_obra get-perteneceA)))
            (if (member (send ?corriente get-nombreCorriente) $?corrientes_preferidas) then
                (bind ?total (+ ?total 60))
            )
            (bind ?i (+ ?i 1))
        )

        (if (not (eq ?total 0)) then 
            (if (eq (send ?curr_obra get-relevancia) 1) then 
                (bind ?total (+ ?total 100))
            else 
                (if (eq (send ?curr_obra get-relevancia) 2) then 
                    (bind ?total (+ ?total 60))
                else 
                    (bind ?total (+ ?total 40))
                )
            )
        else
            (if (eq (send ?curr_obra get-relevancia) 1) then 
                (bind ?total (+ ?total 50))
            else 
                (if (eq (send ?curr_obra get-relevancia) 2) then 
                    (bind ?total (+ ?total 20))
                else 
                    (bind ?total (+ ?total 10))
                )
            )
        )
        (send ?curr_obra put-interes ?total)
    )
)

(defrule PROCESAR_DATOS::seleccionar_obras "Selecciona las obras que se le recomendara al visitante"
    ?visitante <- (object (is-a Visitante))
    (not (obras_seleccionadas))
    =>
    (bind ?obras_seleccionadas (assert (obras_seleccionadas)))
    (bind $?obras_seleccionadas_aux (create$ ))

    (bind $?obras (find-all-instances ((?inst Obra)) TRUE))

    (bind $?obras_ordenadas (create$ ))
    (while (not (eq (length$ $?obras) 0))  do
        (bind ?obra (obra_maximo_interes $?obras))
        (bind $?obras (delete-member$ $?obras ?obra))
        (bind $?obras_ordenadas (insert$ $?obras_ordenadas (+ (length$ $?obras_ordenadas) 1) ?obra))
    )

    (bind ?num_obras (calcula_num_obras ?visitante $?obras_ordenadas))
    (bind ?i 1)
    (while (not (eq ?num_obras 0))  do
        (bind ?obra (nth$ ?i ?obras_ordenadas))
        (bind $?obras_seleccionadas_aux (insert$ $?obras_seleccionadas_aux (+ (length$ $?obras_seleccionadas_aux) 1) ?obra))
        (bind ?num_obras (- ?num_obras 1))
        (bind ?i (+ ?i 1))
    )

    (modify ?obras_seleccionadas (obras ?obras_seleccionadas_aux))

)

(defrule PROCESAR_DATOS::ordenar_obras "Ordena los cuadros por salas"
    ?obras_seleccionadas <- (obras_seleccionadas (obras $?obras))
    (not (obras_ordenadas))
    =>
    (bind ?obras_ordenadas (assert (obras_ordenadas)))
    (bind $?obras_ordenadas_aux (create$ ))
    (while (not (eq (length$ $?obras) 0))  do
        (bind ?obra (obra_min_sala $?obras))
        (bind $?obras (delete-member$ $?obras ?obra))
        (bind $?obras_ordenadas_aux (insert$ $?obras_ordenadas_aux (+ (length$ $?obras_ordenadas_aux) 1) ?obra))
    )

    (modify ?obras_ordenadas (obras ?obras_ordenadas_aux))

)

(defrule PROCESAR_DATOS::iniciar_mostrar_resultados "Iniciar mostrar resultados"
    (declare (salience -20))
    =>
    (printout t crlf "Esta es su ruta diaria recomendada:" crlf)
    (focus MOSTRAR_RESULTADO)
)

;;MODULO MOSTRAR_RESULTADO ------------------------------------------------

(defrule MOSTRAR_RESULTADO::mostrar_resultado "Mostrar resultados"
    ?visitante <- (object (is-a Visitante))
    ?obras_ordenadas <- (obras_ordenadas (obras $?obras))
    ?obras_diarias <- (obras_diarias (numObrasDiarias $?numObrasDiarias))
    (test (eq ?*mostrar_ruta* FALSE))
    =>
    (bind ?*mostrar_ruta* TRUE)
    (bind ?numDias (send ?visitante get-numDiasVisita))

    (bind ?cnt_obras 0)
    (bind ?i 1)
    (bind ?j 1)
    (while (not (eq (+ ?numDias 1) ?j))  do
        (printout t"DIA " ?j ":" crlf)
        (bind ?cnt_obras 0)
        (bind ?numObrasDia (nth$ ?j $?numObrasDiarias))
        (while (and (not (eq ?cnt_obras ?numObrasDia)) (not (eq (+ (length$ $?obras) 1) ?i)) )  do
            (bind ?obra (nth$ ?i $?obras))
            (bind ?nomObra (send ?obra get-nombreObra))
            (bind ?pintor (send ?obra get-pintadaPor))
            (bind ?nombrePintor (send ?pintor get-nombrePintor))
            (bind ?numSala (send ?obra get-numSala))

            (printout t "     " "Obra: " ?nomObra ", ")
            (printout t "Pintor: " ?nombrePintor ", ")
            (printout t "Sala: " ?numSala crlf)
            (bind ?cnt_obras (+ ?cnt_obras 1))
            (bind ?i (+ ?i 1))
        )
        (bind ?j (+ ?j 1))
    )
    
)
