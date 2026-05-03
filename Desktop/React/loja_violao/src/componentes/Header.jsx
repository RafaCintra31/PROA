import Styles from '../css/Header.module.css'
import Guitarra from "../assets/imagens/guitarras_header1.png"

function Header(){
    return(
        <header>
            <nav className={Styles.nav_header}>
                <ul>
                    <li><a href="#" >Home</a></li>
                    <li><a href="#" >Quem somos</a></li>
                    <li><a href="#" >Instrumentos</a></li>
                    <li><a href="#" >Endereço</a></li>
                    <li><a href="#" >Contato</a></li>
                </ul>
            </nav>
        </header>
    )
}

export default Header