/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package implement;

import entitas.Jurusan;
import entitas.Mahasiswa;
import interfaces.MahasiswaInterfaces;
import java.util.List;
import javax.persistence.EntityManager;

/**
 *
 * @author amikom
 */
public class MahasiswaImplement extends GeneralImplement implements MahasiswaInterfaces{

    private EntityManager em;
    
    public MahasiswaImplement() {
        super();
        em = super.em;
    }

    @Override
    public List<Mahasiswa> select() {
        List<Mahasiswa> lm = em.createQuery("select m from Mahasiswa m JOIN Jurusan j on m.jurusan = j").getResultList();
        return lm;
    }
    
}
