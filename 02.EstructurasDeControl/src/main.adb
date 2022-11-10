with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Ada.Strings.Fixed;
use Ada.Strings.Fixed;

procedure Main is

begin

   --  declare
   --     Default_Mayoria_Edad : constant Integer := 18;
   --     Default_Edad_Persona_Mayor : constant Integer := 60;
   --     Edad:Integer := 19;
   --  begin
   --     -- No puedo editar uana constante:
   --     -- Default_Mayoria_Edad := 20;
   --
   --     -- Forma 1 para solicitar integers
   --     -- Put_Line("Ingrese su edad (Forma 1)");
   --     -- Get(Edad);
   --
   --     -- Forma 2 para solicitar integers
   --     Put_Line("Ingrese su edad (Forma 2)");
   --     Edad := Integer'Value(Get_Line);
   --
   --     Put_Line("Su edad es:" & Edad'Image);
   --     if Edad >= Default_Edad_Persona_Mayor then
   --        Put_Line("Usted es una persona mayor de 60");
   --     elsif Edad >= Default_Mayoria_Edad then
   --     -- elsif (Edad in Default_Mayoria_Edad..Default_Edad_Persona_Mayor)
   --        Put_Line("Usted es mayor de edad");
   --     else
   --        Put_Line("Usted es menor de edad");
   --     end if;
   --  end;

   --  declare
   --     Numero:integer;
   --     Resto:integer;
   --  begin
   --     Put_Line("Ingrese un número");
   --     Get(Numero);
   --
   --     Resto := Numero mod 2;
   --
   --     -- Forma 1 para usar los ifs
   --     --  if Resto = 0 then
   --     --     Put_Line("El numero" & Numero'Image & " es par");
   --     --  else
   --     --     Put_Line("El numero" & Numero'Image & " es impar");
   --     --  end if;
   --
   --     -- Forma 2 para usar los ifs
   --     Put_line(If(resto = 0) then "Es par" else "Es impar");
   --
   --  end;
   --
   --  declare
   --
   --  begin
   --     Put_Line("Vamos a contar hasta 10");
   --     for I in 1..10 loop
   --        Put_Line(I'Image);
   --     end loop;
   --
   --     Put_Line("");
   --     Put_Line("Ahora vamos a contar de 10 hacia abajo");
   --     for I in reverse 1..10 loop
   --        Put_Line("Despegue en:" & I'Image);
   --        -- delay 1.0;
   --     end loop;
   --
   --  end;
   --
   --  declare
   --     Veces : integer;
   --  begin
   --     Put_Line("¿Cuantas veces te saludo?");
   --     Get(Veces);
   --
   --     for I in 1..Veces loop
   --        Put_Line("Hola" & I'Image);
   --     end loop;
   --  end;
   --
   --  -----------------------------------------------------
   --
   --  declare
   --     N : integer;
   --     N_Dividido_Entre_2 : Integer;
   --  begin
   --     Put_Line("Ingrese el número a dividir");
   --     Get(N);
   --
   --     while N > 0 loop
   --        N_Dividido_Entre_2 := N/2;
   --        Put_Line(N'image & " entre 2 es" & N_Dividido_Entre_2'Image);
   --        N := N_Dividido_Entre_2;
   --     end loop;
   --
   --  end;


   -- Preguntar al usuario un numero. Si es distinto de 0, sumalo a los anteriores. Si es 0, para.
   -- Forma 1
   --  declare
   --     N : integer;
   --     Sumatorio : Integer := 0;
   --  begin
   --     Put_Line("Ingrese el número");
   --     Get(N);
   --
   --     while N /= 0 loop
   --        Sumatorio := Sumatorio + N;
   --        Put_Line("Ingrese el número");
   --        Get(N);
   --     end loop;
   --
   --     Put_Line("La suma de los numeros es:" & Sumatorio'Image);
   --
   --  end;

   -- Forma 2
   --  declare
   --     N : integer;
   --     Sumatorio : Integer := 0;
   --     Maximo_Sumatorio : constant Integer := 30;
   --  begin
   --     loop
   --        Put_Line("Ingrese un número para sumar");
   --        Get(N);
   --
   --        exit when (N=0);
   --
   --        Sumatorio := Sumatorio + N;
   --
   --        exit when (Sumatorio>=Maximo_Sumatorio);
   --
   --     end loop;
   --
   --     Put_Line("La suma de los numeros es:" & Sumatorio'Image);
   --
   --  end;

   ------------------------------------------------------------------------------------

   -- El get no permite el Get_Line ya que interfiere con este
   -- Get(N);
   -- Es por ello que el siguiente ejemplo introduce un enter sin pulsarlo nosotros

   --  declare
   --  begin
   --     loop
   --        Put_Line("Ingrese su nombre");
   --        declare
   --           Nombre : String := Get_Line;
   --        begin
   --           exit when (Nombre'Length = 0);
   --           Put_Line("Hola " & Nombre);
   --        end;
   --     end loop;
   --  end;

   -------------------------------------------------------

   --  declare
   --  begin
   --     Put_Line(3 * "Prueba ");
   --  end;


   -------------------------------------------------------


   declare
      Nota:Integer;
   begin
      Put_Line("Ingresa tu nota del examen");
      Nota := Integer'Value(Get_Line);

      case Nota is
         when 0 => Put_Line("Examen invalidado.");
         when 1..4 => Put_Line("Examen suspenso.");
         when 5 => Put_Line("Examen aprobado justito.");
         when 6 | 7 => Put_Line("Examen aprobado. Bien.");
         when 8..9 => Put_Line("Examen aprobado. Notable.");
         when 10 => Put_Line("Examen aprobado. Sobresaliente.");
         when others => Put_Line("Nota fuera del rango.");
      end case;

   end;






end Main;
