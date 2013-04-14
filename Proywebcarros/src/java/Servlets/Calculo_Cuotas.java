/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Auto.Auto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "Calculo_Cuotas", urlPatterns = {"/Calculo_Cuotas"})
public class Calculo_Cuotas extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Auto auto=new Auto();
        auto.setCliente(request.getParameter("nombre"));
        auto.setCuotas(Integer.parseInt(request.getParameter("cuotas")));
        auto.setAuto(request.getParameter("auto"));
        auto.calcular_precioContado();
        auto.calcularInteres();
        auto.calcularCuotaInicial();
        auto.calcularPagoTotal();
        
        request.setAttribute("cuota", auto.getCuotas());
        request.setAttribute("nombre", auto.getCliente());
        request.setAttribute("auto", auto.getAuto());
        request.setAttribute("interes", auto.getIntereses());
        request.setAttribute("cuota_inicial", auto.getCuota_ini());
        request.setAttribute("precio_contado", auto.getPrec_contado());
        request.setAttribute("pago_total", auto.getPrec_total());
        
        getServletContext().getRequestDispatcher("/Calendario_Pagos.jsp").forward(request, response);
        
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
