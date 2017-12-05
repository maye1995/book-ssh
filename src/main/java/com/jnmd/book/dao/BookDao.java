package com.jnmd.book.dao;



import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jnmd.book.domain.Book;


@Repository
@Transactional
public class BookDao {
     @Resource
     private HibernateTemplate hibernateTemplate;
     
     public void AddBook(final Book b){
         hibernateTemplate.execute(new HibernateCallback(){

            @Override
            public Object doInHibernate(Session session) throws HibernateException {
                session.save(b);
                return null;
            }
             
        });
     }
     
     public List<Book> ListBook(){
         return hibernateTemplate.execute(new HibernateCallback() {

            @Override
            public Object doInHibernate(Session session) throws HibernateException {
               String hql ="from Book";
               Query query =session.createQuery(hql);
               List list =query.list();
                return list;
            }
        });
     }
     
     public Book bookDetial(int no){
         return hibernateTemplate.get(Book.class,no);
     }
     
     public void DelBook(Book book){
         hibernateTemplate.delete(book);
     }
}
