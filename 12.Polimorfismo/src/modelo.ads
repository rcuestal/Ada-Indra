package Modelo is
   
   -- null record es una clase sin atributos
   type Clase_Animal is abstract tagged null record;
   -- vvvv Puede apuntar a un objeto de la clase animal o cualquiera de las subclases vvvv
   type Access_Animal is access all Clase_Animal'Class;
   function To_String(This:Clase_Animal) return String is abstract;
   
   type Clase_Iguana is new Clase_Animal with null record;
   -- Primitiva de la Clase Iguana
   overriding function To_String(This:Clase_Iguana) return String;
   
   
   type Clase_Gallina is new Clase_Animal with null record;
   -- Primitiva de la Clase Gallina
   overriding function To_String(This:Clase_Gallina) return String;


end Modelo;
