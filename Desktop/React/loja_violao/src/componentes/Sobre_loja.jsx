import Styles from '../css/Sobre_loja.module.css'
import Loja from '../assets/imagens/loja.jpg'

function Sobre_loja(){
    return(
        <section className={Styles.sobre_loja}>
            <div className={Styles.loja}>
                <h1>Nossa Loja - Instrumentos Musicais</h1>
                <p>Se você é um amante da música, está em busca de um novo instrumento musical e não abre mão da qualidade, chegou ao lugar certo! Aqui em nossa loja você encontra os melhores itens, como: teclado, piano (digital e acustico), contrabaixo, bateria, guitarra,violão, sopro e muito mais! Nossos instrumentos possuem o selo de qualidade das melhores marcas do mercado! Escolha os seus favoritos e os receba em casa com toda a comodidade que você precisa. Confira nossas opções disponíveis e tenha em mãos instrumentos de ponta!</p>
                </div>
            <div className={Styles.foto_loja}> <img src={Loja} alt='Loja' /> </div>
        </section>
    )
}

export default Sobre_loja