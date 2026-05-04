import {Link} from 'react-router-dom'
import Styles from '../css/Header.module.css'
import Guitarra from "../assets/imagens/guitarras_header1.png"

function Header(){
    return(
        <header>
            <nav className={Styles.nav_header}>
                <ul>
                    <li><Link to='/'>Home</Link></li>
                    <li><Link to='/Sobre_loja'>Quem somos</Link></li>
                    <li><Link to='/Venda'>Instrumentos</Link></li>
                    <li><Link to='/Endereco'>Endereço</Link></li>
                    <li><Link to='/Contato'>Contato</Link></li>
                </ul>
            </nav>
        </header>
    )
}

export default Header