with Ada.Text_IO; use Ada.Text_IO;

package body Utils is

   procedure swap(Left, Right: in out T) is
      Aux : T := Left;
   begin
      Left := Right;
      Right := Aux;
   end;
   
   procedure Show_Vertical(Value:T) is
   begin
      for Caracter of To_String(Value) loop
         Put_Line(Caracter'Image);
      end loop;
   end;
   
   
end Utils;
