package org.example;

public class FestaAniversario {

    private String nomeAniversariante;
    private int idade;
    private String local;
    private int numeroConvidados;
    private String tema;

    public FestaAniversario(String nomeAniversariante, int idade, String local, int numeroConvidados, String tema) {
        this.nomeAniversariante = nomeAniversariante;
        this.idade = idade;
        this.local = local;
        this.numeroConvidados = numeroConvidados;
        this.tema = tema;
    }

    public String getNomeAniversariante() { return nomeAniversariante; }
    public int getIdade() { return idade; }
    public String getLocal() { return local; }
    public int getNumeroConvidados() { return numeroConvidados; }
    public String getTema() { return tema; }

    public void setNomeAniversariante(String nomeAniversariante) { this.nomeAniversariante = nomeAniversariante; }
    public void setIdade(int idade) { this.idade = idade; }
    public void setLocal(String local) { this.local = local; }
    public void setNumeroConvidados(int numeroConvidados) { this.numeroConvidados = numeroConvidados; }
    public void setTema(String tema) { this.tema = tema; }

    public static void main(String[] args) {

        FestaAniversario festa = new FestaAniversario("Maria", 7, "Buffet Encantado", 50, "Princesas");

        System.out.println("=== Festa de Aniversário ===");
        System.out.println("Aniversariante: " + festa.getNomeAniversariante());
        System.out.println("Idade: " + festa.getIdade() + " anos");
        System.out.println("Local: " + festa.getLocal());
        System.out.println("Número de Convidados: " + festa.getNumeroConvidados());
        System.out.println("Tema: " + festa.getTema());

        festa.setTema("Super-Heróis");
        festa.setLocal("Chácara Alegria");

        System.out.println("\n=== Após alterações ===");
        System.out.println("Novo Tema: " + festa.getTema());
        System.out.println("Novo Local: " + festa.getLocal());
    }
}
