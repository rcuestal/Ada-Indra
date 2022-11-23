with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persona_Model is

   --type C_Persona is abstract tagged private;
   type C_Persona is abstract tagged record
      Nombre: Unbounded_String;
   end record;
   
   type Persona is access C_Persona'Class;
   
   procedure D;
   -- Como la clase C_Persona en abstracta, no vamos a tener un contructor
   
   function To_String(This: C_Persona) return String is abstract;
   
--private
   
   --  type C_Persona is abstract tagged record
   --     Nombre: Unbounded_String;
   --  end record;

end Persona_Model;
