package pe.edu.cibertec.gch.web.servlets.horario;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.cibertec.gch.dao.FactoryDao;
import pe.edu.cibertec.gch.modelo.TipoBusqueda;
import pe.edu.cibertec.gch.web.servlets.GchServletUtils;

/**
 *
 * @author JAVA_MJ
 */
@WebServlet(name = "BuscarHorarioServlet", urlPatterns="/buscarHorarios")
public class BuscarHorarioServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    String descripcion = req.getParameter("descripcion"),
                tipoBusqueda = req.getParameter("tipoBusqueda");
        
        // Según el código del tipo de búsqueda, obtener el valor del enum
        TipoBusqueda tipoBusquedaEnum = TipoBusqueda.obtenerPorCodigo(Integer.parseInt(tipoBusqueda));
        
        
        req.setAttribute("horarios", FactoryDao.getInstance().getHorarioDao().obtenerSegun(descripcion, tipoBusquedaEnum));
        
        GchServletUtils.reenviarAModulo("horario", req, resp);
        
    }
    
}
