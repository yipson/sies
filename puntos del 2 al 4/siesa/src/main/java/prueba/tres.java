package prueba;
import java.util.Scanner;

public class tres {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        
        System.out.println("cuantos numeros quiere ingresar: ");
        int n= leer.nextInt();
        
        int []numeros = new int[n];
        
        double numeroEntero=0;
        int suma=0;
        for (int i = 0; i < n; i++) {
            System.out.println("Digite el numero entero positivo: ");
            numeroEntero = Double.parseDouble(leer.next());
            if(validacion(numeroEntero)){
//                numeros[i] = (int) numeroEntero;
                suma = divisores(numeroEntero);
                perfecto(numeroEntero,suma);
                continue;
            }
            System.out.println("numero incorrecto\nIngreselo de nuevo...");
            i--;
        }
        
    }
    
    public static boolean validacion(double numero){
        if( numero == (int)numero && numero>0){
            return true;
        }
        return false;
    }
    
    public static int divisores(double numero){
        double suma=-numero;
        System.out.println("Divisores de " + numero);
        for (int i = 1; i <= numero; i++) {
            if(numero%i == 0){
                System.out.println(i + "\n");
                suma += i;
            }
        }
        return (int) suma;
    }
    
    public static void perfecto(double numero, int suma){
        System.out.println("suma = " + suma);
        if (suma == numero) {
            System.out.println("Es perfecto");
            return;
        }
        System.out.println("No es perfecto");
    }
    
}
