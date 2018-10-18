# Show me the code

### # DESAFIO:

1 - Tela 

Tela de login, o campo de login deve aceitar cpf ou email, realizando a validação do mesmo 

O campo de senha deve validar se a senha tem pelo menos uma letra maiuscula, um caracter especial e um caracter alphanumerico, tambem deve ser validada.

apos validado com sucesso devera realizar login no endpoint:

request
{
user: "asd"
password: "asd"
}

response
{
conta: 2112
saldo: 23232
cartoes: asdfas
data: "2013-05-12"
segmento: legal 
}

os dados de retorno devem ser exibidos na segunda tela

2 - Tela 

a cor da tela deve se basear no segmento do usuário
Formatar o campo de agencia e conta 
Formatar o campo de saldo na moeda brasileira 
formatar a data 

### # Avaliação

Você será avaliado pela usabilidade, por respeitar o design e pela arquitetura do app. É esperado que você consiga explicar as decisões que tomou durante o desenvolvimento através de commits.

Obrigatórios:

* Swift 3.0 ou superior
* Autolayout
* O app deve funcionar no iOS 9
* Testes unitários (De preferência XCTest). Mas pode usar o que você tem mais experiência, só nos explique o que ele tem de bom.
* Arquitetura a ser utilizada: Swift Clean ([https://clean-swift.com/handbook/](https://clean-swift.com/handbook/) && [https://github.com/Clean-Swift/CleanStore](https://github.com/Clean-Swift/CleanStore) && [https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html)).
* Uso do git.

### # Dicas para o layout

* O formulário deve respeitar o conteúdo do cells.json ([https://floating-mountain-50292.herokuapp.com/cells.json](https://floating-mountain-50292.herokuapp.com/cells.json)) .
* Se o texto estiver muito grande, quebre em linhas e exiba por completo.
* O sketch está na proporção do iPhone 6, para iPhones menores/maiores é indicado que os espaçamentos se adaptem proporcionalmente.
* Na tela Fundos, o botão baixar irá abrir um SafariViewController no [google.com](http://google.com).
* A fonte a ser utilizada está em anexo no repositório.

### # Observações gerais

Adicione um arquivo [README.md](http://README.md) com os procedimentos para executar o projeto.
Pedimos que trabalhe sozinho e não divulgue o resultado na internet.

Faça um fork desse desse repositório em seu Github e nos envie um Pull Request com o resultado.

# BOA SORTE!
