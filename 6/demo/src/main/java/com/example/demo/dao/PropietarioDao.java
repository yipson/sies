package com.example.demo.dao;

import com.example.demo.domains.Propietario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PropietarioDao extends JpaRepository<Propietario, Long> {
}
