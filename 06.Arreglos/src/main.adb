with io; use io;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

begin
   --  Declaracion de arreglos
   declare
      type Arreglo_Numeros is array (1..3) of Positive;

      Numeros : Arreglo_Numeros;
      Mas_Numeros : Arreglo_Numeros := (10,20,30);
      Todavia_Mas_Numeros : Arreglo_Numeros := (2 => 100, others => 1);


   begin
      Numeros(1) := 3;
      Numeros(2) := 5;
      Numeros(3) := 10;

      for I in Numeros'Range loop
         Put_Line("Numeros(" & I'Image & ") =" & Numeros(I)'Image);
      end loop;

      Put("Mas_Numeros = (");
      for N of Mas_Numeros loop
         Put(N'Image);
         Put(",");
      end loop;
      Put(")");
      Put_Line("");


      Put("Todavia_Mas_Numeros = (");
      for P in Todavia_Mas_Numeros'First..Todavia_Mas_Numeros'Last loop
         Put(Todavia_Mas_Numeros(P)'Image);
         Put(if (P/=Todavia_Mas_Numeros'Last) then "," else "");
      end loop;
      Put(")");
      Put_Line("");

      -----------------------------------------------------

      declare
         type Nota is new Integer range 1..10 with Default_Value => 5;
         type Examenes is array (1..Get_Integer("¿Cuantos exámenes has hecho?")) of Nota;

         Lista_Examenes : Examenes;

      begin
         for I in Lista_Examenes'Range loop
            Lista_Examenes(I) := Nota(Get_Integer_Between(
                                      "Introduce una nota para el examen",
                                      Integer(Nota'Last),
                                      Integer(Nota'First)));

            -- Lista_Examenes(I) := Nota(Get_Integer("Introduce una nota para el examen"));
         end loop;

         Put("Tus notas del curso han sido (");

         for I in Lista_Examenes'First..Lista_Examenes'Last loop
            Put(Lista_Examenes(I)'Image);
            Put(if (I/=Lista_Examenes'Last) then "," else "");
         end loop;

         Put(")");
         Put_Line("");
         end;
      end;

end Main;
