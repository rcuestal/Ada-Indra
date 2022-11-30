package body Modelo is

   function To_String(This:Clase_Iguana) return String is
   begin
      return "Soy una iguana";
   end;
   
   function To_String(This:Clase_Gallina) return String is
   begin
      return "Soy una gallina";
   end;

end Modelo;
