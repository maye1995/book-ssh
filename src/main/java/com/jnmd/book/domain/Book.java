package com.jnmd.book.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Book {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int no;
    
    private String name;
    
    private String author;
    
    private String price;
    
    private String discount;
    
    private String count;
    
    private String type;
    
    private String intorduce;

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getIntorduce() {
        return intorduce;
    }

    public void setIntorduce(String intorduce) {
        this.intorduce = intorduce;
    }

    public Book() {
        super();
    }

    public Book(String name, String author, String price, String discount, String count, String type,
            String intorduce) {
        super();
        this.name = name;
        this.author = author;
        this.price = price;
        this.discount = discount;
        this.count = count;
        this.type = type;
        this.intorduce = intorduce;
    }

    public Book(int no, String name, String author, String price, String discount, String count, String type,
            String intorduce) {
        super();
        this.no = no;
        this.name = name;
        this.author = author;
        this.price = price;
        this.discount = discount;
        this.count = count;
        this.type = type;
        this.intorduce = intorduce;
    }

    @Override
    public String toString() {
        return "Book [no=" + no + ", name=" + name + ", author=" + author + ", price=" + price + ", discount="
                + discount + ", count=" + count + ", type=" + type + ", intorduce=" + intorduce + "]";
    }
    
    
}
