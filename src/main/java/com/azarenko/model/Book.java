package com.azarenko.model;

import javax.persistence.*;

@Entity
@Table(name = "book", schema = "books")
public class Book {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "author")
    private String author;

    @Column(name = "descriptoin")
    private String descriptoin;

    @Column(name = "isbn")
    private String isbn;

    @Column(name = "printYear")
    private String printYear;

    @Column(name = "readAlready")
    private boolean readAlready;

    @Column(name = "title")
    private String title;

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

    public String getDescriptoin() {
        return descriptoin;
    }

    public void setDescriptoin(String descriptoin) {
        this.descriptoin = descriptoin;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getPrintYear() {
        return printYear;
    }

    public void setPrintYear(String printYear) {
        this.printYear = printYear;
    }

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", descriptoin='" + descriptoin + '\'' +
                ", isbn='" + isbn + '\'' +
                ", printYear='" + printYear + '\'' +
                ", readAlready=" + readAlready +
                ", title='" + title + '\'' +
                '}';
    }
}
