with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Rectangulo_Model is
   
   function Create(Nombre:String; Base:Float:=0.0; Altura:Float:=0.0) return Rectangulo is   
   begin
      return new C_Rectangulo'(C_Figura with
                                 Nombre => To_Unbounded_String(Nombre),
                                 Base => Base,
                                 Altura => Altura);
   end;
   
   function Calcular_Area(This: in C_Rectangulo) return Float is
   begin
      return (This.Base * This.Altura) / 2.0;
   end;

end Rectangulo_Model;
