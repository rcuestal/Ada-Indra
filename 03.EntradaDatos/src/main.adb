with Ada.Text_IO;
use Ada.Text_IO;



procedure Main is

   function Get_Not_Empty_Line(Prompt:String := "Ingresa un texto no vacio"; Error:String := "Ha ingresado un texto vacío, vuelva a intentarlo") return String is

   begin
      Put_Line(Prompt);
      loop
         declare
            Texto: String := Get_Line;
         begin
            if (Texto'Length > 0) then
               return Texto;
            else
               Put_Line(Error);
            end if;
            end;
      end loop;

   end;

   function Try_Convert_Integer(Texto: String; Texto_Como_Entero: out Integer) return Boolean is

   begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;
   exception
         when others => return False;
   end;

   -- Mi función
   function Get_Integer(Prompt:String := "Ingresa un valor no vacio"; Error:String := "Ha ingresado un texto vacío, vuelva a intentarlo") return Integer is

   begin
      Put_Line(Prompt);
      loop
         declare
            Numero_En_Texto: String := Get_Line;
            Valor : Integer := 0;
         begin
            if (Try_Convert_Integer(Numero_En_Texto, Valor)) then
               return Valor;
            else
               Put_Line(Error);
            end if;
            end;
      end loop;

   end Get_Integer;

   -- Otra posibilidad
   --  function Get_Integer(Prompt:String := "Ingresa un numero"; Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer is Result : Integer := 0;
   --  begin
   --     Put_Line(Prompt);
   --     while (not(Try_Convert_Integer(Get_Line, Result))) loop
   --        Put_Line(Error);
   --     end loop;
   --     return Result;
   --  end;

   function Get_Integer_Between
      (Prompt:String := "Ingresa un texto no vacio";
      Max : Integer;
      Min : Integer;
      Empty_Error:String := "Texto Vacío, Intentalo de nuevo";
      Underflow_Error:String := "Ha ingresado un numero muy pequeño";
      Overflow_Error:String := "Ha ingresado un numero muy grande") return Integer is

      Resultado : Integer;

   begin

      loop
         Resultado := Get_Integer(Prompt, Empty_Error);

         if (Resultado > Max) then
            Put_Line(Overflow_Error);
         elsif (Resultado > Max) then
            Put_Line(Underflow_Error);
         else
            return Resultado;
         end if;
      end loop;

   end;



begin


   declare

      Nombre : String := Get_Not_Empty_Line("Introduce tu nombre", "¿Enserio lo dejastes vacio? Prueba de nuevo");
      Edad : Integer := Get_Integer("Introduce tu edad", "¿Enserio lo dejastes vacio? Prueba de nuevo");

   begin
      Put_Line("Hola, " & Nombre);
      Put_Line("Tienes" & Edad'image & " años");


      --  Put_Line("Introduzca su edad");
      --
      --
      --  declare
      --     Edad : Integer := 0;
      --  begin
      --     if (Get_Integer) then
      --        Put_Line("Tienes" & Edad'Image & " años");
      --     else
      --        Put_Line("No has introducido un número");
      --     end if;
      --  end;


   end;

end Main;
