<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="gch" uri="/WEB-INF/tlds/gch" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<s:text name="gch.modificar.programa" var="modificar_programa" />
<gch:base titulo="${modificar_programa}">
    <div class="informacion">
        <span><s:property value="mensaje" /></span><br><br>
        <s:fielderror/>
    </div>
    <s:form action="actualizarPrograma" method="post">
        <fieldset>
            <legend><s:text name="gch.sistema" /></legend>
            <div>
                <label for="codigo">
                    <s:text name="gch.codigo"/>
                </label>
                <input type="text" id="codigo" name="programa.codigo" maxlength="8" value="<s:property value="programa.codigo"/>"  readonly  >
            </div>
        </fieldset>
        <fieldset>
            <legend><s:text name="gch.datos.del.programa"/></legend>
            <div>
                <label for="titulo"><s:text name="gch.titulo"/></label>
                <input type="text" id="titulo" name="programa.titulo" value="<s:property value="programa.titulo"/>" maxlength="50"  autofocus="" class="ancho" />
            </div>
            <div>
                <label for="descripcion"><s:text name="gch.descripcion"/></label>
                <input type="text" id="descripcion" name="programa.descripcion" value="<s:property value="programa.descripcion"/>" maxlength="50" class="ancho"/>
            </div>
            <div>
                <label for="objetivos"><s:text name="gch.objetivos"/></label>
                <input type="text" id="objetivos" name="programa.objetivos" value="<s:property value="programa.objetivos"/>" maxlength="50"class="ancho"/>
            </div>
            <div>
                <label for="requisitos"><s:text name="gch.requisitos"/></label>
                <input type="text" id="requisitos" name="programa.requisitos" value="<s:property value="programa.requisitos"/>"  maxlength="400" class="ancho" />
            </div>
            <div>
                <label for="moneda"><s:text name="gch.moneda"/></label>
                <select name="programa.moneda">
                    <option value="" <c:if test="${moneda == ''}">selected</c:if> >----<s:text name="seleccione"/>----</option>
                    <option value="NS" <c:if test="${moneda == 'NS'}">selected</c:if> >Nuevo Soles</option>
                    <option value="D" <c:if test="${moneda == 'D'}">selected</c:if> >Dolares</option>
                    </select>
                </div>
                <div>
                    <label for="precio"><s:text name="gch.precio"/></label>
                <input type="text" id="precio" name="programa.precio" value="<s:property value="programa.precio"/>" maxlength="400" />
            </div>
            <div>
                <label for="duracion"><s:text name="gch.duracion"/></label>
                <input type="text" id="duracion" name="programa.duracion" value="<s:property value="programa.duracion"/>" maxlength="400" />
            </div>
            <div>
                <label for="fechaInicial"><s:text name="gch.fecha"/></label>
                <input type="date" id="fecha" name="programa.fechaInicial" value="<s:property value="programa.fechaInicial"/>"  />
            </div>
        </fieldset>
        <button><s:text name="gch.actualizar"/></button>
    </s:form>
</gch:base>
