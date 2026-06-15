package org.example;

public class TelefoneCelular {

    private String marca;
    private String modelo;
    private String cor;
    private double preco;
    private int armazenamentoGB;

    public TelefoneCelular(String marca, String modelo, String cor, double preco, int armazenamentoGB) {
        this.marca = marca;
        this.modelo = modelo;
        this.cor = cor;
        this.preco = preco;
        this.armazenamentoGB = armazenamentoGB;
    }

    public String getMarca() { return marca; }
    public String getModelo() { return modelo; }
    public String getCor() { return cor; }
    public double getPreco() { return preco; }
    public int getArmazenamentoGB() { return armazenamentoGB; }

    public void setMarca(String marca) { this.marca = marca; }
    public void setModelo(String modelo) { this.modelo = modelo; }
    public void setCor(String cor) { this.cor = cor; }
    public void setPreco(double preco) { this.preco = preco; }
    public void setArmazenamentoGB(int armazenamentoGB) { this.armazenamentoGB = armazenamentoGB; }

    public static void main(String[] args) {
        TelefoneCelular celular = new TelefoneCelular("Samsung", "Galaxy S24", "Preto", 4999.90, 256);

        System.out.println("=== Telefone Celular ===");
        System.out.println("Marca: " + celular.getMarca());
        System.out.println("Modelo: " + celular.getModelo());
        System.out.println("Cor: " + celular.getCor());
        System.out.println("Preço: R$ " + celular.getPreco());
        System.out.println("Armazenamento: " + celular.getArmazenamentoGB() + " GB");

        // Usando setter para alterar um atributo
        celular.setCor("Branco");
        System.out.println("\nNova cor: " + celular.getCor());
    }
}
