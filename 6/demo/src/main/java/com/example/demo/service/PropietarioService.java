package com.example.demo.service;

import com.example.demo.domains.Propietario;

import java.util.Optional;

public interface PropietarioService {

    Optional<Propietario> getPropietarioById(Long id);
}
