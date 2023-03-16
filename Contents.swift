import Cocoa

// Mark: - Struct

//struct Nome da Struct {
//    // Let  ou Var
//    // Funções <<<
//}
struct Pessoa {
    let nomeCompleto: String
    var idade: Int
}

var deris = Pessoa(nomeCompleto: "Derian Junior", idade: 25)

// Mark: - Func

//func Nome Da Func (nome da Variavel: Tipo da variavel) {
//    BLOCO DE CODIGO
//}
//
//func Nome Da Func (nome da Variavel: Tipo da variavel) -> tipo do retorno  {
//    BLOCO DE CODIGO
//
//    return variavel que condiz com o tipo do retorno
//}

func ImprimeUsuario(usuario: Pessoa) {
    print(usuario.nomeCompleto)
    print(usuario.idade)
}

ImprimeUsuario(usuario: deris)

func soma(valor1: Int, valor2: Int) -> Int {
    let resultado = valor1 + valor2
    return resultado
}

var resultadoSoma = soma(valor1: 1, valor2: 2)

print(resultadoSoma)

// Mark: - Class

//class Nome da Classe : herança da classe (caso tenha) {
//    let ou var
//
//    funcoes (metodos)
//}

class TurmaAlunos {
    var numeroDeAlunos: Int
    var alunos: [Pessoa]
    
    init(alunos: [Pessoa]) {
        self.alunos = alunos
        self.numeroDeAlunos = alunos.count
    }
    
    
    func adicionarAluno(nome: String, idade: Int) {
        // Bloco de codigo
        // Criar o struct pessoa
        let alunoNovo = Pessoa(nomeCompleto: nome, idade: idade)
        
        // append no alunos com o objeto pessoa
        alunos.append(alunoNovo)
        atualizaNumeroAlunos()
    }
    
    func adicionarAluno(alunoNovo: Pessoa) {
        // Bloco de codigo
        // append no alunos com o objeto pessoa
        alunos.append(alunoNovo)
        atualizaNumeroAlunos()
    }
    
    func removeAluno(nome: String, idade: Int) {
        for aluno in alunos {
            // Verificação de Nome e Idade
            if aluno.nomeCompleto == nome,
               aluno.idade == idade {
                // aluno <- ao que eu quero remover
                alunos.removeAll { alunoRemovido in
                    return alunoRemovido.nomeCompleto == aluno.nomeCompleto
                }
            }
        }
        atualizaNumeroAlunos()
    }
    
    func removeAluno(index: Int) {
        alunos.remove(at: index)
        atualizaNumeroAlunos()
    }
    
    func printaClasse() {
        print("\n\nTurma da Sala de Aula\nalunos:\n")
        for aluno in alunos {
            print(aluno.nomeCompleto)
            print(aluno.idade)
        }
        print("Numero de integrantes na turma: \(numeroDeAlunos)")
    }
    
    func atualizaNumeroAlunos() {
        numeroDeAlunos = alunos.count
    }
}

var masterClass = TurmaAlunos(alunos: [ Pessoa(nomeCompleto: "Yuri Boca", idade: 21),
                                       Pessoa(nomeCompleto: "Batista Baixo", idade: 22),
                                       deris])

masterClass.removeAluno(nome: deris.nomeCompleto, idade: deris.idade)

print(masterClass.printaClasse())

masterClass.adicionarAluno(alunoNovo: deris)

print(masterClass.printaClasse())


// Cada um vai ter que pensar e desenvolver 2 metodos a mais na classe
// Metodo = função dentro da classe
// Pelo menos 1 variavel a mais
