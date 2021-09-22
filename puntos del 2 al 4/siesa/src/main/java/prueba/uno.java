package prueba;

public class uno {
    public static void main(String[] args) {
        
        int numero=4;
        
        int resultado = metodo(numero);
        System.out.println("resultado " + resultado);
    }
    
    public static int metodo(int numero){
        
        if (numero < 3){
            return numero;
        }
        return metodo(numero-1)*metodo(numero-2);
    }
}

