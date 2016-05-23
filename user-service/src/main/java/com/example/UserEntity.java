package com.example;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Weijie on 5/22/2016.
 */

@Entity
@Table(name="USER")
@Data
public class UserEntity {

    @Id
    @GeneratedValue
    private long id;

    private String name;

    private String username;

    public UserEntity(){

    }

    public UserEntity(String name){
        this.name = name;
    }

}
