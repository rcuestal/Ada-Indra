with Ada.Text_IO; use Ada.Text_IO;

package body P_Persona is

   procedure Saludar(This:C_Persona) is
      begin
         Put_Line("Hola, soy "
                  & To_String(This.Nombre)
                  & " "
                  & To_String(This.Apellido));
   end;



end P_Persona;
