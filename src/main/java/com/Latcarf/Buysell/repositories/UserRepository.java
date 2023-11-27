package com.Latcarf.Buysell.repositories;

import com.Latcarf.Buysell.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
