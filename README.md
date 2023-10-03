# PetMaps

## Descrição

PetMaps é uma aplicação destinada a moradores de São Carlos que perderam seus animais de estimação, sendo restrito a gatos ou cachorros, a intenção principal é resolver o problema da feira do rolo onde é feita a postagem de diversos animais e dificilmente se acha o dono. Com esta aplicação será possível o usuário fazer o cadastro de seus pets e aplicar a opção 'meu pet' ou 'pet encontrado', assim as pessoas poderão fazer uma busca com filtragem por cor, idade, raça, genero e afins para facilitar a localização do pet

## Requisitos Funcionais

### 1. Pastas e arquivos
  - Para a programação haverá um arquivo solto na pasta chamado inicio.py.
  - Dentro da pasta templates, estarão os documentos em html(inicio, cadastro, login, perfil e cadastropets).
  - Dentro da pasta static, estará os documentos em CSS dos mesmos arquivos html.
  - Dentro da pasta image, estará as imagens cadastradas pelo usuário e que serão exibidas na página inicio.html em formato de feed.

### 2. Banco de dados Cadastro
  #### 2.1. Tabela cadastropessoas
   - Tabela que obterá os dados a partir do formulário presente na página cadastro.html.
   - Os dados serão utilizados para ser feito o login, pegando somente o login e senha cadastrados no banco.
   - Os dados serão exibidos na tabela inicio.html, acima da segmentação para filtragem, exibindo nome, bairro, email e telefone do usuário logado.
   - Juntamente aos animais em formato de feed na página inicio.html, haverá um botão 'Mais informações', que ao clicar exibirá o nome, bairro, email e telefone do usuário que cadastrou aquele respectivo pet.
  #### 2.2. Tabela cadastropets
   - Tabela que obterá os dados a partir do formulário presente na página cadastropets.html.
   - Os dados serão exibidos na tabela inicio.html, em formto de feed, exibindo primeiramente a imagem e em seguida suas características de todos os animais cadastrados no banco de dados.
   - Também haverá uma página chamada perfil.html, onde será exibido somente os animais que o usuário logado cadastrou.
   - Com uma segmentação simples e um código javascript, será utilizada a tabela para filtrar os animais por algumas características pontuais, como gênero = fêmea e mostrará somente os animais cadastrados como fêmeas.
     

### 3. Botões
  #### 3.1. login.html
   Botão 'Entrar', direcionando para a página inicio.html.
   Botão 'Se cadastre', direcionando para a página cadastro.html.
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/5c415ee3-03fb-4dd0-9c6e-7166cecc6553)

  #### 3.2. cadastro.html
   Botão 'Cadastrar', direnciando, quando as informações estiverem preenchidas e corretas, para a página login.html.
   Botão 'Faça Login', direcionando para a página login.html.
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/4bd4695c-5d6f-4cb6-b026-995434476c53)

  #### 3.3. inicio.html
   Botão 'Cadastrar PET', direcionando para a página cadastropets.html
   Botão 'Meus pets', direcionando para a página perfil.html.
   Botão 'Sair', direcionando para a página login.html
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/606d8b69-5cdc-4603-b8ca-10e3d1c7099d)
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/621f9b6d-8492-4bd0-9b64-2d3adaeebc5f)
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/a50d4da4-5778-47e4-aef9-bb442a99aa1a)





  #### 3.4. perfil.html
   Botão 'excluir pet', eliminar o pet especificado da tabela e permacene na página perfil.html
   Botão 'voltar para página inicial', direcionando para a página inicio.html.
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/a0d4e610-fd4c-4f3e-b18f-a684054570da)


  #### 3.5. cadastropets.html
   Botão 'cadastrar pet', exibe a mensagem 'Pet cadastrado com sucesso' e permanece na pagina cadastropet.html
   Botão 'voltar para página inicial', direcionando para a página inicio.html.
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/67173a2e-efcd-4d74-acf4-86e9dca9c36c)

  

### 4. Funcionalidade de cada página:
   #### 3.1. login.html
   Realizar o login e acessar a aplicação principal.
  #### 3.2. cadastro.html
   Fazer o cadastro do usuário para que o login possa ser feito.
  #### 3.3. inicio.html
   Ter acesso a todos os animais cadastrados em todo o banco de dados e ter a possibilidade de filtrar essas informações com as segmentações disponibilizada e também por comparação de imagens.
  #### 3.4. perfil.html
   Ter acesso e controle aos pets que o próprio usuário cadastrou, tendo a possibilidade de excluir caso o pet venha a falecer ou o pet já tnha encontrado seu dono.
  #### 3.5. cadastropets.html
   Cadastrar seus prórprios pets e também os pets que foram encontrados.

## Requisitos Não Funcionais
 Performance: A aplicação deve ser responsiva, minimizando a latência durante a execução do código.
 Usabilidade: A interface deve ser intuitiva e fácil de usar, especialmente para iniciantes.
 Escalabilidade: A aplicação deve suportar um aumento no número de usuários e pets cadastrados sem comprometer a qualidade.
 Segurança: Garantir a segurança dos dados dos usuários e evitar vulnerabilidades.
 Compatibilidade: Funcionar em diversos navegadores e sistemas operacionais.


## Como Rodar a Aplicação
1. Certifique-se te ter o ambiente PyCharm instalado em sua máquina.
2. Certifique-se de ter o Python instalado em sua máquina.
3. Certifique-se de ter o XAMPP instalado em sua máquina.
4. Faça download tanto da pasta 'PetMaps.zip' como do 'cadastros.sql'.
5. Extraia tudo do arquivo zip e tire o PetMaps de dentro da página que ficou a extração.
6. Abra seu PyCharm, clique em 'New Project...', copie o caminho da pasta e cole no PyCharm.
7. Configure a linguagem python na maquina.
10. Faça a instalação dos pacotes necessários
    10.1. Flask, com o comando 'pip install flask' em seu terminal.
    10.2. MySQL, com o comando 'pip install mysql-connector-python' em seu terminal.
11. Abra o XAMPP, dê 'start' no Apache e logo em seguida no MySQL.
12. No MySQL, clique em 'Admin', deve abrir o localhost do banco de dados.
    12.1. Se ocorrer algum erro, adicione ':8080' na frente do 'localhost'.
13. Crie um banco de dados chamado 'cadastros'.
14. Copie o conteúdo do arquivo 'cadastros' que você fez download, cole no SQL do banco de dados e depois execute'.
15. Agora, com o banco de dados aberto, rode o projeto no PyCharm.
    15. Inicie fazendo seu cadastro e em seguida o login para ter acesso a página principal.
    16. Se quiser cadastrar ou ver quais pets você já cadastrou, clique em 'cadastre seu PET' ou 'Meus Pets'.
    17. A barra ao lado permite realizar a filtragem por características.
    18. O link em baixo de cada card, permite ver as informações do dono do pet.


## Licença

Este projeto está sob a licença GNU AGPLv3.
