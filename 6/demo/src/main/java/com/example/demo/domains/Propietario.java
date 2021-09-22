package com.example.demo.domains;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter @Setter
@Table(name = "propietario")
public class Propietario implements Serializable {

    @Id
    @Column(name = "idpropietario")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "direccion")
    private String direccion;

    @Column(name = "telefono")
    private String telefono;

    @Column(name = "correo")
    private String correo;

    @Column(name = "comentarios")
    private String comentarios;

}
