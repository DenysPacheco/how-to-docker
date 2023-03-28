# Tutorial Docker 101

🌐 [🇺🇲 English](README.en.md)

![Docker](./assets/docker.webp)

_Comandos simples para começar com o Docker 🐋._

- [Tutorial Docker 101](#tutorial-docker-101)
  - [🧠 Conceitos](#-conceitos)
  - [🐾 Passos](#-passos)
    - [🏗️ Construir outros](#️-construir-outros)
    - [💾 Salvar](#-salvar)
    - [⚙️ Executar (olhe dentro)](#️-executar-olhe-dentro)
    - [💼 Carregar](#-carregar)
  - [➕ Outros comandos](#-outros-comandos)
  - [✨ Adendos](#-adendos)

---

## 🧠 Conceitos

**Imagem** 🖼️: uma _"pintura"_ (snapshot) da sua aplicação com tudo que ela precisa para rodar dentro dela.

**Container** 📦: Aquilo que _"segura"_ a imagem e a executa.

**Dockerfile** 📃 : arquivo com descrição de como fazer uma imagem e instruções para alterá-la/executá-la. (Veja mais em [Docker docs](https://docs.docker.com/engine/reference/builder/#format))

_PS: sempre execute com `sudo` ou faça `sudo su` (ou [adicione docker ao grupo sudo](https://docs.docker.com/engine/install/linux-postinstall/))._

_PS2: certifique-se de instalar o [Docker](https://docs.docker.com/) corretamente e poder executá-lo._

_Docker tem imagens pré-criadas no [DockerHub](https://hub.docker.com/) com softwares pré-instalados (como Flask ou Node)_

---

## 🐾 Passos

### 🏗️ Construir outros

"Constrói uma imagem (mais instruções dentro do [Dockerfile](Dockerfile))"

`docker build -t app:test .`
> opção `-t` para nomear a imagem
>
> `app` é o nome do aplicativo
>
> `test` é o nome da tag para diferenciar
>
> diretório `.` (atual) para encontrar o `Dockerfile`
---

### 💾 Salvar

"Exportar uma imagem para um arquivo `.tar` de saída"

`docker save -o app-test.tar app:test`
> opção `-o` para nomear a saída tar
>
> `app-test.tar` é o nome do arquivo de saída
>
> `app:test` é o nome da imagem
---

### ⚙️ Executar (olhe dentro)

"Executa sua imagem em um Container e inicia o shell dentro dela"

`docker run -it app:test sh`
> `-i` permite interação com o container
>
> `-t` chama o tty (console)
>
> `app:test` é o nome da imagem
>
> `sh` para usar o shell
---

### 💼 Carregar

"Importa a imagem de um arquivo de entrada `.tar`"

`docker load -i app-test.tar`
> opção `-i` para designar o arquivo de entrada
>
> `app-test.tar` é o nome do arquivo de entrada tar
---

## ➕ Outros comandos

`docker ps`
> Listar Containers em execução

`docker images`
> Lista as imagens locais

`docker image rm app:test`
> Exclui uma imagem
>
> use o opção `-f` para forçá-lo.

_PS: sempre leia a documentação para saber mais._

## ✨ Adendos

Use os scripts:

- [makeDockerImage.sh](./makeDockerImage.sh)

> para criar e exportar uma imagem (execute-a na mesma pasta que o Dockerfile).

- [makeDockerfile.sh](./makeDockerfile.sh)

> para criar um Dockerfile (isso é executado se makeDockerImage não detectou um Dockerfile).

Qualquer dúvida ou pergunta acesse [Docker Docs](https://docs.docker.com/) para ver os comandos e opções.
