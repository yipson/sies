package prueba;

public class dos {
    public static void main(String[] args) {
        double respuesta = division(5, 6);
        System.out.println("respuesta = " + respuesta);
    }
    
    public static double division(double numero1, double numero2){
        if( validacion(numero1, numero2) ){
            System.out.println("los numeros no son enteros");
            return 0;
        }
     
        return numero1/numero2;
    }

    
    public static boolean validacion(double numero1, double numero2){
        if( !(numero1 == (int)numero1) || !(numero2 == (int)numero2)){
            return true;
        }
        return false;
    }
    
}
