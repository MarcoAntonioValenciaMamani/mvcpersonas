/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.emergentes.controlador;
import com.emergentes.modelo.persona;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Marco
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            HttpSession ses = request.getSession();
            //String op = request.getParameter("op");
            String opcion = (request.getParameter("op") != null) ? request.getParameter("op") : "view";                    // la interrogacion es como una if que realiza la condicion en una linea
           
            if(ses.getAttribute("listaper")==null){
            
        ArrayList<persona> listaux =new ArrayList<persona>();
        ses.setAttribute("listaper", listaux);
                
            }
             ArrayList<persona> lista = (ArrayList<persona>)ses.getAttribute("listaper");
            switch(opcion){
                case "nuevo":
                    persona obj1=new persona();
                    request.setAttribute("mipersona", obj1);
                    request.getRequestDispatcher("editar.jsp").forward(request, response);
                    break;
                    case "editar":
                        break;
                    case "eliminar":
                        break;
                case"view":
                     response.sendRedirect("index.jsp");
                     break;
            }
            
         }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
