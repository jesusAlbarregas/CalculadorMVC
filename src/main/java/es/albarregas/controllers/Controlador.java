/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.models.Sumador;
import es.albarregas.models.Divisor;
import es.albarregas.models.Multiplicador;
import es.albarregas.models.Restador;
import es.albarregas.beans.Calculator;
import es.albarregas.exceptions.DivisionPorCeroException;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jesus
 */
@WebServlet(name = "Controlador", urlPatterns = {"/control"})
public class Controlador extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("error", "Se está intentando acceder sin pasar por el formulario de entrada");
        request.getRequestDispatcher("JSP/error.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Date fecha;
        SimpleDateFormat sdf;
        boolean error;
        String url = "JSP/resultado.jsp";
        Calculator calculator = new Calculator();

        try {
            int operando1 = Integer.parseInt(request.getParameter("operando1"));
            int operando2 = Integer.parseInt(request.getParameter("operando2"));
            String operacion = request.getParameter("operacion");

            error = false;
            switch (operacion) {
                case "suma":
                    Sumador sumador = new Sumador();

                    calculator.setResultado(sumador.sumar(operando1, operando2));
                    calculator.setSigno("+");
                    break;
                case "resta":
                    Restador restador = new Restador();

                    calculator.setResultado(restador.restar(operando1, operando2));
                    calculator.setSigno("-");
                    break;
                case "producto":
                    Multiplicador multiplicador = new Multiplicador();

                    calculator.setResultado(multiplicador.multiplicar(operando1, operando2));
                    calculator.setSigno("*");
                    break;
                case "division":
                    Divisor divisor = new Divisor();
                    try {

                        calculator.setResultado(divisor.dividir(operando1, operando2));
                        calculator.setSigno("/");
                    } catch (DivisionPorCeroException e) {

                        error = true;

                    }
            }
            if (error) {
                request.setAttribute("error", "Se está intentando dividir por cero");

                url = "JSP/error.jsp";
            } else {
                fecha = new Date();
                sdf = new SimpleDateFormat("dd-MM-yyyy  HH:mm:ss");

                calculator.setOperando1(operando1);
                calculator.setOperando2(operando2);
                request.setAttribute("fecha", sdf.format(fecha));
                request.setAttribute("calcula", calculator);


            }

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Alguno de los operandos no es un número válido");

            url = "JSP/error.jsp";
        }
        
        request.getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
