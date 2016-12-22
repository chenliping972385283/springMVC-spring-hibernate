package simples.entity;

import sun.reflect.CallerSensitive;

import javax.persistence.*;

/**
 * Created by jinli on 2016/12/21.
 */
@Entity
public class Customer {

    private int id;

    private  String name;

    private  String telephone;

    @Column
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}
