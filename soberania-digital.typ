#import "template/slydst.typ": *
#import "@preview/tablem:0.1.0": tablem

#show: slides.with(
  title: "Soberanía Digital",
  subtitle: "TU NUBE, TUS REGLAS",
  comment: "Escapa de Matrix con Linux y Docker",
  authors: "Lorenzo Carbonell <a.k.a atareao>",
  background: "fondo_presentacion.jpg",
)

#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Outline

#outline()

= Introducción

== Presentación

#align(horizon)[
  #align(center)[
    #text(size:30pt)[
  ¿Quien soy y que hago aquí?
    ]
  ]
]

#pagebreak()

- Divulgo sobre Software Libre y Open Source
#align(center)[#text(18pt)[Web: #text(blue)[atareao.es]]]
#align(center)[#text(18pt)[Podcast: #text(blue)[atareao con Linux]]]
#align(center)[#text(18pt)[Canal de Youtube: #text(blue)[atareao]]]
#v(10pt)
- Desarrollo de aplicaciones Open Source
  - Python
  - Rust
  - TypeScript

#pagebreak()

#align(horizon)[
  #align(center)[
    Aviso a navegantes:
  ]
  #v(20pt)
  #align(center)[Tiendo a emocionarme]
  #align(center)[Cuando me emociono, hablo rápido]
  #v(20pt)
  #align(center)[Todo está en GitHub]
  #align(center)[https://github.com/atareao/soberania-digital]
]

#pagebreak()

#align(horizon)[
  #align(center)[#text(size:25pt)[No quiero #text(rgb(180,180,180))[convencerte]]]
  #align(center)[#text(size:25pt)[Solo mostrarte que]]
  #align(center)[#text(size: 25pt, fill: red)[HAY OTRA OPCIÓN]]
]


== ¿Quien es quien?

#align(horizon)[
- ¿Sabes lo que es *Linux*?
- ¿Lo utilizaste en alguna ocasión?
- ¿Conoces *Docker*?
- ¿Has montado algún servicio en un servidor?
- ¿Sabes qué es Nextcloud o Jellyfin?
- ¿Tienes una Raspberry Pi o algún miniPC en casa?
- ¿Sabes lo que es un VPS?
]

== ¿De que va todo esto?
#block(spacing: 2em)[
  #align(center)[
    #text(size:20pt)[¿Y si te dijera que puedes tener tu propio #text(red)[Netflix], #text(green)[Spotify], #text(yellow)[Google Drive] y #text(purple)[Slack] en casa?]
  ]
  #align(center)[
    #text(size:20pt)[Con *Linux* y *Docker* puedes construir propia #text(orange)[*tu NUBE personal*]]
  ]
]

= Sobre la Soberanía Digital

== ¿Que es eso de la  Soberanía Digital?

#v(30pt)
#align(center)[#text(size:20pt)[Control total sobre #text(red)[*tus datos*] y *tus servicios*]]
#align(center)[#text(size:20pt)[Evita #text(red)[*depender*] de plataformas externas.]]

#pagebreak()

#align(horizon)[
- Control de los datos personales #text(rgb(80,80,80))[(*tus datos*)]
- Uso de tecnologías libres y abiertas #text(rgb(80,80,80))[(*transparencia*)]
- Autonomía tecnológica #text(rgb(80,80,80))[(*independencia de terceros*)]
- Infraestructura bajo control propio #text(rgb(80,80,80))[(*acceso continuo*)]
- Educación y concienciación digital #text(rgb(80,80,80))[(*tus decisiones*)]
]

#pagebreak()

#v(30pt)
#align(center)[#text(size:20pt)[¿Ya te #text(red)[*desapareció*] música de #text(green)[*Spotify*]?]]
#v(30pt)
#align(center)[#text(size:20pt)[¿Ya te #text(red)[*desapareció*] tu serie preferida de #text(red)[*Netflix*]?]]
#v(30pt)

#pagebreak()

#align(horizon)[#align(center)[#text(size:35pt)[#text(red)[*Tu nube*] #h(50pt) #text(blue)[*tus reglas*]]]]

#pagebreak()

#align(horizon)[
  #align(center)[
    #text(size:40pt)[¿Ya te convencí?]]
  ]
= ¿Que puedo montar?

== ¿Qué puedo montar? - Ocio

#align(horizon)[
- *Jellyfin*: Tu propio Netflix.
- *Navidrome*: Música al estilo de Spotify.
- *Photoprism*: Galería fotográfica inteligente.
- *Kavita*: Lector de libros y cómics.
- *Audiobookshelf*: Audiolibros a tu alcance.
- *Mastodon / Pleroma*: Red social federada.
- *Matrix + Element*: Comunicación segura y privada.
- *Mattermost / Rocket.Chat*: Chat colaborativo como Slack.
]

== Una alternativa a Spotify 

#figure(
  image("./images/navidrome.png", width: 90%),
  caption: "Navidrome"
)

== Symfonium

#figure(
  image("./images/symfonium.jpg", height: 80%),
  caption: "Symfonium"
)

== Plex

#figure(
  image("./images/plex.png", height: 80%),
  caption: "Plex"
)

== Matrix + Element

#figure(
  image("./images/matrix.png", height: 80%)
)

#pagebreak()

#align(horizon)[
  #align(center)[
    #text(size:30pt)[Ahora si, ¿verdad?]]
  
  #align(center)[
    #text(size:30pt)[Ya te convencí!]]
  ]



