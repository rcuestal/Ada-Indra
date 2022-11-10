with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is

   -- Puedo inicializar aqui
   Numero : Integer := 5;

begin

   -- Con el use no es necesario anteponer el nombre de la libreria
   -- Ada.Text_IO.Put_Line("Hola Mundo");
   -- Put_Line("Hola Mundo");

   Put_Line("La variable Numero contiene inicialmente el valor" & Numero'Image);

   Numero := 10;

   declare
      Numero : Integer := 20;
   begin
      Put_Line("La variable numero contendrá el valor de declare, es decir:" & Numero'Image);
   end;


   -- Con 'Image convertimos variables a String para poder ser mostrados
   -- El signo & se utiliza para concatenar strings
   Put_Line("La variable Numero contiene el valor" & Numero'Image & ", debido a que no le afecta el declare y fue modificado");


   ------------------------------------------------------------------------

   declare
      -- Nombre := String(1..10);   -- Inicializacion explicita
      Nombre : String := "Roberto"; -- Inicializacion implicita
   begin
      Put_Line(Nombre);
      Put_Line("El nombre tiene " & Nombre'Length'Image & " caracteres");
   end;


   ------------------------------------------------------------------------

   Put_Line("Ingrese su nombre:");
   declare
      Nombre : String := Get_Line;
   begin
      if (Nombre'Length > 0) then
         Put_Line("Hola " & Nombre);
      else
         Put_Line("El nombre debe tener al menos un caracter");
      end if;
   end;


   Put_Line("(Ejemplo 2) Ingrese su nombre:");
   declare
      Nombre : String := Get_Line;
   begin
         Put_Line("Hola " & (if (Nombre'Length>0) then Nombre else "persona sin nombre"));
   end;

   -----------------------------------------------------------------------


end Main;
