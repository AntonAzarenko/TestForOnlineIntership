package com.azarenko.services;

import com.azarenko.model.Book;

import java.util.List;

public interface BookServices {
    void addBook(Book book);

    void updateBook(Book book);

    void removeBook(int id);

    void makeRead(Book book);

    Book getBook(int id);

    List<Book> listBooks();

    List<Book> searchBooks(String searchParameter, String searchText);
}
