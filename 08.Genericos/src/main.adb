with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with io; use io;
with generic_io;

procedure Main is

begin

   --  declare
   --     --                                Index_Type      Element_Type
   --     type Arreglo_Entero is array (Positive range <>) of Integer;
   --
   --     package Integer_Array_List is new Ada.Containers.Vectors
   --       (Element_Type => Integer,
   --        Index_Type => Positive);
   --
   --     use Integer_Array_List;
   --
   --     Arreglo : Arreglo_Entero(1..3);    -- Size estático
   --     Lista : Integer_Array_List.Vector; -- Es dinamico, es decir, size variable
   --
   --  begin
   --
   --     Arreglo(1) := 32;
   --     Arreglo(2) := 33;
   --     Arreglo(3) := 50;
   --
   --     Ada.Text_IO.Put_Line("El contenido del arreglo estatico es:");
   --     for Valor of Arreglo loop
   --        Put_Line(Valor'Image);
   --     end loop;
   --
   --     Append(Lista,32);
   --     Append(Lista,33);
   --     Append(Lista,50);
   --     Ada.Text_IO.Put_Line("El contenido de la lista dinamica es:");
   --     for Valor of Lista loop
   --        Put_Line(Valor'Image);
   --     end loop;
   --
   --  end;

   ---------------------------------------------------------------

   --  declare
   --
   --     type Entrada_Nota is new Integer range 0..10;
   --     subtype Nota is Entrada_Nota range 1..10;
   --     Puntos : Entrada_Nota;
   --
   --     package Integer_Array_List is new Ada.Containers.Vectors
   --       (Element_Type => Nota,
   --        Index_Type => Positive);
   --
   --     use Integer_Array_List;
   --
   --
   --     Lista_Examenes : Integer_Array_List.Vector; -- Es dinamico, es decir, size variable
   --
   --
   --  begin
   --
   --     loop
   --        Puntos := Entrada_Nota(Get_Integer_Between("Introduce una nota. Pon 0 para finalizar", Integer(Entrada_Nota'Last), Integer(Entrada_Nota'First)));
   --        exit when Puntos = 0;
   --        Append(Lista_Examenes, Nota(Puntos));
   --     end loop;
   --
   --     Ada.Text_IO.Put_Line("El contenido de los examenes es:");
   --     for Valor of Lista_Examenes loop
   --         Put_Line(Valor'Image);
   --     end loop;
   --
   --
   --  end;

   --------------------------------------------------

   declare

      type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);

      package Dias_IO is new generic_io(Tipo => Dias);
      use Dias_IO;

      Dia : Dias;

   begin

         -- Put_Line("Ingrese un dia");

         --  if (Try_Convert(Get_Line, Dia)) then
         --     Put_Line("Has introducido un dia correctamente");
         --  else
         --     Put_Line("El valor introducido no es un dia");
         --  end if;

      Dia := Get_Discrete("Ingrese un dia");
      Put_Line(Dia'Image);


   end;


end Main;
