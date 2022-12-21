# terraform_linkedin

Playlist no Youtube com as etapas do projeto: https://youtube.com/playlist?list=PLXV200dpiF4XFfVk_j7XEsZWXETTti51l



**Pessoal, esse vai ser o projeto (simples e com secrets expostos!) que iremos abordar na nossa série de vídeos. Abaixo o desenho da aquitetura:**

![diagrama](https://github.com/dellabeneta/terraform_linkedin/blob/master/004.drawio.svg)

Vamos criar esse projeto por etapas, que serão:

- O básico necessário para começar (Praparando o Ambiente.);
  - Instalar as ferramentas básicas p/ lidar com o Projeto.
  - Gerar um par de chaves que usaremos no Projeto (GitHub, Instâcias ...)
  - Configurar a chave pública no GitHub.
  - Criar um usuário no IAM para o projeto e depois configurá-lo no AWS CLI.
  

- Git clone do Projeto e Análise inicial (Download do Projeto e Overview da Arquitetura.);
  - Git Clone do Projeto.
  - Overview do Desenho de Arquitetura.
  - Conversar livremente sobre os recursos utilizados e como eles se Interconectam.

Escrever Terraform e Testar o Projeto.

1. Vamos olhar o código Terraform e seus elementos principais.
2. Organizar os arquivos.
3. Sobre a abordagem do "Workspaces" que utilizei.
