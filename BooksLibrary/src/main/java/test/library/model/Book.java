package test.library.model;

import javax.persistence.*;

@Entity
@Table(name = "books")
public class Book {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "author")
    private String author;

    @Column(name = "bookTitle")
    private String bookTitle;

    @Column(name = "year")
    private int year;

    @Column(name = "numberPages")
    private int numberPages;

    @Column(name = "genre")
    private String genre;

    @Column(name = "read1")
    private boolean read1;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getNumberPages() {
        return numberPages;
    }

    public void setNumberPages(int numberPages) {
        this.numberPages = numberPages;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public boolean isRead1() {
        return read1;
    }

    public void setRead1(boolean read) {
        this.read1 = read;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", bookTitle='" + bookTitle + '\'' +
                ", year=" + year +
                ", numberPages=" + numberPages +
                ", genre='" + genre + '\'' +
                ", read1=" + read1 +
                '}';
    }
}
