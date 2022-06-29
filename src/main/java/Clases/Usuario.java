package Clases;

public class Usuario {

	private int id_Usuario;
    private String nombre_Usuario;
    private String contrasenhia_Usuario;
    private int idRol_Usuario;
    private String rol;
    private int idPersona_Usuario;
    private String nombre_Persona;
    private String apellido_Persona;

    public int getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(int id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    public String getNombre_Usuario() {
        return nombre_Usuario;
    }

    public void setNombre_Usuario(String nombre_Usuario) {
        this.nombre_Usuario = nombre_Usuario;
    }

    public String getContrasenhia_Usuario() {
        return contrasenhia_Usuario;
    }

    public void setContrasenhia_Usuario(String contrasenhia_Usuario) {
        this.contrasenhia_Usuario = contrasenhia_Usuario;
    }

    public int getIdRol_Usuario() {
        return idRol_Usuario;
    }

    public void setIdRol_Usuario(int idRol_Usuario) {
        this.idRol_Usuario = idRol_Usuario;
    }

    public int getIdPersona_Usuario() {
        return idPersona_Usuario;
    }

    public void setIdPersona_Usuario(int idPersona_Usuario) {
        this.idPersona_Usuario = idPersona_Usuario;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getNombre_Persona() {
        return nombre_Persona;
    }

    public void setNombre_Persona(String nombre_Persona) {
        this.nombre_Persona = nombre_Persona;
    }

    public String getApellido_Persona() {
        return apellido_Persona;
    }

    public void setApellido_Persona(String apellido_Persona) {
        this.apellido_Persona = apellido_Persona;
    }

}