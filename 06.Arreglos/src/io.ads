with Ada.Text_IO; use Ada.Text_IO;

package io is

   function Get_Not_Empty_Line
     (Prompt:String := "Ingresa un texto no vacio";
      Error:String := "Ha ingresado un texto vacío, vuelva a intentarlo") return String;
   
   function Try_Convert_Integer
     (Texto: String; Texto_Como_Entero: out Integer) return Boolean;
   
   function Try_Convert_Float
     (Texto: String; Texto_Como_Float: out Float) return Boolean;
   
   function Get_Integer
     (Prompt:String := "Ingresa un valor no vacio";
      Error:String := "Ha ingresado un texto vacío, vuelva a intentarlo") return Integer;
   
   function Get_Float
     (Prompt:String := "Ingresa un valor no vacio";
      Error:String := "Ha ingresado un texto vacío, vuelva a intentarlo";
      Separador_Decimales : Character := ',') return Float;
  
   function Get_Integer_Between
      (Prompt:String := "Ingresa un texto no vacio";
      Max : Integer;
      Min : Integer;
      Empty_Error:String := "Texto Vacío, Intentalo de nuevo";
      Underflow_Error:String := "Ha ingresado un numero muy pequeño";
      Overflow_Error:String := "Ha ingresado un numero muy grande") return Integer;

   procedure Reemplazar
      (Input: in out String;
      CaracterInicial: in Character;
      CaracterFinal: in Character);
   
   function To_String
      (Input : Float;
      Cantidad_Decimales : Integer := 2;
      Separador_Decimales : Character := ',') return String;
   
   

end io;
