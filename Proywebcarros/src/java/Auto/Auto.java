/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Auto;

/**
 *
 * @author LENOVO
 */
public class Auto {
    private String Cliente;
    private String Auto;
    private float prec_contado;
    private float intereses;
    private float prec_total;
    private float cuota_ini;
    private int cuotas;
    
    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public String getAuto() {
        return Auto;
    }

    public void setAuto(String Auto) {
        this.Auto = Auto;
    }

    public float getPrec_contado() {
        return prec_contado;
    }

    public void setPrec_contado(float prec_contado) {
        this.prec_contado = prec_contado;
    }

    public float getIntereses() {
        return intereses;
    }

    public void setIntereses(float intereses) {
        this.intereses = intereses;
    }

    public float getPrec_total() {
        return prec_total;
    }

    public void setPrec_total(float prec_total) {
        this.prec_total = prec_total;
    }

    public float getCuota_ini() {
        return cuota_ini;
    }

    public void setCuota_ini(float cuota_ini) {
        this.cuota_ini = cuota_ini;
    }

    public int getCuotas() {
        return cuotas;
    }

    public void setCuotas(int cuotas) {
        this.cuotas = cuotas;
    }
    
    
    
    public void calcular_precioContado(){
        switch(Auto.charAt(1)){
            case 'c': prec_contado=14900;
                break;
            case 'u': prec_contado=23000;
                break;
                
            case 'a': prec_contado=26000;
                break;
            case 'p': prec_contado=21000;
                break;
        }
    }
    
    public void calcularInteres(){
        switch(cuotas){
            case 1: intereses=(float) (prec_contado*0);
                break;
            case 2: intereses=(float) (prec_contado*0.2);
                break;
            case 3: intereses=(float) (prec_contado*0.5);
                break;
            case 4: intereses=(float) (prec_contado*0.7);
                break;
            case 5: intereses=(float) (prec_contado*0.9);
                break;    
        }
    }
    
    public void calcularCuotaInicial(){
        switch(cuotas){
            case 1: cuota_ini=(float) (prec_contado*0);
                break;
            case 2: cuota_ini=(float) (prec_contado*0.3);
                break;
            case 3: cuota_ini=(float) (prec_contado*0.25);
                break;
            case 4: cuota_ini=(float) (prec_contado*0.2);
                break;
            case 5: cuota_ini=(float) (prec_contado*0.15);
                break;
        }
    
    }
    
    public void calcularPagoTotal(){
    prec_total=prec_contado+intereses;
    }
}
