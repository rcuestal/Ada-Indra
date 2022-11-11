with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Strings.Fixed;
use Ada.Strings.Fixed;

with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

with Ada.Numerics.Float_Random;
use Ada.Numerics.Float_Random;


procedure Main is

   G : Generator;
   Numero_Al_Azar : Integer;
   Intentos : Integer := 5;
   Valor : Integer;

   function Comparador(ValorIntroducido:in integer; ValorBuscado: in integer) return Boolean is

   begin
      if (ValorIntroducido = ValorBuscado) then
          Put_Line("Acertaste");
          return True;
      elsif (ValorIntroducido > ValorBuscado) then
            Put_Line("El número buscado es más pequeño");
            Return False;
      else
            Put_Line("El número buscado es más grande");
            Return False;
      end if;
   end;


begin
   Reset(G);
   Numero_Al_Azar := Integer((Random(G) * 100.0) + 1.0);
   --Put(Numero_Al_Azar, Exp => 0);
   Put_Line("¿Cuántos intentos quieres probar?");
   Get(Intentos);
   Put_Line("");

   Put_Line("Introduce un valor inicial");
   Get(Valor);
   Put_Line("");

   while (Intentos > 0) loop
      exit when Comparador(valor, Numero_Al_Azar);
      Intentos := Intentos - 1;
      Put_Line("Introduce otro valor");
      Get(Valor);
      Put_Line("");
   end loop;

   Put_Line("");

   if Intentos > 0 then
      Put_Line(39 * '-');
      Put_Line("| Ganaste, estaba pensando en el" & Numero_Al_Azar'Image & " |");
      Put_Line(39 * '-');
   else
      Put_Line(39 * '-');
      Put_Line("| Perdistes, estaba pensando en el" & Numero_Al_Azar'Image & " |");
      Put_Line(39 * '-');
   end if;

   Put_Line("");

end Main;
