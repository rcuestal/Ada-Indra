with Io; use Io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
WITH Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure Main is

begin
   declare
      Nombre : String := Get_Not_Empty_Line("�Como te llamas?");
      Edad : Integer := Get_Integer("�Qu� edad tienes?");
      Altura : Float := Get_Float("�Cu�nto mides?");
   begin
      Put_Line("Tu nombre es " & Nombre);
      Put_Line("Tu edad es de" & Edad'Image & " a�os");
      Put_Line("Mides " & Altura'Image & "m");

   end;

end Main;
