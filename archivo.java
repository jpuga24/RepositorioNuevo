public  class empleado{
    private String nombre;
    private double salario;

public empleado(String nombre, double salario){
    this.nombre=nombre;
    this.salario=salario;

}

public String getnombre()
{
    return nombre;
}
public double getsalario()
{
    return salario;
}

public void setNombre(String nombre) {
    this.nombre = nombre;
}

public void setSalario(double salario) {
    this.salario = salario;
}

public static void main(String[] args) {
    empleadoatiempocompleto empleadoatiempocompleto = new empleadoatiempocompleto("Mikel", 10, 10);
    empleadoporhoras empleadoporhoras = new empleadoporhoras("Oier", 10, 20, 6);
    System.out.println("Nombre" + empleadoporhoras.getnombre() + "Salario" + empleadoporhoras.getsalario() + "Horas trabajadas" + empleadoporhoras.getHorastrabajadas());
    System.out.println("El salario completo" + empleadoatiempocompleto.salariototal(empleadoatiempocompleto.getsalario()));
}

}
