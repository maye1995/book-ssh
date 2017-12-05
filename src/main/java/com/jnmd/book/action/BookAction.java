package com.jnmd.book.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;

import com.jnmd.book.domain.Book;
import com.jnmd.book.service.BookService;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Results({
        @Result(name="success", location="/ListBooks.jsp"),
        @Result(name="addok", type="redirect", location="/bookAction"),
        @Result(name="addError", type="redirect", location="/bookAction"),
        @Result(name="detial",location="/BookDetials.jsp"),
        @Result(name="delete",location="/ListBooks.jsp")
})
public class BookAction extends ActionSupport{
    
    @Resource
    private BookService bookService;
   
    private List<Book> books;
    
    private Book book;
    
    
    public BookService getBookService() {
        return bookService;
    }

    public Book getBook() {
        return book;
    }
    
    public List<Book> getBooks() {
        return books;
    }
    @Action("bookAction")
    public String books() throws Exception{
        books = bookService.ListBook();
        
        return SUCCESS;
    }
    @Action("AddAction")
    public String addBook() throws Exception{
        HttpServletRequest request = ServletActionContext.getRequest();
        String name=request.getParameter("name");
        String author=request.getParameter("author");
        String count=request.getParameter("count");
        String discount=request.getParameter("discount");
        String price=request.getParameter("price");
        String type =request.getParameter("type");
        String intorduce=request.getParameter("intorduce");
        Book b =new Book(name, author, price, discount, count, type, intorduce);
        bookService.AddBook(b);
        
        return "addok";
    }
    @Action("BookDetial")
    public String bookDetial() throws Exception{
        HttpServletRequest request = ServletActionContext.getRequest();
        String no2  =request.getParameter("no");
        int no =Integer.parseInt(no2);
        book=bookService.bookDetial(no);
        return "detial";
    }
    @Action("DelBook")
    public String DelBook() throws Exception{
        HttpServletRequest request = ServletActionContext.getRequest();
        String no2  =request.getParameter("no");
        System.out.println(no2);
        int no =Integer.parseInt(no2);
        bookService.DelBook(no);
        return "delete";
    }
}
