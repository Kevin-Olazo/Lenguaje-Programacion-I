package com.ciberedu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConexion {

    private static final String URL = "jdbc:mysql://localhost:3306/ciberedu";
    private static final String USER = "root";
    private static final String PASS = "root";

    public static Connection getConexion(){
        Connection con = null;
        try {
            // 1. Cargar el Driver
            // Usamos la version moderna con "cj"
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Establecer la conexión
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Conexión a Base de datos exitosa");

        } catch (ClassNotFoundException e){
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return con;
    }

    public static void main(String[] args) {
        getConexion();
    }
}
