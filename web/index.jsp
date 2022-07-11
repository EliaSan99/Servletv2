<%-- 
    Document   : index
    Created on : 10/07/2022, 10:10:19 PM
    Author     : EliasSan
--%>
<%@page import="beans.Dato" %>
<%@page import="servlet.Sprocesos" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="stylesheet" href="css/Styles.css">
        <title>Tabla con servlet v2</title>
    </head>
    <body>
        <div id="wraper">
        <div class="formulario">
            <div class="row">
                <div class="col col-11">
                    <h1>Formulario con servlet</h1>
                    <form action="Sprocesos" method="post">
                        <label for="inputMatri">Matricula</label>
                        <input type="text"   class="forms-control" name="tfMatricula" id="inputMatri" placeholder="Matricula"> 
                        <label for="inputName">Nombre del alumno</label>
                        <input type="text"   class="forms-control" name="tfNombre" id="inputName" placeholder="Nombre">
                        <label for="inputApellidos">Apellidos</label>
                        <input type="text"   class="forms-control" name="tfApellidos" id="inputApellidos" placeholder="Apellidos">
                        <label for="inputDdi">DDI</label>
                        <input type="number" class="forms-control" name="tfDdi" id="inputDdi" placeholder="" > 
                        <label for="inputDwi">DWI</label>
                        <input type="number" class="forms-control" name="tfDwi" id="inputdwi" placeholder="">
                        <label for="inputEcbd">ECBD</label>
                        <input type="number" class="forms-control" name="tfEcbd" id="inputEcbd" placeholder="">

                        <button type="submit" name="btnRegistrar" class="btn-fm">Capturar</button>
                    </form> 
                </div>
            </div>
        </div>
        
        <% 
           if(request.getAttribute("cont")!= null)
           {
               Dato dato[] = new Dato[10];
               dato = (Dato[])request.getAttribute("datos");
               int cont = Integer.parseInt(request.getAttribute("cont").toString());
               
              if (cont ==10)
                {
                  cont= 0;
                }
        %>
          
        <div id="frame">
            <table class="table table-bordered table-hover table-dark" border= '1' cellspacing= '0' > 
               <thead>
                  <tr>
                       <th>Matricula</th>
                       <th>Nombre del Alumno</th>
                       <th>DDI</th>
                       <th>DWI</th>
                       <th>ECBD</th>
                       <th>Prom</th>
                    </tr>
                </thead>
        </div>   
        
            <% 
               for(int i = 0; i < cont; i++)
               {
                   
               
            %>
            <tbody>
              <tr>
                      <td><%= dato[i].getMatricula()%></td>
                      <td><%=dato[i].getNombre()    + " " + dato[i].getApellidos()%></td>
                      <td><%=dato[i].getDdi()%></td>
                      <td><%=dato[i].getDwi()%></td>
                      <td><%=dato[i].getEcbd()%></td>
                      <td><%=dato[i].promediar()%></td>
               </tr> 
            </tbody>
            <% } %>
        </table>  
        
            <% } %>
            </div>
    </div>
    </body>
</html>
