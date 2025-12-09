package com.ciberedu.modelos;

import com.ciberedu.entidades.Estudiante;
import com.ciberedu.util.MySqlConexion;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EstudianteModel {

    public List<Estudiante> listarEstudiantes() {
        List<Estudiante> lista = new ArrayList<>();
        Connection con = null;
        CallableStatement cs = null; // Para llamar a Stored Procedures
        ResultSet rs = null;         // Para leer los datos

        try {
            con = MySqlConexion.getConexion();

            // 1. Llamada al Procedimiento Almacenado
            String sql = "{CALL sp_listar_estudiantes()}";
            cs = con.prepareCall(sql);

            // 2. Ejecutar y obtener resultados
            rs = cs.executeQuery();

            // 3. Recorrer el ResultSet
            while (rs.next()) {
                Estudiante est = new Estudiante();
                est.setId(rs.getInt("Id"));
                est.setNombre(rs.getString("nombre"));
                est.setDni(rs.getString("dni"));
                est.setEdad(rs.getInt("edad"));
                est.setCarrera(rs.getString("carrera"));

                lista.add(est); // Agregar a la lista
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (cs != null) cs.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        return lista;
    }
}
