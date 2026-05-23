package com.sena.sistemacitas.servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexionBD {

    Connection conexion;

    public Connection conectar() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            conexion = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/sistemacitas",
                    "root",
                    ""
            );

            System.out.println("Conexión exitosa");

        } catch (Exception e) {

            System.out.println("Error: " + e);

        }

        return conexion;
    }
}
