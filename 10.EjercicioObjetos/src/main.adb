with Ada.Text_IO; use Ada.Text_IO;
with Alumno_Model; use Alumno_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is

   Roberto : Persona := Create("Roberto");
   Jorge : Persona := Create("Jorge");

begin
   --Crear un paquete Alumno_Model
   --Crear la clase Alumno
   --  Nombre
   --  Vector Dinamigo Generico (Ada.Containers.Vectos) de Notas
   --Tiene que tener un constructor
   --Tiene que tener un getter para el nombre
   --Tiene que tener un metodo Rendir_Examen que recibe una nota
   --Tiene que tener un meotodo Calcular_Promedio que revuelve el promedio de notas
   --En el main un caso de prueba que verifique

   Put_Line(Roberto.Get_Nombre);

   Roberto.Rendir_Examen(5);
   Roberto.Rendir_Examen(3);
   Roberto.Rendir_Examen(1);

   Put_Line(Roberto.Calcular_Promedio'Image);

   --------------------------------------------------

   Put_Line(Jorge.Get_Nombre);

   Jorge.Rendir_Examen(4);
   Jorge.Rendir_Examen(7);
   Jorge.Rendir_Examen(9);

   Put_Line(Jorge.Calcular_Promedio'Image);

end Main;
