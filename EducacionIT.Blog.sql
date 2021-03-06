/****** Object:  Table [dbo].[Categorias]    Script Date: 5/3/2021 18:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](120) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 5/3/2021 18:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Autor] [nvarchar](120) NULL,
	[Comentario] [nvarchar](max) NULL,
	[IdPost] [int] NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 5/3/2021 18:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](255) NULL,
	[Resumen] [nvarchar](1000) NULL,
	[Cuerpo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategorias]    Script Date: 5/3/2021 18:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategorias](
	[IdPost] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_PostCategorias] PRIMARY KEY CLUSTERED 
(
	[IdPost] ASC,
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (2, N'Hogar')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (3, N'Gadgets')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (4, N'Interés General')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (5, N'Novedades')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (6, N'Educación')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (9, N'Servicios')
INSERT [dbo].[Categorias] ([Id], [Nombre]) VALUES (10, N'Programación')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Comentarios] ON 

INSERT [dbo].[Comentarios] ([Id], [Autor], [Comentario], [IdPost]) VALUES (1, N'Usuario Uno', N'Comentario Uno', 2)
INSERT [dbo].[Comentarios] ([Id], [Autor], [Comentario], [IdPost]) VALUES (2, N'Usuario dos', N'Comentario Dos', 2)
INSERT [dbo].[Comentarios] ([Id], [Autor], [Comentario], [IdPost]) VALUES (3, N'Usuario tres', N'Comentario tres', 2)
INSERT [dbo].[Comentarios] ([Id], [Autor], [Comentario], [IdPost]) VALUES (4, N'Usuario cuatro', N'Comentario cuatro', 4)
INSERT [dbo].[Comentarios] ([Id], [Autor], [Comentario], [IdPost]) VALUES (5, N'Usuario cinco', N'Comentario cinco', 4)
INSERT [dbo].[Comentarios] ([Id], [Autor], [Comentario], [IdPost]) VALUES (6, N'Usuario seis', N'Comentario seis', 5)
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [Titulo], [Resumen], [Cuerpo]) VALUES (2, N'Conoce la normativa respecto a drones en 2021', N'Los drones son una realidad tecnológica cada vez más asentada en el mundo. Su uso está ampliándose a diversos campos, incluso el médico, en el que están siendo usados, de forma experimental, en la distribución de vacunas contra la COVID-19. ', N'<p>Los drones son una realidad tecnológica cada vez más asentada en el mundo. Su uso está ampliándose a diversos campos, incluso el médico, en el que están siendo usados, de forma experimental, en la distribución de vacunas contra la COVID-19. En cuanto a ocio, también se está generalizando su uso en diferentes actividades, como es el caso de las carreras de drones , una variante competitiva de su utilización que va adquiriendo relevancia, gracias a las facilidades que ofrece internet en cuanto a la visión por streaming. Y en España, ¿cuál es la normativa vigente respecto a su uso? A continuación, te lo explicamos.</p>
<h3>Normativa vigente desde 2021</h3>
<p>En nuestro país, el organismo regulador de estas aeronaves es la Agencia Estatal de Seguridad Aérea (AESA). También se encarga de transportes aéreos, navegación y seguridad aeroportuaria. Durante este año, se espera la publicación de un Real Decreto que regule el vuelo de drones en España y lo actualice con respecto al reglamento europeo. Hasta el 1 de enero de 2022, el Real Decreto 1036/2017, de 15 de diciembre, que modifica el RD 552/2014, de 27 de junio, es el que rige.</p>
<p>Entre los cambios iniciados este año, se elimina la distinción entre el vuelo por ocio o trabajo. Para Fuerzas y Cuerpos de Seguridad (FCS) seguirá aplicándose la Licencia Oficial de Piloto de Drones; para el resto de personas, en drones a partir de 250 gramos, será necesario obtener una licencia acreditando un mínimo de conocimientos, volando los drones en las categorías establecidas.</p>
<h3>Limitaciones generales del vuelo de drones</h3>
<p>Existen unas limitaciones específicas a respetar, a continuación:</p>
<ul>
    <li>El dron no debe sobrepasar nunca los 120 m de altura en vuelo.</li>
    <li>El dron siempre deberá estar al alcance visual del piloto (excepto en categoría específica bajo STS BVLOS, es decir, en entorno escasamente poblado).</li>
    <li>No volar en un mínimo de 8 km de cualquier aeropuerto, aeródromo o espacio aéreo controlado.</li>
    <li>El dron deberá incluir una placa identificativa ignífuga fijada en la estructura que contendrá datos como: el nombre del fabricante, el modelo, número de serie (si corresponde) y los datos de contacto del piloto.</li>
    <li>No es obligatorio el seguro de responsabilidad civil, pero se recomienda disponer de uno. El piloto será el responsable de los posibles daños que pueda causar el dron.</li>
    <li>Es importante proteger el derecho a la intimidad de los individuos que pudieran aparecer en las fotos o vídeo captados por el dron, y tener
        especial cuidado con su divulgación pública para no vulnerar la Ley de Protección de Datos vigente.</li>
</ul>
<p>Como siempre, el sentido común y el buen seguimiento de las normas establecidas nos permitirán disfrutar de estos aparatos tecnológicos que van adquiriendo cada vez más protagonismo y utilidades para las personas y empresas.</p>')
INSERT [dbo].[Post] ([Id], [Titulo], [Resumen], [Cuerpo]) VALUES (3, N'Plataformas para tu música en ‘streaming’', N'Estamos acostumbrados a escuchar música diariamente, ya sea como consumidores activos o como receptores de los muchos inputs que nos llegan desde diferentes entornos: la radio, la televisión o las tiendas en centros comerciales son solo algunos', N'<p>Estamos acostumbrados a escuchar música diariamente, ya sea como consumidores activos o como receptores de los muchos <em>inputs</em> que nos llegan desde diferentes entornos: la radio, la televisión o las tiendas en centros comerciales son solo algunos ejemplos de cómo las notas musicales están muy presentes. En otro artículo hicimos un repaso a algunas plataformas, en esta ocasión la ampliamos, actualizando la información sobre las plataformas más veteranas y añadiendo otras nuevas. ¡Disfruta de la música en cualquier parte!</p>
<p>Spotify</p>
<p>Sigue siendo la plataforma más conocida, que ya cuenta con <strong>más de 300 millones de usuarios,</strong> 144 millones de pago y 185 millones gratuitos. Almacena tanto canciones como podcasts, pudiendo elaborar tu propia <em>playlist</em>, con recomendaciones sobre cada uno de los estilos musicales que te interesen.</p>
<p>Además, ofrece varios métodos de suscripción, separando el <strong>gratuito,</strong> con canciones limitadas y anuncios y el formato <strong><em>premium</em>,</strong> ilimitado y sin anuncios: individual, a 9,99 €/mes con una cuenta; dúo, a 13,99 €/mes con dos cuentas; plan familiar, a 14,99 €/mes y hasta 6 cuentas y, por último, estudiantes, a 4,99 €/mes con una cuenta.</p>
<p>La interfaz es intuitiva y fácil de usar, a la vez que puede descargarse para PC, iOS y Android.</p>
<p>Apple Music </p>
<p>Si eres fan de <strong>Apple</strong> y no te pierdes ninguno de sus productos, sin duda es la mejor opción, ya que puedes integrar todos tus dispositivos para conectar desde cualquier rincón la música que más te gusta.</p>
<p>Funciona a través de un sistema de pago, con <strong>70 millones de canciones</strong> sin anuncios,<em> playlists</em> y radio con entrevistas a artistas conocidos. Cuenta con tres tarifas: estudiante, a 4,99 €/mes; individual a 9,99 €/mes y familiar, a 14,99 €/mes. Está disponible en iPhone, iPad, MacBook, Apple Watch y demás dispositivos de la marca de Cupertino.</p>
<p>SoundCloud</p>
<p>Esta aplicación funciona como una <strong>plataforma de música independiente, </strong>donde alrededor de 200 millones de usuarios activos suben sus propias creaciones de cualquier estilo musical.</p>
<p>Cuenta con dos tipos de suscripciones: <strong>Souncloud Go,</strong> por 5,99 €/mes, permite guardar todas las pistas que quieras para reproducirlas sin conexión y sin anuncios; <strong>Souncloud Go+,</strong> por 9,99 €/mes, además de lo anterior, da acceso a todo el catálogo Go+ con audio de alta calidad.</p>
<p>Su <em>app</em> está disponible para PC, iOS, Android y puede insertarte en redes sociales y páginas web.</p>')
INSERT [dbo].[Post] ([Id], [Titulo], [Resumen], [Cuerpo]) VALUES (4, N'Conoce la nueva normativa para patinetes eléctricos', N'En nuestro blog Onyx Seguros Responsables redactamos anteriormente un artículo sobre una posible regulación de los patinetes eléctricos. Y lo cierto es que nuestras predicciones no se alejaban de la realidad. Desde el pasado 2 de enero, si tienes', N'<p>En nuestro blog <em>Onyx Seguros Responsables</em> redactamos anteriormente un artículo sobre una posible regulación de los patinetes eléctricos. Y lo cierto es que nuestras predicciones no se alejaban de la realidad. Desde el pasado 2 de enero, si tienes un patinete eléctrico o tienes pensado comparte uno, debes saber que hay una nueva legislación al respecto. <strong>¿Cómo va a afectar?</strong> A continuación, te explicamos los puntos clave de esta nueva normativa de la Dirección General de Tráfico (DGT).</p>
<p><strong>Velocidad máxima de los patinetes eléctricos </strong></p>
<p>Quedan regulados los vehículos de una o más ruedas con una única plaza y propulsados exclusivamente por motores eléctricos, como patinetes y Segway, cuya velocidad máxima oscila entre los 6 y 25 km/h. Aquí se excluyen los vehículos para personas con movilidad reducida como sillas de ruedas.</p>
<p>En 2019 se puso en marcha una instrucción provisional en que Tráfico advertía de la importancia <strong>de las características técnicas del aparato, su potencia y velocidad máxima,</strong> antes mencionada. Si se usan patinetes con mayores prestaciones que un vehículo de movilidad personal (VPM) que incumpla los requisitos del Reglamento (UE) n.º 168/2013, estos vehículos no podrán circular por las vías reguladas y los conductores <strong>serán sancionados con 500 euros de multa, además de la inmovilización y depósito del transporte.</strong> Se incluye también la manipulación de VPM, alterando las características técnicas o velocidad.</p>
<p><strong>Áreas de circulación y normativa</strong></p>
<p>No está permitido circular por zonas peatonales, aceras, vías interurbanas, travesías y autopistas y autovías que transcurran por poblaciones. Tampoco puede circularse por túneles urbanos.</p>
<p>Es importante destacar que los patinetes <strong>deben cumplir las normas de circulación al igual que otros vehículos,</strong> por lo que los usuarios pueden ser requeridos para someterse a una prueba de alcoholemia. Además, no se permite el uso de auriculares ni del teléfono móvil. El casco, por el momento, <strong>no es obligatorio.</strong></p>
<p>Por último, se establece que son <strong>vehículos para una sola persona,</strong> por lo que circular dos personas en un mismo patinete conlleva una multa de 100 euros (artículo 9.1.5.E del RGC).</p>
<p><strong>Tecnología al servicio del comercio </strong></p>
<p>Algunas empresas ya están aprovechando el <em>boom</em> de los patinetes eléctricos, sin duda el transporte tecnológico de moda. Esta <em>startup</em> española ha empezado a probar su servicio a domicilio con la ayuda de este vehículo de transporte y, según cuentan, <strong>con buenos resultados tanto en la calidad de la entrega como en la calidad de trabajo de los empleados.  </strong>¿Veremos a otras empresas del sector servicios seguir sus pasos en breve?</p>
<p>Lo que si tenemos claro es el hecho de que <strong>el patinete eléctrico viene para quedarse</strong> y, si ya sabiendo la normativa tienes ganas de adquirir uno, aquí tienes algunos consejos interesantes para meditar bien cuál escoger. <strong><br />
</strong></p>')
INSERT [dbo].[Post] ([Id], [Titulo], [Resumen], [Cuerpo]) VALUES (5, N'Tecnología responsable: las mejores apps para cuidar del medio ambiente', N'El cuidado del medio ambiente se ha convertido en una de las preocupaciones más extendidas en la actualidad. El ser humano lleva años utilizando los recursos naturales que nos brinda la naturaleza y, por contra, proyectando sobre ella las consecuencias, tanto positivas como negativas, ', N'<p>El <strong>cuidado del medio ambiente</strong> se ha convertido en una de las <strong>preocupaciones más extendidas </strong>en la actualidad. El ser humano lleva años <strong>utilizando</strong> los <strong>recursos naturales</strong> que nos brinda la naturaleza y, por contra, proyectando sobre ella las <strong>consecuencias</strong>, tanto positivas como negativas, de su actividad y su progreso en diferentes ámbitos.</p>
<p>Uno de los sectores que ha experimentado un mayor desarrollo en las últimas décadas ha sido el tecnológico. Cada día se producen miles de dispositivos como electrodomésticos, televisores, ordenadores, tabletas… y, sobre todo, teléfonos móviles, con los efectos negativos que ello conlleva. Lo que muchos no tenemos en cuenta es que <strong>la tecnología, bien utilizada, también puede servir para ayudar al cuidado del medio ambiente. </strong></p>
<p>Nuestro <strong>teléfono móvil</strong>, por ejemplo, puede ser una gran herramienta a la hora de adquirir unos <strong>buenos hábitos</strong>, a la vez que beneficiosos para el medio ambiente, a través de diferentes apps que te permitirán, entre otras acciones, ahorrar agua o energía, reciclar, hacer compras más sostenibles, conocer la calidad del aire…</p>
<p>A continuación, enumeramos algunas de las aplicaciones móviles más útiles para ayudarnos en esta tarea.</p>
<h4><strong>Guía Reciclaje</strong></h4>
<p>Es una de las aplicaciones en español más importantes en lo que se refiere a <strong>reciclaje</strong>. Creada por <strong>Ecoembes</strong>(una de las organizaciones nacionales más importantes en lo que respecta al cuidado del medio ambiente a través del reciclaje), enseña al usuario a <strong>separar correctamente los residuos</strong> orgánicos del papel y el cartón, el plástico y los envases, el vidrio, el metal… y depositar todos ellos en el <strong>contenedor adecuado</strong>.</p>
<p>La app cuenta además con un <strong>buscador</strong> en el que el usuario puede buscar todo tipo de productos y saber, al instante, en qué contenedor debe depositarlos.</p>
<p>Esta aplicación está disponible tanto para <strong>Android</strong> como para <strong>iOS</strong>.</p>
<h4><strong> Mirubee</strong></h4>
<p>Lanzada recientemente por una <em>start up </em>española, Mirubee permite, mediante un <strong>medidor</strong> que se sitúa en el <strong>cuadro eléctrico de nuestro hogar</strong> y que se conecta a la red WiFi, <strong>analizar el consumo eléctrico</strong> de cada uno de los <strong>aparatos que tenemos en casa</strong>. Esta app es perfecta para llevar un control detallado del consumo eléctrico doméstico.</p>
<p>Además, puedes <strong>configurar distintas alertas y notificaciones</strong> para ayudarte a evitar picos de consumo y también recibir indicaciones personalizadas con las que aumentar la eficiencia energética y reducir las emisiones contaminantes.</p>
<p>El único inconveniente de <strong>Mirubee </strong>es que el medidor necesario para el correcto funcionamiento de la app tiene un precio de 119 €. No obstante, los responsables de la aplicación señalan que la <strong>reducción en la factura</strong> mensual de la luz puede estar en torno a un <strong>15%</strong>.</p>
<p>Esta app también es <strong>compatible con todos los dispositivos</strong>.</p>
<h4><strong>Go Green: Carbon Tracker</strong></h4>
<p>Esta es una aplicación muy interesante, pues <strong>analiza la huella de carbono </strong>que producen <strong>nuestras actividades cotidianas</strong>: desde el consumo eléctrico en el hogar, hasta el uso de transporte público o privado. Gracias a ella, el usuario puede saber, en base a una escala que determina la propia app, si sus <strong>actividades </strong>son <strong>respetuosas con el medio ambiente</strong>.</p>
<p>Una vez detectados los hábitos con margen de mejora, la propia app ofrecerá al usuario <strong>consejos y alternativas</strong> sobre cómo cambiar algunos de sus hábitos, adquiriendo un comportamiento más sostenible.</p>
<p><strong>Carbon Tracker</strong> tiene una desventaje, y es que solo está disponible para sistemas <strong>iOS</strong>.</p>
<h4><strong> Plume Air Report</strong></h4>
<p>Desarrollada por científicos especializados en <strong>información atmosférica</strong>, Plume Air Report funciona de forma similar a un pronóstico meteorológico. Permite saber, en tiempo real, los <strong>niveles de contaminación de un área concreta</strong>. Además, pronostica <strong>cómo evolucionará la calidad del aire</strong> en esa zona en las siguientes 24h a la consulta. Esta información puede resultar de gran utilidad al usuario para decidir en qué momento del día realizar algunas actividades, por ejemplo, realizar ejercicio físico al aire libre, respirando así un aire más puro.</p>
<p>La app cuenta también con un <strong>análisis de datos históricos</strong> e incluye una sección de <strong>preguntas frecuentes</strong> y un <strong>blog</strong> para comprender el estado de la atmósfera y mejorar así el aire que se respira.</p>
<p>Esta app es <strong>compatible con todos los dispositivos</strong> y puedes descargarla aquí.</p>
<h4><strong>Good Guide</strong></h4>
<p>Good Guide es la app perfecta para los más comprometidos, pues analiza las <strong>marcas</strong> y los <strong>productos</strong> que compramos y consumimos y <strong>determina si son sanos, seguros, saludables y responsables</strong> con el medio ambiente.</p>
<p>El funcionamiento de la app es muy sencillo. El usuario puede <strong>escanear el código de barras del producto </strong>a través de la <strong>cámara del móvil</strong> y descubrir información sobre qué implicaciones tiene su fabricación y su uso tanto para la sociedad como para el medio ambiente.</p>
<p>Descarga esta app, tanto para <strong>Android</strong> como para <strong>iOS</strong>, aquí.</p>')
SET IDENTITY_INSERT [dbo].[Post] OFF
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Post]
GO
ALTER TABLE [dbo].[PostCategorias]  WITH CHECK ADD  CONSTRAINT [FK_PostCategorias_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id])
GO
ALTER TABLE [dbo].[PostCategorias] CHECK CONSTRAINT [FK_PostCategorias_Categorias]
GO
ALTER TABLE [dbo].[PostCategorias]  WITH CHECK ADD  CONSTRAINT [FK_PostCategorias_Post] FOREIGN KEY([IdPost])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[PostCategorias] CHECK CONSTRAINT [FK_PostCategorias_Post]
GO
/****** Object:  StoredProcedure [dbo].[SP_Categorias]    Script Date: 5/3/2021 18:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Categorias]
	@ParametroNumerico int,
	@ParametroTexto Varchar(120)
AS
BEGIN
	SELECT * FROM CATEGORIAS
END
GO


CREATE TABLE [dbo].[SubCategorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](120) NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_SubCategorias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SubCategorias]  WITH CHECK ADD  CONSTRAINT [FK_SubCategorias_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id])
GO

ALTER TABLE [dbo].[SubCategorias] CHECK CONSTRAINT [FK_SubCategorias_Categorias]
GO
