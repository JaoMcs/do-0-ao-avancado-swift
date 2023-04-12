struct Artista{
  let id: Int
  var nome: String
}

class Musica{
  let id: Int
  var nome: String
  var artista: Artista
  var duracao: Double
  var nota: Float?

  init(id: Int, nome: String, artista: Artista, duracao: Double, nota: Float?){
    self.id = id
    self.nome = nome
    self.artista = artista
    self.duracao = duracao
    self.nota = nota
  }
}

class Usuario{
  var id: Int
  var nome: String
  var dinheiro: Double
  var idade: Int?

  init(id: Int, nome: String, dinheiro: Double, idade: Int?){
    self.id = id
    self.nome = nome
    self.dinheiro = dinheiro
    self.idade = idade
  }

  
}

var usuario1: Usuario = Usuario(id: 1, nome: "Yuri", dinheiro: 20.50, idade: 21)
var usuario2: Usuario = Usuario(id: 2, nome: "Maria", dinheiro: 10.50, idade: 24)
let artista1: Artista = Artista(id: 1, nome: "Artista1") 
let artista2: Artista = Artista(id: 2, nome: "Artista2") 
let artista3: Artista = Artista(id: 3, nome: "Artista3") 

let musica1: Musica = Musica(id: 1, nome: "Nome1", artista: artista1, duracao: 2.31, nota: 7.0)
let musica2: Musica = Musica(id: 2, nome: "Nome2", artista: artista2, duracao: 2.58, nota: 6.5)
let musica3: Musica = Musica(id: 3, nome: "Nome3", artista: artista3, duracao: 3.46, nota: 8.5)

class Jukebox{
  var musicas: [Musica]
  var fila: [Musica]
  var valor: Double
  var usuario: Usuario?

  init(musicas: [Musica], fila: [Musica], valor: Double){
    self.musicas = musicas
    self.fila = fila
    self.valor = valor
  }
  
  func escolheMusica(mID: Int, usuario: Usuario) ->  [Musica] {
    self.usuario = usuario
    // Enfileira as musicas
    for music in musicas{
      if (music.id == mID){
           fila.append(music) 
      }
    }
    // Cobra o usuario
    self.usuario?.dinheiro -= valor
    return fila
  }

  func escolheMusica(mNome: String, usuario: Usuario) -> [Musica] {
    //self.usuario = usuario
    // Enfileira as musicas
    for music in musicas{
      if (music.nome == mNome){
        fila.append(music)
      }
    }
    // Cobra o usuario
    self.usuario?.dinheiro -= valor
    return fila
  }

  func printMusica(msc: Musica){
    var stringFinal = "Musica encontrada: ID: \(msc.id), Nome: \(msc.nome), Artista: \(msc.artista), Duracao: \(msc.duracao)"
    if let nota = (msc.nota){
      stringFinal += "\(nota)"
    }
    print(stringFinal)
  }
  
  func consultaMusica(mID: Int) {
    for music in musicas{
      if (music.id == mID){
        printMusica(msc: music)
      }
    }
  }

  func consultaMusica(mNome: String){
    for music in musicas{
      if (music.nome == mNome){
        printMusica(msc: music)
      }
    }
  }

  func consultaAll(){
    for music in fila{
      printMusica(msc: music)
    }
  }

  func consultaPorArtista(artID: Int){
    for music in musicas{
      if (music.artista.id == artID){
        printMusica(msc: music)
      }
    }
  }

  func consultaPorArtista(artNome: String){
    for music in musicas{
      if (music.artista.nome == artNome){
        printMusica(msc: music)
      }
    }
  }

  func retiraMusica(mID: Int){
    musicas.remove(at: mID - 1)
    print("Musica de ID: \(mID) removida da fila.")
  }
  
  func returnFila(){
    for music in fila{
      printMusica(msc: music)
    }
  }
  
}

var jbox = Jukebox(musicas: [musica1, musica2, musica3], fila: [], valor: 5)
jbox.escolheMusica(mNome: "Nome3", usuario: usuario1)
jbox.escolheMusica(mNome: "Nome3", usuario: usuario2)
jbox.consultaAll()