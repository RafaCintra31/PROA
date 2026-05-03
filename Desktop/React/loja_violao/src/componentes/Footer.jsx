import Styles from '../css/Footer.module.css'
import WhathsAAp from '../assets/imagens/whats.png'
import Instagram from '../assets/imagens/insta.png'
import Facebook from '../assets/imagens/face.png'

function Footer(){
    return(
        <footer>
            <h2 className={Styles.h2_rodape}>Nossa Loja - Instrumentos Musicais</h2>
            <p className={Styles.endereco_rodape}>Rua Tito,54 - Lapa <br/> São Paulo - Brasil</p>
            <nav className={Styles.rodape_redes}>
                <a href="#"><img src={WhathsAAp} alt='Whats'/></a>
                <a href="#"><img src={Instagram} alt='Insta'/></a>
                <a href="#"><img src={Facebook} alt='Face'/></a>
            </nav>
        </footer>
    )
}

export default Footer
