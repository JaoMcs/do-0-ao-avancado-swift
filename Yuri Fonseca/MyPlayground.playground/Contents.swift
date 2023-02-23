import Cocoa

var greeting = "Hello, playground"

var nome: String = "Yuri"

var idade: Int = 21

var idade_Jaozinho: Int = 20

let somaIdades = idade + idade_Jaozinho

let sobrenome = " Fonseca"

//nome.append(sobrenome)

let pi: Double = 3.14567545

let altura: Float = 1.89

var isBatistaHere: Bool
isBatistaHere = false

var numPessoas: Int

if !isBatistaHere{
    numPessoas = 1
}else {
    numPessoas = 2
}
let informacoes = "Nome = \(nome), Idade = \(idade), Numero de pessoas = \(numPessoas)"
print(informacoes)

var x: [String]
x = [nome, sobrenome, informacoes]

x.first
x.last
x.removeLast()


enum Result {
    case win
    case lose
}

let Luta25: Result = .lose

if Luta25 == .win {
    // fazer algo
}else{
    // fazer outra coisa
}

func printName(nome: String, sobrenome: String){
    print("\(nome) \(sobrenome)")
}

printName(nome: nome, sobrenome: sobrenome)












