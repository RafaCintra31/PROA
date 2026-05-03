import Contato from './componentes/Contato'
import Endereco from './componentes/Endereco'
import Footer from './componentes/Footer'
import Header from './componentes/Header'
import Sobre_loja from './componentes/Sobre_loja'
import Venda from './componentes/Venda'
import './css/App.css'

function App() {

  return (
    <main>
      <Header/>
      <Sobre_loja/>
      <Venda/>
      <Endereco/>
      <Contato/>
      <Footer/>
    </main>
  )
}

export default App
