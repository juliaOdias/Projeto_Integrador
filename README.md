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
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/bad6287f-6935-4950-957c-12ae175b6a3a)
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/7367921d-dea5-4cc2-8b87-06824b4bc50c)


  #### 3.4. perfil.html
   Botão 'excluir pet', eliminar o pet especificado da tabela e permacene na página perfil.html
   Botão 'voltar para página inicial', direcionando para a página inicio.html.
   ![image](https://github.com/juliaOdias/Projeto_Integrador/assets/130238194/4d5bd114-22b1-4ba1-b1fb-78a0a13d4c10)

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
1. Certifique-se te ter o ambiente PyCharm instalado.
2. Certifique-se de ter o Python instalado em sua máquina.
3. Clone este repositório para o seu ambiente local.
4. Abra o terminal e navegue até o diretório do projeto.
5. Abra este projeto e seu ambiente PyCharm.
6. Faça a instalação dos pacotes necessários
   6.1. Flask, com o comando 'pip install flask' em seu terminal.
   6.2. MySQL, com o comando 'pip install mysql-connector-python' em seu terminal.
7. Excecute o projeto, é necessário que apareça a página de login ao entrar o link.
8. Faça seu cadastro clicando em 'se cadastre' e preeenchendo as informções.
9. Com o cadastro feito, faça seu login.
10. Assim que estiver na página principal, clique no botão 'cadastrar pet'.


## Licença

Este projeto está sob a licença GNU AGPLv3.
