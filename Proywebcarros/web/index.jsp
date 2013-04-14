<%-- 
     Integrantes:

	*PAJUELO PARDO GUSTAVO
	*LAM TORRES GILMAR
	*ARANGO RAMOS YUD ITMAN

DOCENTE: ING. JUAN FRANCISCO VERA CASTILLO

CURSO:	 PROGRAMACION ORIENTADA A OBJETOS

AULA: 	303A

CICLO:	CUARTO

horario: 	JUEVES 7:30-12:00
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Venta de Autos</title>
    </head>
    <body>
        <br><p>
        <br><p>
        <br><p>
        <br><p>
        <center>
            <form method="post" action="<%=request.getContextPath()%>/Calculo_Cuotas">
                <table border width=50% >
                    <tr> 
                        <td colspan=2 >
                            <font size =16 color="blue">
                                <center> 
                                    Venta de autos 
                                </center> 
                        </td>
                    </tr>
                
                    <tr > 
                        <td width=60% >
                            <font size="5" >
                                Nombre 
                            </font>
                        </td>
                        <td widht=40% >
                            <input type="text" name="nombre" size="30">
                        </td>
                    </tr>
                    <tr >
                        <td width=60% >
                            <font size="5" >
                                Seleccione auto
                            </font> 
                        </td>
                        <td widht=40% > 
                            <select name="auto">
                                <option value="">Seleccione auto</option>
                                <option value ="accent">Accent</option>
                                <option value ="tucson">Tucson</option>
                                <option value ="santafe">Sportage</option>
                                <option value ="sportage">Santafe</option>
                        </td>
                    </tr>
                    <tr >
                        <td width ="60%">
                            <font size="5">
                                Numero de años
                            </font> 
                        </td>
                        <td width ="40%">
                            <select name="cuotas">
                                <option value="">Seleccione cantidad de años</option>
                                <option value ="1">1 año</option>
                                <option value ="2">2 años</option>
                                <option value ="3">3 años</option>
                                <option value ="4">4 años</option>
                                <option value ="5">5 años</option>
                        </td>
                    </tr> 
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Ver calendario de pagos">
                        </td>
                    </tr>
                </table>
           </form>
        </center>    
    </body>
</html>
