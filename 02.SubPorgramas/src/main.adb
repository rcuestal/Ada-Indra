with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Strings.Fixed; -- No vamos a usar 'use'

with Ada.Float_Text_IO;
use Ada.Float_Text_IO;


procedure Main is

   procedure Put_Nice_Line(Texto:in String; Icono: Character := '-') is  -- Puedo eliminar el in
      use Ada.Strings.Fixed;
      Longitud : Integer := Texto'Length + 4;
   begin
      Put_Line(Longitud * Icono);
      Put_Line("| " & Texto & " |");
      Put_Line(Longitud * Icono);
   end;


   procedure Put_Reverse(Texto:in String) is  -- Puedo eliminar el in
      use Ada.Strings.Fixed;
   begin
      for C of reverse Texto loop
         Put(C);
      end loop;
      Put_Line("");
   end;


   procedure Put_Hacker_Line(Texto:in String;    A:Character := '4';
                             E:Character := '3'; I:Character := '1';
                             O:Character := '0'; S:Character := '5') is
      use Ada.Strings.Fixed;
   begin
      for C of Texto loop
         case C is
         when 'i' | 'I' => Put(I);
         when 'a' | 'A' => Put(A);
         when 'e' | 'E' => Put(E);
         when 's' | 'S' => Put(S);
         when 'o' | 'O' => Put(O);
         when others => Put(C);
         end case;
      end loop;
      Put_Line("");
   end;


   function Area_Rectangulo(LadoMayor : in Float; LadoMenor : in Float) return Float is

   begin
      return LadoMayor * LadoMenor;
   end;


   procedure Intercambiar(A: in out Integer; B: in out Integer) is  -- Puedo eliminar el in
      use Ada.Strings.Fixed;
      Aux : Integer := A;
   begin
      A := B;
      B := Aux;
   end;


   function Suma_Dos_Numeros(Primero : in Integer; Segundo : in Integer) return Integer is

   begin
      return Primero + Segundo;
   end;

   function Suma_Dos_Numeros(Primero : in Float; Segundo : in Float) return Float is

   begin
      return Primero + Segundo;
   end;




begin
   --  Put_Nice_Line(Texto => "Hola sub programa", Icono => '=');
   --  Put_Reverse("Hola");
   --  Put_Hacker_Line("Murcielagos", O => '*');
   --
   --
   --  declare
   --     -- Variable para area
   --     Area : float;
   --  begin
   --     Area := Area_Rectangulo(3.0, 5.0);
   --     Put("El área del rectángulo es: ");
   --     Put(Area, Exp => 0, Aft => 2);
   --     Put(" unidades cuadradas");
   --  end;
   --
   --  declare
   --     Primero : Integer := 10;
   --     Segundo : Integer := 20;
   --  begin
   --     Put_Line("Antes de intercambiar" & Primero'Image & " -" & Segundo'Image);
   --     Intercambiar(Primero, Segundo);
   --     Put_Line("Despues de intercambiar" & Primero'Image & " -" & Segundo'Image);
   --  end;


   declare

      -- Puedo declarar funciones y procedures dentro de un declare
      function Suma_Dos_Numeros(Primero : in Integer; Segundo : in Integer) return Integer is

      begin
         return Primero + Segundo;
      end;

      function Suma_Dos_Numeros(Primero : in Float; Segundo : in Float) return Float is

      begin
         return Primero + Segundo;
      end;

      procedure PrintF(Item: String) renames Put_Line;

      function "+"(Primero : in Float; Segundo : in Integer) return Float is

      begin
         return Primero + Float(Segundo);
      end;


      A: Integer := 2;
      B: Integer := 3;
      Res: Integer;
      FA: Float := 7.4;
      FB: Float := 8.7;
      FRes: Float;

   begin
      -- Estoy obligado a usar su valor de retorno
      Res := Suma_Dos_Numeros(A,B);
      PrintF("La suma de" & A'Image & " mas" & B'Image & " es" & Res'Image);

      -- Sobrecarga de funciones ya que tenemos dos con el mismo nombre
      FRes := Suma_Dos_Numeros(FA,FB);
      Put(FA, Exp => 0, Aft => 2);
      Put(" + ");
      Put(FB, Exp => 0, Aft => 2);
      Put(" = ");
      Put(FRes, Exp => 0, Aft => 2);
      Put_Line("");

      -- Sumo dos tipos distintos; ADA no hace estas conversiones por si misma
      FRes := Float(A) + FA;
      Put(FRes, Exp => 0, Aft => 2);
      Put_Line("");

      PrintF("Usando la sobrecarga del +");
      FRes := FA + A;
      Put(FRes, Exp => 0, Aft => 2);
      Put_Line("");


   end;





end Main;
