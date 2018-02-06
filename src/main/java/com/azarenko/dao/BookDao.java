package com.azarenko.dao;

import com.azarenko.model.Book;

import java.util.List;

public interface BookDao {
    void add(Book book);

    void updateBook(Book book);

    void remove(int id);

    void makeRead(Book book);

    Book getBook(int id);

    List<Book> listBooks();

    List<Book> searchBooks(String searchParameter, Object searchText);
}