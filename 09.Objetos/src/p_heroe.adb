with Ada.Text_IO; use Ada.Text_IO;

package body P_Heroe is

   procedure Presentacion(This:C_Heroe) is
      begin
         Put_Line("Me presento, soy "
                  & To_String(This.Nombre)
                  & ", tengo"
                  & This.Fuerza'Image
                  & " puntos de fuerza y"
                  & This.Hp'Image
                  & " puntos de vida");
      end;

end P_Heroe;
