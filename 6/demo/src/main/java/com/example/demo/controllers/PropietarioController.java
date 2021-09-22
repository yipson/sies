package com.example.demo.controllers;

import com.example.demo.domains.Propietario;
import com.example.demo.service.PropietarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
public class PropietarioController {

    @Autowired
    PropietarioService propietarioService;

    @RequestMapping(value="/api_propietario/{id}", method = RequestMethod.GET)
    public Optional<Propietario> getPropietarioById(@PathVariable Long id){
        return propietarioService.getPropietarioById(id);
    }
}
