with Figura; use Figura;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Rectangulo_Model is

   type C_Rectangulo is new C_Figura with private;
   type Rectangulo is access C_Rectangulo'Class;
   
   function Create(Nombre:String; Base:Float:=0.0; Altura:Float:=0.0) return Rectangulo;
   
   overriding function Calcular_Area (This: in C_Rectangulo) return float;

private
   
   type C_Rectangulo is new C_Figura with record
      Nombre : Unbounded_String;
      Base : Float := 0.0;
      Altura : Float := 0.0;
   end record;
   
end Rectangulo_Model;
