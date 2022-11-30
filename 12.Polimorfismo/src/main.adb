with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Modelo; use Modelo;

procedure Main is

begin

   declare
      --  -- Un_Animal : Clase_Animal; -- No se puede ya que clase animal es abstracto
      --
      --  Turuleca : Clase_Gallina; -- Instancio una gallina en el stack
      --  -- Turuleca := Clase_Gallina := (Nombre => To_Unbounded_String("Turu"));
      --
      --  La_De_Los_Huevos_De_Oro : Clase_Gallina := Turuleca; -- Distintas gallinas con los mismos datos
      --
      --  Rango : Clase_Iguana; -- Instancio la iguana en el stack


   begin

      --  Put_Line(Turuleca.To_String);
      --  Put_Line(Rango.To_String);
      --
      --  -- De momento tenemos dos gallinas y una higuana, 3 en total
      --
      --  declare
      --     -- A esto se le llama Clss Wide Declaration
      --     -- Puede almacenar cualquier objeto de animal
      --     -- Un_Animal : Clase_Animal'Class;
      --
      --     -- Opciones válidas:
      --     --Un_Animal : Clase_Animal'Class := Rango;
      --     Un_Animal : Clase_Animal'Class := Turuleca; -- Genero una copia de Turuleca
      --     --Un_Animal : Clase_Animal'Class := Clase_Gallina'(others => <>);
      --
      --  begin
      --
      --     -- Ahora tenemos 4 objetos en el stack
      --     Put_Line(Un_Animal.To_String);
      --
      --  end;

      declare
         Turuleca : Access_Animal := new Clase_Gallina; -- Vive en el heap
         Rango : Access_Animal := new Clase_Iguana; -- Vive en el Heap
         Animal : Access_Animal := Rango; -- Es una referencia a un objeto que ya existe

         -- Ahora solo tenemos dos objetos. Animal apunta a Rango, pero no es uun objeto nuevo

      begin
         Put_Line(Turuleca.To_String);
         Put_Line(Rango.To_String);
         Put_Line(Animal.To_String);
      end;

   end;

   null;


end Main;
