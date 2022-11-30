with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persona_Model is

   --type C_Persona is abstract tagged private;
   type C_Persona is abstract tagged record
      Nombre: Unbounded_String;
   end record;
   
   type Persona is access all C_Persona'Class;
   
   -- procedure D;
   -- Como la clase C_Persona en abstracta, no vamos a tener un contructor
   
   function To_String(This: C_Persona) return String is abstract;
   
   procedure Set_Nombre(This: out C_Persona; Value: String);
   
   function Get_Nombre(This:C_Persona) return String;
--private
   
   --  type C_Persona is abstract tagged record
   --     Nombre: Unbounded_String;
   --  end record;

end Persona_Model;
