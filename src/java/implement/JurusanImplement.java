/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package implement;

import entitas.Jurusan;
import interfaces.JurusanInterface;
import java.util.List;
import javax.persistence.EntityManager;

/**
 *
 * @author amikom
 */
public class JurusanImplement extends GeneralImplement implements JurusanInterface{

    EntityManager em;

    public JurusanImplement() {
        super();
        em = super.em;
    }
    
    @Override
    public List<Jurusan> select() {
       List<Jurusan> lj = em.createQuery("select J from Jurusan J").getResultList();
        return lj;    
    }

    @Override
    public Jurusan getById(Long id) {
        Jurusan j = em.find(Jurusan.class, id);
        return j;
    }
    
}
