/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import entitas.Jurusan;
import java.util.List;

/**
 *
 * @author amikom
 */
public interface JurusanInterface {
    List<Jurusan> select();
    Jurusan getById(Long id);
}
