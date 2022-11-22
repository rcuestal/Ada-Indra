with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package Alumno_Model is
   
   type C_Persona is tagged private;   
   type Persona is access C_Persona'Class;
   
   
   package Notas_Array_List is new Ada.Containers.Vectors
     (Element_Type => Integer,
      Index_Type => Positive);
   
   use Notas_Array_List;
   
   ---------------- "Constructor" ----------------
   function Create(Nombre:String) return Persona;
   ------------- "Getters & Setters" -------------
   function Get_Nombre(This:C_Persona) return String;
   procedure Rendir_Examen(This: out C_Persona; Value:Integer);
   -----------------------------------------------
   
   function Calcular_Promedio(This: C_Persona) return Float;
   
   private 
   
   type C_Persona is tagged record
      Nombre: Unbounded_String;
      Lista : Notas_Array_List.Vector; 
   end record;

end Alumno_Model;
