package body io is

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
   
   function Try_Convert_Float(Texto: String; Texto_Como_Float: out Float) return Boolean is

   begin
      Texto_Como_Float := Float'Value(Texto);
      return True;
   exception
         when others => return False;
   end;

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
   
   function Get_Float(Prompt:String := "Ingresa un valor no vacio";
                      Error:String := "Ha ingresado un texto vacío, vuelva a intentarlo";
                      Separador_Decimales: Character := ',') return Float is
   
   begin
      Put_Line(Prompt);
      loop
         declare
            Numero_En_Texto: String := Get_Line;
            Valor : Float := 0.0;
         begin
            Reemplazar(Numero_En_Texto, Separador_Decimales, '.');
            if (Try_Convert_Float(Numero_En_Texto, Valor)) then
               return Valor;
            else
               Put_Line(Error);
            end if;
         end;
      end loop;

   end Get_Float;

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
   
   procedure Reemplazar(Input: in out String; CaracterInicial: in Character; CaracterFinal: in Character) is
   begin
      for I in Input'Range loop
         if (Input(I) = CaracterInicial) then
            Input(I) := CaracterFinal;
         end if;
      end loop;
   end;
   
   function To_String
      (Input:Float;
      Cantidad_Decimales : Integer := 2;
       Separador_Decimales : Character := ',') return String is

      Result :String := Integer(Float'Floor(Input))'Image 
        & Separador_Decimales 
        & Integer((Input - Float'Floor(Input)) * Float(10 ** Cantidad_Decimales))'Image ;
   begin
      return result;
   end To_String;

end io;
