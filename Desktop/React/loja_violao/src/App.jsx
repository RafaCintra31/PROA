import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
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
      <Router>
        <Header/>
        <Routes>
          <Route path='/Sobre_loja' element={<Sobre_loja/>} />
          <Route path='/Venda' element={<Venda/>} />
          <Route path='/Endereco' element={<Endereco/>} />
          <Route path='/Contato' element={<Contato/>} />
        </Routes>
        <Footer/>
      </Router>
    </main>
  )
}

export default App
