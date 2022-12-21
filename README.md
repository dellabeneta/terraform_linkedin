# terraform_linkedin

<img src="youtube.png" width="150" align="center"/>Playlist no Youtube: https://youtube.com/playlist?list=PLXV200dpiF4XFfVk_j7XEsZWXETTti51l

**Pessoal, esse vai ser o projeto (simples e com secrets expostos!) que iremos abordar na nossa série de vídeos. Abaixo o desenho da aquitetura:**

![diagrama](https://github.com/dellabeneta/terraform_linkedin/blob/master/004.drawio.svg)

Vamos criar esse projeto por etapas, que serão:

- O básico necessário para começar (Praparando o Ambiente).
  - Instalar as ferramentas básicas p/ lidar com o Projeto.
  - Gerar um par de chaves que usaremos no projeto (GitHub, Instâcias ...).
  - Configurar a chave pública no gitHub.
  - Criar um usuário no IAM para o projeto e depois configurá-lo no AWS CLI.
  
- Git clone do projeto e análise inicial (Download do Projeto e Overview da Arquitetura.).
  - Git clone do projeto.
  - Overview do desenho de arquitetura.
  - Conversar livremente sobre os recursos utilizados e como eles se interconectam.

- Escrever "terraform" e testar o projeto.
  - Vamos olhar o código terraform e seus elementos principais.
  - Organização dos os arquivos.
  - Sobre a abordagem do "Workspaces" que utilizei.
