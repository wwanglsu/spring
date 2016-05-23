package com.example;

/**
 * Created by Weijie on 5/22/2016.
 */

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface UserEntityRepo extends JpaRepository<UserEntity, Long>{
    List<UserEntity> findByName(String name);
}
