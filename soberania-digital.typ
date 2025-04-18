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

- ¿Quien soy y que hago aquí?
- ¿Y si te dijera que puedes tener tu propio Netflix, Spotify, Google Drive y Slack en casa?
- Hoy veremos cómo *Linux* y *Docker* te permiten construir tu nube personal.

== ¿Quien es quien?

- ¿Sabes lo que es *Linux*?
- ¿Lo utilizaste en alguna ocasión?
- ¿Conoces *Docker*?
- ¿Has montado algún servicio en un servidor?
- ¿Sabes qué es Nextcloud o Jellyfin?
- ¿Tienes una Raspberry Pi o algún miniPC en casa?
- ¿Sabes lo que es un VPS?

= Sobre la Soberanía Digital

== ¿Que es eso de la  Soberanía Digital?

- Control total sobre tus datos y servicios.
- Evitar depender de plataformas externas.
- *Tu nube, tus reglas*.

== Herramientas clave: Linux y Docker

- *Linux*: Libre, estable, personalizable.
- *Docker*: Contenedores para montar servicios rápidamente.
- *Docker Compose*: Automatiza la orquestación de múltiples servicios.

= ¿Que puedo montar?

== ¿Qué puedo montar? - Ocio

- *Jellyfin*: Tu propio Netflix.
- *Navidrome*: Música al estilo de Spotify.
- *Photoprism*: Galería fotográfica inteligente.
- *Kavita*: Lector de libros y cómics.
- *Audiobookshelf*: Audiolibros a tu alcance.
- *Mastodon / Pleroma*: Red social federada.
- *Matrix + Element*: Comunicación segura y privada.
- *Mattermost / Rocket.Chat*: Chat colaborativo como Slack.

== ¿Que puedes montar tú? - Productividad

- *Nextcloud*: Almacenamiento y colaboración tipo Google Drive.
- *Joplin Server / Trilium*: Notas sincronizadas.
- *Vikunja / Kanboard*: Gestión de tareas estilo Trello.
- *Gitea*: Control de versiones estilo GitHub.
- *Opengist / Pastefy*: Compartir código de forma sencilla.
- *HedgeDoc / Cryptpad*: Edición colaborativa y cifrada.
- *Ghost / Hugo / Plume*: Tu propio blog, sin intermediarios.

== ¿Como accedo a todos esos servicios?

- ¿Como gestionamos todos los servicios en un servidor?
- ¿Como accedemos a ellos?
- *Traefik* y *Caddy*: Proxies inversos con HTTPS automático.
- Organiza tu ecosistema con subdominios y rutas.

== ¿Como funciona Traefik?

- Traefik como proxy inverso: Enrutamiento dinámico.
- Integración con Docker para gestionar certificados SSL automáticamente.
- ¡Nunca más tendrás que lidiar con certificados manualmente!

= ¿Por donde empiezo?

== En tres pasos

- Empieza con un portátil viejo o una Raspberry Pi.
- Instala *Linux*, luego *Docker* y *Docker Compose*.
- Ejemplo sencillo de un archivo `docker-compose.yml` para Jellyfin.

== Instalación de Linux

- Descarga una distribución ligera como *Ubuntu Server*

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

== Mitos y excusas

- *Es muy difícil* → Falso. Es más sencillo de lo que parece.
- *Solo para frikis* → No. Puedes hacerlo sin ser un experto.
- *¿Y si se rompe?* → Reinicia el contenedor y listo.

== Preguntas

=== Recursos y en enlaces





