
Projeto de Banco de Dados

Contexto: Levantamento de Requisitos

Projeto Conceitual: Modelo ER

Projeto Lógico: Modelo Relacional

Ordem de serviço → Universidade → Ecommerce

**Softwares**:

→ Workbench = [draw.io](http://draw.io) ou app.dbdesign.net

→ [app.diagramas.net](http://app.diagramas.net) ( [https://app.diagrams.net/](https://app.diagrams.net/))

→ DB designer ou Mysql Workbench

**Modelando ordem de serviço**

→ Dentro de uma empresa os clientes demandam ao helpdesk algumas ações.

→ Essas ações são convertidas em ordem de serviço

Contexto

→ Os clientes realizam um pedido

→ O pedido é convertido em ordem de serviço caso possa ser realizado

→ O técnico executa a ordem de serviço. Após sua finalização a mesma é arquivada.

Projeto de Banco de Dados

→ Entidades: Cliente, responsável, pedido e ordem de serviço

→ Relacionamentos→ solicita, analisa, executa e arquiva

→ Software usado: Mysql

![ordem.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f75ea49f-ec98-40da-8b5f-444fea6761b2/ordem.png)

**Modelando Escopo de Universidade**

**Escopo**: Ensino

 **Narrativa**: Alunos

Levantamento de Requisitos:

→ A Universidade possui diversos alunos que podem estar matriculados em mais de um curso (graduação).

→ Os alunos podem fazer cursos extras fornecidos externa e internamente (universidade) para contar como horas complementares.

→ Não há restrição quanto ao número de matérias puxadas se não houver sobreposição de horário.

→ Os alunos são submetidos a duas provas por semestre para cada disciplina. Eventuais trabalhos devem ser  tratados pelo professor para compor a nota da prova.

→ Cada disciplina é fornecida por um professor. Restrição: apenas por este professor.

→ Algumas disciplinas possuem pré-requisitos. Um mesmo pré-requisito pode ser associado a mais de uma disciplina.

→ As disciplinas podem ser comuns a cursos distintos.

→ O ciclo de vida da disciplina é semestral.

→ Os professores que ministram as disciplinas estão associados as coordenações de seus respectivos cursos.

*Perguntas*: *Quais informações de aluno e professor guardar? Qual é a média de aprovação ? Haverá restrição, ou diferentes visões ?*

![universidade.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/56ae1f1f-36ae-47b1-bcd5-1211be093a43/universidade.png)

**Modelando Escopo de Ecommerce**

Venda de Produtos → Produto, cliente, pedido, estoque, fornecedor.

**Levantamento de Requisitos:**

**Narrativa - Produto**

→ Os produtos são vendidos por uma única plataforma online. Contido, estes podem ter vendedores distintos (terceiros).

→ Cada produto possui um fornecedor.

→ Um ou mais produtos podem compor um pedido.

**Narrativa - Cliente** 

→ O cliente pode se cadastrar no site com seu CPF ou CNPJ.

→ O endereço do cliente irá determinar o valor do frete.

→ Um cliente pode comprar mais de um pedido. Este tem um período de carência para a devolução do produto.

**Narrativa - Pedido**

→ Os pedidos são criados por clientes e possuem informações de compra, endereço e status de entrega. 

→ Um produto ou mais compõem o pedido.

→ O pedido pode ser cancelado.

Narrativa - Fornecedor & Estoque