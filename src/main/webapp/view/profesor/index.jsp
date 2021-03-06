<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="gch" uri="/WEB-INF/tlds/gch" %>
<gch:base titulo="Listado de Profesores">
    <div class="informacion">
        <span>${mensaje}</span>
    </div>
    <form action="buscarProfesores">
        <div class="informacion" style="display: ${empty requestScope.errores ? 'none' : 'block'}">
            <ul>
                <c:forEach var="error" items="${requestScope.errores}">
                    <li>${error.value}</li>
                </c:forEach>
            </ul>
        </div>
        <fieldset>
            <legend>Datos de B&uacute;squeda</legend>
            <div>
                <label for="nombres">
                    Nombres
                </label>
                <input type="search" name="nombres" id="nombres" maxlength="50" />
            </div>
            <div>
                <label for="apellidoPaterno">
                    Apellido Paterno
                </label>
                <input type="search" name="apellidoPaterno" id="apellidoPaterno" maxlength="50" />
            </div>
            <div>
                <label for="apellidoMaterno">
                    Apellido Materno
                </label>
                <input type="search" name="apellidoMaterno" id="apellidoMaterno" maxlength="50" />
            </div>
            <div>
                <label for="tipoBusqueda">
                    Tipo Busqueda
                </label>
                <select name="tipoBusqueda">
                    <option value="0">Completa</option>
                    <option value="1">Parcial</option>
                </select>
            </div>              
        </fieldset>
        <button><span>Buscar</span></button>
    </form>
    <div>
        <nav>
            <ul>
                <li>
                    <a href="irRegistroProfesor">
                        Registrar nuevo profesor
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div>
        <ul id="resultadoConsulta">
            <li class="cabeceraConsulta">
                <span>Codigo</span>
                <span>Nombres</span>
                <span>Genero</span>
            </li>
            <c:forEach var="profesor" items="${requestScope.profesores}" >
                <li>
                    <span>${profesor.codigo}</span>
                    <span>${profesor.nombres} ${profesor.apellidoPaterno} ${profesor.apellidoMaterno}</span>
                    <span>${profesor.sexo}</span>
                </li>
            </c:forEach>
        </ul>
    </div>
</gch:base>