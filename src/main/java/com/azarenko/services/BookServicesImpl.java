package com.azarenko.services;

import com.azarenko.dao.BookDao;
import com.azarenko.model.Book;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class BookServicesImpl implements BookServices {
    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }
    @Override
    @Transactional
    public void addBook(Book book) {
     this.bookDao.add(book);
    }

    @Override
    @Transactional
    public void updateBook(Book book) {
        this.bookDao.updateBook(book);
    }

    @Override
    @Transactional
    public void removeBook(int id) {
        this.bookDao.remove(id);
    }

    @Override
    @Transactional
    public void makeRead(Book book) {
        this.bookDao.makeRead(book);
    }

    @Override
    @Transactional
    public Book getBook(int id) {
        return this.bookDao.getBook(id);
    }

    @Override
    @Transactional
    public List<Book> listBooks() {
        return this.bookDao.listbooks();
    }

    @Override
    @Transactional
    public List<Book> searchBooks(String searchParameter, String searchText) {
        return this.bookDao.searchBooks(searchParameter,searchText);
    }
}
