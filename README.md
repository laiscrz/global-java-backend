# 👴🏻 Inova-X Care: Desenvolvimento do Backend em Java

Bem-vindo ao repositório de desenvolvimento do backend em Java da Inova-X Care. Este projeto faz parte da Global Solution da NotreDame Intermedica, que foi entregue no 2° Semestre de 2023 do curso de ADS da Faculdade FIAP. Este é um projeto dedicado à saúde dos idosos, destacando o produto exclusivo da Inova-X Care chamado "Life Care".

## 🎯 Visão Geral

O backend em Java foi desenvolvido para fornecer uma API RESTful que interage com o banco de dados Oracle Developer Database. Ele é responsável por gerenciar as operações CRUD (Create, Read, Update, Delete) relacionadas aos clientes, dispositivos, cuidadores, diagnósticos, emergência e manutenção do sistema Life Care.

## 🛠️ Tecnologias Utilizadas

O desenvolvimento do backend em Java empregou as seguintes tecnologias:

* **Java:** Linguagem de programação utilizada para o desenvolvimento do backend.
* **Oracle JDBC:** Driver JDBC utilizado para conectar o backend ao banco de dados Oracle Developer Database.
* **Maven:** Ferramenta de gerenciamento de dependências e construção de projetos Java.
* **Apache Tomcat:** Servidor web utilizado para hospedar a aplicação Java.

## 📌 Link do Repositório do Front-End
O código-fonte do frontend está disponível no seguinte repositório:

```bash
https://github.com/laiscrz/global-next-js
```

## 🔗 Link do Video
Segue o link do vídeo enviado na disciplina de Domain Driven Design, apresentando o software em funcionamento:

```bash
https://www.youtube.com/watch?v=GRBNe07OxSo
```

## 📂 Estrutura do Projeto

O projeto do backend em Java está organizado em pacotes que representam diferentes aspectos da aplicação:

* `factory`: Contém as classes responsáveis por criar e gerenciar conexões com o banco de dados.
* `exception`: Contém as classes de exceção personalizadas lançadas pela aplicação.
* `model`: Contém as classes de modelos de dados que representam as entidades do sistema.
* `dao`: Contém as classes responsáveis por realizar operações de acesso a dados no banco de dados.
* `bo`: Contém as classes de objetos de negócio (Business Objects) que representam entidades do sistema.
* `service`: Contém as classes responsáveis por implementar a lógica de negócios da aplicação.
* `resource`: Contém as classes de controladores REST que definem os endpoints da API.

## 📦 Endpoints da API

A API RESTful do backend em Java oferece os seguintes endpoints:

* `/cliente`: Endpoint para operações CRUD relacionadas aos clientes.
* `/dispositivo`: Endpoint para operações CRUD relacionadas aos dispositivos.
* `/cuidador`: Endpoint para operações CRUD relacionadas aos cuidadores.
* `/diagnostico`: Endpoint para operações CRUD relacionadas aos diagnósticos.
* `/emergencia` : Endpoint para operações CRUD relacionadas a emergência.
* `/manutencao`: Endpoint para operações CRUD relacionadas aos manutenção.
  
Cada endpoint suporta os métodos HTTP GET, POST, PUT e DELETE para realizar as operações CRUD correspondentes.

## 📝 Instruções de Uso
Para utilizar o backend em Java, siga as instruções abaixo:

1. Clone o repositório do backend em Java para o seu ambiente de desenvolvimento.
2. Abra o projeto em sua IDE Java preferida.
3. Certifique-se de que as tabelas necessárias para a aplicação estejam criadas no banco de dados.
4. Execute o projeto e a API RESTful estará disponível nos endpoints mencionados acima.

***OBS.*** Para configurar a classe `ConnectionFactory`, você precisará fornecer o nome do banco de dados, o nome do usuário e a senha do banco de dados Oracle Developer Database. Certifique-se de que essas informações estejam corretas e que o usuário tenha as permissões necessárias para acessar o banco de dados e modificar as tabelas.

## 🫂 Integrantes

Aqui estão os membros do grupo e os cargos de cada um durante o desenvolvimento desta Global Solution.

* **RM 551823 - Gustavo Marques Catelan**
  - Turma: 1TDSPI
  - Cargo: Desenvolvedor BackEnd em Python

* **RM 552258 - Laís Alves da Silva Cruz**
  - Turma: 1TDSPI
  - Cargo: Desenvolvedora FrontEnd

* **RM 550790 – Lucas dos Santos Lopes**
  - Turma: 1TDSPI
  - Cargo: Desenvolvedor BackEnd em Java

* **RM 550718 – Murilo Machado**
  - Turma: 1TDSPI
  - Cargo: Desenvolvedor de Banco de Dados

* **RM 97900 – Victor Taborda**
  - Turma: 1TDSPI
  - Cargo: AI and ChatBot

**Observação:** ***Todos os membros contribuíram para a matéria de Software Design & TX.***