/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.gch.web.servlets.laboratorio;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.cibertec.gch.logica.GestorLaboratorio;
import pe.edu.cibertec.gch.modelo.Laboratorio;

/**
 *
 * @author JAVA_MJ
 */
@WebServlet(name = "RegistroLaboratorioServlet", urlPatterns = {"/registrarLaboratorio"})
public class RegistroLaboratorioServlet extends HttpServlet {
    
    private GestorLaboratorio gestorLaboratorio = new GestorLaboratorio();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String codigo = req.getParameter("codigo"),
                nombre = req.getParameter("nombre"),
                descripcion = req.getParameter("descripcion"),
                local = req.getParameter("local"),
                pabellon = req.getParameter("pabellon"),
                salon = req.getParameter("salon");
                //estado = req.getParameter("estado");        
        int capacidad =Integer.parseInt(req.getParameter("capacidad"));  

        //GestorFactory.getGestorLaboratorio().registrar(NuevoLab);
        //resp.sendRedirect("listarLaboratorios");
        Laboratorio nuevoLaboratorio = new Laboratorio().conCodigo(codigo)
                .conNombre(nombre)
                .conDescripcion(descripcion)
                .conLocal(local)
                .conPabellon(pabellon)
                .conSalon(salon)
                .conCapacidad(capacidad);

        gestorLaboratorio.registrar(nuevoLaboratorio);
        resp.sendRedirect("listarLaboratorios");
    }

   
}
