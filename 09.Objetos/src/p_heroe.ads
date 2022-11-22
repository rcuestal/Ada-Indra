with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package P_Heroe is

   type C_Heroe is tagged record
         Nombre: Unbounded_String;
         Fuerza: Integer;
         Hp : Integer;
   end record;
      
   type Heroe is access C_Heroe'Class;
   
   procedure Presentacion(This:C_Heroe);

end P_Heroe;
