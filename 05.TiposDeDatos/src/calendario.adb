with Ada.Text_IO; use Ada.Text_IO;

package body calendario is
   
   procedure Mostrar_Dias is
   begin
      for Dia in Dia_Semana loop
         case Dia is
         when Sabado..Domingo =>
            Put_Line(Dia'Image & " es fin de semana");
         when others =>
            Put_Line(Dia'Image & " es entresemana");
         end case;
      end loop;
   end;
    
   procedure Mostrar_Estaciones is
   begin
      for Meses in Meses_Ano loop
         case Meses is
         when Enero..Febrero =>
            Put_Line(Meses'Image & " - " & Invierno'Image);
         when Marzo =>
            Put_Line(Meses'Image & " -> Transición " & Invierno'Image & " -> " & Primavera'Image);
         when Abril..Mayo =>
            Put_Line(Meses'Image & " - " & Primavera'Image);
         when Junio =>
            Put_Line(Meses'Image & " -> Transición " & Primavera'Image & " -> " & Verano'Image);
         when Julio..Agosto =>
            Put_Line(Meses'Image & " - " & Verano'Image);
         when Septiembre =>
            Put_Line(Meses'Image & " -> Transición " & Verano'Image & " -> " & Otoño'Image);
         when Octubre..Noviembre =>
            Put_Line(Meses'Image & " - " & Otoño'Image);
         when Diciembre =>
            Put_Line(Meses'Image & " -> Transición " & Otoño'Image & " -> " & Invierno'Image);
         end case;
      end loop;
   end;
  
   function To_String(Date:Fecha) return String is
   begin
      return Date.Dia'Image & " / " & Date.Mes'Image & " /" & Date.Año'Image;
   end;

end calendario;
