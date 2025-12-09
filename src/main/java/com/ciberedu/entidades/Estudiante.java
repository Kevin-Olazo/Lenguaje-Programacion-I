package com.ciberedu.entidades;

public class Estudiante {
    private int id;
    private String nombre;
    private String dni;
    private int edad;
    private String carrera;

    public Estudiante() {
    }

    public Estudiante(int id, String nombre, String dni, int edad, String carrera) {
        this.id = id;
        this.nombre = nombre;
        this.dni = dni;
        this.edad = edad;
        this.carrera = carrera;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }
}
