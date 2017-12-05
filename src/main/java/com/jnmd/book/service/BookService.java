package com.jnmd.book.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.book.dao.BookDao;
import com.jnmd.book.domain.Book;

@Service
public class BookService {
    @Resource
    private BookDao bookdao;
    private Book book;
    
    
    public BookDao getBookdao() {
        return bookdao;
    }

    public void setBookdao(BookDao bookdao) {
        this.bookdao = bookdao;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public void AddBook(Book b){
        bookdao.AddBook(b);
    }
    
    public List<Book> ListBook(){
        return bookdao.ListBook();
    }
    
    public Book bookDetial(int no){
        return bookdao.bookDetial(no);
    }
    
    public void DelBook(int no){
        book = bookdao.bookDetial(no);
        bookdao.DelBook(book);
    }
}
