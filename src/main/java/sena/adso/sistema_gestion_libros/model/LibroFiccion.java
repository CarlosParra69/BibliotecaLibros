package sena.adso.sistema_gestion_libros.model;

public class LibroFiccion extends Libro {
    private String genero; // fantasía, ciencia ficción, misterio, etc.
    private boolean esSerie;

    public LibroFiccion(String isbn, String titulo, String autor, int añoPublicacion, String genero, boolean esSerie) {
        super(isbn, titulo, autor, "Ficcion", añoPublicacion);
        this.genero = genero;
        this.esSerie = esSerie;
        System.out.println("LibroFiccion creado con año: " + añoPublicacion);
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public boolean isEsSerie() {
        return esSerie;
    }

    public void setEsSerie(boolean esSerie) {
        this.esSerie = esSerie;
    }

    @Override
    public String getDescripcion() {
        return getTitulo() + " es un libro de ficción del género " + genero +
               (esSerie ? ", y forma parte de una serie." : ", y es una historia independiente.");
    }

    @Override
    public String toString() {
        return super.toString() + ", Género: " + genero +
               ", Parte de una serie: " + (esSerie ? "Sí" : "No");
    }
}