== ¿Que puedes montar tú? - Productividad

- *Nextcloud*: Almacenamiento y colaboración tipo Google Drive.
- *Joplin Server / Trilium*: Notas sincronizadas.
- *Vikunja / Kanboard*: Gestión de tareas estilo Trello.
- *Gitea*: Control de versiones estilo GitHub.
- *Opengist / Pastefy*: Compartir código de forma sencilla.
- *HedgeDoc / Cryptpad*: Edición colaborativa y cifrada.
- *Ghost / Hugo / Plume*: Tu propio blog, sin intermediarios.

== Una alternativa a GitHub 

#figure(
  image("./images/gitea.png", width: 70%),
  caption: "Gitea"
)

== Gitnex

#figure(
  image("./images/gitnex.jpg", height: 80%)
)

== Un blog

#figure(
  image("./images/blog.png", width: 70%),
  caption: "WordPress"
)

== selfh.st

- *selfh.st*: Un lugar donde encontrar _que montar_

#figure(
  image("./images/selfh-gitea.png", width: 90%),
  caption: "selfh.st",
)

== Awesome Selfhosted

- awesome-selfhosted.net
#figure(
  image("./images/awesome.png", width: 90%),
  caption: "awesome-selfhosted.net",
)

== Mi página de inicio

#figure(
  image("./images/home.png", width: 90%),
  caption: "homepage",
)

= ¿Donde puedo montar todas esas maravillas?

== Herramientas clave: Linux y Docker

#align(horizon)[
#align(center)[Esta es la realidad: *NI* #text(fill: red)[Windows] *NI* #text(fill: red)[MacOS]]
#align(center)[#text(20pt, fill: blue)[*LINUX*]]
- *Linux*: Libre, estable, personalizable.
- *Docker*: Contenedores para montar servicios rápidamente.
- *Docker Compose*: Automatiza la orquestación de múltiples servicios.
]

== Herramientas clave: Linux y Docker

#align(horizon)[
#align(center)[#text(30pt)[¿Pero donde _Lorenzo_?]]
#align(center)[#text(30pt)[¿Donde?]]
]


== Desempolva esa Raspberry Pi


#figure(
  image("./images/una-raspberry-pi-dentro-de-un-caj-n-con-polvo-y-te.jpg", width: 70%),
  caption: "Raspberry Pi",
)

== ¿Cuanto me cuesta?

Cálculo aproximado:
- 24 horas día durante un mes
- precio medio del kWh en España en 2025 (alrededor de *0,15 € por kWh* para tarifas estándar).

$ #text[coste] = frac(#text[Potencia en W] dot #text[24 horas] dot #text[30 días], 1000) dot #text[Precio kWh]  $

#table(
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [Modelo],
    [Consumo promedio (W)],
    [Consumo mensual (kWh)],
    [Coste mensual (€)]
  ),
  [3 B], [3.5], [2.52], [0.38],
  [4], [5], [3.6], [0.54],
  [5], [7], [5.04], [0.76]
)

Incluso en el caso más alto (una Raspberry Pi 5), tenerla encendida todo el mes te costaría menos de *1 euro al mes* en electricidad.
== Desempolva ese miniPC

#figure(
  image("./images/una-minipc-dentro-de-un-caj-n-con-polvo-y-telara-a.jpg", width: 70%),
  caption: "MiniPC",
)

== O en un servidor

#figure(
  image("./images/un-centro-de-proceso-de-datos.jpg", width: 70%),
  caption: "Servidor",
)

#align(center)[Un VPS puede costar entre *5 y 10 euros al mes*.]
#align(center)[4 CPU y 8 GB RAM]

= ¿Por donde empiezo?

== En tres pasos

#align(horizon)[
- Empieza con un portátil viejo o una Raspberry Pi.
#v(30pt)
- Instala *Linux*, luego *Docker* y *Docker Compose*.
]

== Instalación de Linux

#align(horizon)[
- Descarga una distribución ligera como *Ubuntu Server*
]
#align(center)["Hay cientos de tutoriales en YouTube"]

== Instalación de Docker (1/2)

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

== Instalación de Docker (2/2)

```bash
# Update and install
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# Manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
# Configure Docker to start on boot with systemd
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

== Un ejemplo de docker-compose.yml

```yaml
services:
  jellyfin:
    image: jellyfin/jellyfin
    ports:
      - "8096:8096"
    volumes:
      - ./config:/config
      - ./media:/media
```

Y arrancamos,

```bash
docker compose up -d
```

== ¿Como accedo a todos esos servicios?

#align(horizon)[
- ¿Como gestionamos todos los servicios en un servidor?
- ¿Como accedemos a ellos?
- *Traefik* y *Caddy*: Proxies inversos con HTTPS automático.
- Organiza tu ecosistema con subdominios y rutas.
]

== ¿Como funciona Traefik?

#align(horizon)[
- Traefik como proxy inverso: Enrutamiento dinámico.
- Integración con Docker para gestionar certificados SSL automáticamente.
- ¡Nunca más tendrás que lidiar con certificados manualmente!
]

== Mitos y excusas

#align(horizon)[
- *Es muy difícil* → Falso. Es más sencillo de lo que parece.
- *Solo para frikis* → No. Puedes hacerlo sin ser un experto.
- *¿Y si se rompe?* → Reinicia el contenedor y listo.
]

= Preguntas


== Recursos y en enlaces

- atareao.es
- github.com/atareao/soberania-digital
- Typst






