import Styles from '../css/Endereco.module.css'

function Endereco(){
    return(
        <section className={Styles.endereco}>
            <div className={Styles.mapa}>  
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.122921548671!2d-46.69663112003376!3d-23.528080905745046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef8775663b04f%3A0x923835e9005f8309!2sSenac%20Lapa%20Tito!5e0!3m2!1spt-BR!2sbr!4v1773255764221!5m2!1spt-BR!2sbr"width="600" height="450" style={{ border: 0 }} allowFullScreen loading="lazy" referrerPolicy="no-referrer-when-downgrade" title="Mapa" />
            </div>
            <div className={Styles.localizacao}> 
                <h1 className={Styles.h1_loc}>Nossa Loja - Instrumentos Musicais</h1>
                <p className={Styles.p_loc}>Está situada na Rua Tito, 54 - Pompéia, próximo ao teatro Cacilda Becker, em uma construção do século XIX, numa área de 500m2, com uma variada gama de instrumentos, em um ambiente agradavel para toda a família!</p>
            </div>
        </section>
    )
}

export default Endereco