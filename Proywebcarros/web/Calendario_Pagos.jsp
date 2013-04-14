<%-- 
    Document   : Calendario_Pagos
    Created on : 17-nov-2012, 21:26:25
    Author     : LENOVO
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@page import="org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendario de pagos</title>
    </head>
    <body>
        <br><p>
        <br><p>
            <form method="get" action="<%=request.getContextPath()%>/Calculo_Cuotas">
                <center> 
                    <table border width=50% >
                        <tr> 
                            <td colspan=3 >
                                <font size =16 color="blue">
                                    <center> 
                                        Venta de autos 
                                    </center> 
                            </td>
                        </tr>
                        <tr> 
                            <td width=60% >
                                <font size="5" >
                                    Nombre
                                </font>
                            </td>
                            <td colspan="2">
                                <%=request.getAttribute("nombre")%>
                                        
                            </td>
                        </tr>
                        <tr> 
                            <td width=60% >
                                <font size="5" >
                                    Auto seleccionado 
                                </font>
                            </td>
                            <td colspan="2">
                                <%=request.getAttribute("auto")%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <image src="Imagenes/<%=request.getAttribute("auto")%>.jpg" width="100%" height="100%">
                            </td>        
                        </tr>
                        
                        <tr>
                            <td width="60%">
                                <font size="5">
                                    Precio al contado
                                </font>        
                            </td>
                            
                            <td colspan="2">
                                <%=request.getAttribute("precio_contado")%>
                            </td>   
                        </tr>
                        
                        <tr>
                            <td width="60%" >
                                <font size="5">
                                    Intereses
                                </font>        
                            </td>
                            
                            <td colspan="2">
                                <%=request.getAttribute("interes")%>
                            </td>
                        </tr>
                        
                        <tr>
                            <td width="60%">
                                <font size="5">
                                    Precio Total
                                </font>        
                            </td>
                            
                            <td colspan="2">
                                <%=request.getAttribute("pago_total")%>
                            </td>
                        </tr>
                        
                        <tr>
                            <td width="60%">
                                <font size="5">
                                    Cuota Inicial
                                </font>        
                            </td>
                            
                            <td  colspan="2">
                                <%=request.getAttribute("cuota_inicial")%>
                            </td>
                        </tr>
                        <tr>
                            <td width="40%">
                                <font size="5">
                                    Fecha de pago
                                </font>
                            </td>
                            
                            <td width="40%">
                                <font size="5">
                                    Cuota Mensual
                                </font>
                            </td>
                            
                            <td width="20%" >
                                <font size="5">
                                    Saldo
                                </font>
                            </td>
                        </tr>

                        <%
                          String pagototal=""+request.getAttribute("pago_total");
                          String pagoinicial=""+request.getAttribute("cuota_inicial");
                          String cuota=""+request.getAttribute("cuota");
                          float PagoTotal=Float.parseFloat(pagototal);
                          float PagoInicial=Float.parseFloat(pagoinicial);
                          int Cuota=Integer.parseInt(cuota);
                          float mensualidad=(PagoTotal-PagoInicial)/(Cuota*12);
                          float saldo=PagoTotal-PagoInicial;
                          
                          Date FechaActual = new Date();
                          SimpleDateFormat Formato = new SimpleDateFormat("dd/MM/yyyy"); 
    	
                          String CadenaFecha = Formato.format(FechaActual);
                          int dia=Integer.parseInt(CadenaFecha.substring(0,2));
                          int mes=Integer.parseInt(CadenaFecha.substring(3,5));
                          int anho=Integer.parseInt(CadenaFecha.substring(6));
                          
                          for(int i=0;i<Cuota*12;i++){
                            saldo=saldo-mensualidad;
                            mes=mes+1;
                            if(mes>12){
                                mes=1;
                                anho=anho+1;
                            }    
                        %>
                        <tr>
                            <td>
                               <%=dia%>/<%=mes%>/<%=anho%>
                            </td>
                            
                            <td>
                                <%=mensualidad%>
                            </td>
                            
                            <td>
                               <%=saldo%>
                            </td>
                            
                            
                        </tr>    
                        <%
                        
                        }
                        %>
                       
                        
                    </table>
                </center>
            </form>
    </body>
</html>
