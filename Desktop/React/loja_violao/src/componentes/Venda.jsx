import Styles from '../css/Venda.module.css'
import Guitarrinha from '../assets/imagens/guitarrinha.jpg'

function Venda(){
    return(
        <section className={Styles.vendas}>
            <div className={Styles.div_vendas}>
                <img src={Guitarrinha} alt='Guitarra'/>
                <nav className={Styles.nav_venda}>
                <p className={Styles.info}>VIOLÃO YAMAHA C70 II CLÁSSICO
                    NYLON ACÚSTICO NATURAL
                    BRILHANTE</p>
                <p className={Styles.valor}>R$ 989,50</p>
                </nav>
            </div>

            <div className={Styles.div_vendas}>
                <img src={Guitarrinha} alt='Guitarra'/>
                <nav className={Styles.nav_venda}>
                <p className={Styles.info}>VIOLÃO YAMAHA C70 II CLÁSSICO
                    NYLON ACÚSTICO NATURAL
                    BRILHANTE</p>
                <p className={Styles.valor}>R$ 989,50</p>
                </nav>
            </div>

            <div className={Styles.div_vendas}>
                <img src={Guitarrinha} alt='Guitarra'/>
                <nav className={Styles.nav_venda}>
                <p className={Styles.info}>VIOLÃO YAMAHA C70 II CLÁSSICO
                    NYLON ACÚSTICO NATURAL
                    BRILHANTE</p>
                <p className={Styles.valor}>R$ 989,50</p>
                </nav>
            </div>

            <div className={Styles.div_vendas}>
                <img src={Guitarrinha} alt='Guitarra'/>
                <nav className={Styles.nav_venda}>
                <p className={Styles.info}>VIOLÃO YAMAHA C70 II CLÁSSICO
                    NYLON ACÚSTICO NATURAL
                    BRILHANTE</p>
                <p className={Styles.valor}>R$ 989,50</p>
                </nav>
            </div>
        </section>
    )
}

export default Venda