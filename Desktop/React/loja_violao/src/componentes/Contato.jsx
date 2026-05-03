import Styles from '../css/Contato.module.css'
import WhathsAAp from '../assets/imagens/whats.png'
import Instagram from '../assets/imagens/insta.png'
import Facebook from '../assets/imagens/face.png'

function Contato(){
    return(
        <section className={Styles.contato}>
            <div className={Styles.formurario}>  
                <div className={Styles.nome}>              
                <label for="nome"> Entre com o seu nome:</label>                  
                    <input type="text" name="nome" maxlength="30" size="50" placeholder="Digite seu nome  aqui:" />                         
                </div> 
                <div className={Styles.email}>
                <label for="mail"> Entre com o seu e-mail:</label>                  
                    <input type="email" name="mail" maxlength="30" size="30" placeholder="Digite seu email  aqui:" />
                    </div>

                    <textarea cols="40" rows="10" placeholder="Faça seu pedido por aqui:"></textarea>
                    <button>Enviar</button>
            </div>

            <div className={Styles.contato_redes}>
                <h1 className={Styles.sociais}>Acesse também nossas redes socias:</h1>
                <nav className={Styles.icon_redes}>
                    <a href="#"><img src={WhathsAAp} alt='Whats'/></a>
                    <a href="#"><img src={Instagram} alt='Insta'/></a>
                    <a href="#"><img src={Facebook} alt='Face'/></a>
                </nav>
            </div>
        </section>
    )
}

export default Contato