package com.example.demo.service;

import com.example.demo.dao.PropietarioDao;
import com.example.demo.domains.Propietario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PropietarioServiceImp implements PropietarioService{

    @Autowired
    PropietarioDao propietarioDao;


    @Override
    public Optional<Propietario> getPropietarioById(Long id) {
        return propietarioDao.findById(id);
    }
}
