package beans;


public class Dato {

    
    private String matricula;
    private String nombre;
    private String Apellidos;
    private int ddi;
    private int dwi;
    private int Ecbd;
    private double prom;
    
     public Dato()
     {
      matricula=nombre=Apellidos="";
      ddi=dwi=Ecbd=0;
      prom = 0.0;
     }
    public Dato(String matricula, String nombre, String Apellidos, int ddi, int dwi, int Ecbd) 
    {
        this.matricula = matricula;
        this.nombre = nombre;
        this.Apellidos = Apellidos;
        this.ddi = ddi;
        this.dwi = dwi;
        this.Ecbd = Ecbd;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public int getDdi() {
        return ddi;
    }

    public void setDdi(int ddi) {
        this.ddi = ddi;
    }

    public int getDwi() {
        return dwi;
    }

    public void setDwi(int dwi) {
        this.dwi = dwi;
    }

    public int getEcbd() {
        return Ecbd;
    }

    public void setEcbd(int Ecbd) {
        this.Ecbd = Ecbd;
    }
  public double getprom()
    {
        return prom;
    }
    
    public double promediar()
    {
       prom = ((ddi+dwi+Ecbd)/3);
       return prom;
    }
    
}

