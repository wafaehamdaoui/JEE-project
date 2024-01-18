package com.eidia.exam;

import java.util.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.eidia.exam.dao.DemandeRepository;
import com.eidia.exam.entity.Demande;

@SpringBootApplication
public class NewtpApplication {

    public static void main(String[] args) {
    	ApplicationContext ctx = SpringApplication.run(NewtpApplication.class, args);
    	DemandeRepository demandeRepository = ctx.getBean(DemandeRepository.class);
    	//demandeRepository.save(new Demande(Date.UTC(0, 0, 0, 0, 0, 0),Date.UTC(0, 0, 0, 0, 0, 0),null, null, "motif","in progress"));
    	demandeRepository.findAll().forEach(d->System.out.println(d.toString()));
    }

}
