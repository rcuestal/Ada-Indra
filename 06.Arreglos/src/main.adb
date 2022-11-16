with io; use io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

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

   -------------------------------------------

   declare
      type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
      subtype Fin_De_Semana is Dias_Semana range Sabado..Domingo;

   --  function "+"(Input : in String) return Unbounded_String is
   --  begin
   --     return To_Unbounded_String(Input);
   --     end;

   function C(Input : in String) return Unbounded_String renames To_Unbounded_String;

      -- He omitido la declaración del type
   Dias_En_Ingles : array (Dias_Semana) of Unbounded_String
     --  :=  (To_Unbounded_String("Monday"),
     --      To_Unbounded_String("Tuesday"),
     --      To_Unbounded_String("Wednesday"),
     --      To_Unbounded_String("Thursday"),
     --      To_Unbounded_String("Friday"),
     --      To_Unbounded_String("Saturday"),
     --      To_Unbounded_String("Sunday"));
     := (C("Monday"), C("Tuesday"), C("Wednesday"), C("Thursday"), C("Friday"), C("Saturday"), C("Sunday"));

   begin

      Put_Line("Introduce un día de la semana");
      for Dia in Dias_Semana loop
         Put_Line(Dia'Image);
      end loop;

      declare
         Dia : Dias_Semana := Dias_Semana'Value(Get_Line);
      begin
         Put_Line(Dia'Image & " en inglés es " & To_String(Dias_En_Ingles(Dia)));
      end;


   end;

   -----------------------------------------------------

   declare
      type Nota is range 1..10;
      type Lista_Notas is array(Positive range <>) of Nota with Default_Component_Value => 10;

      Notas : Lista_Notas(1..3);
      -- Notas : Lista_Notas := (4,5,6,2,4,5);
   begin
      for Nota of Notas loop
         Put_Line(Nota'Image);
      end loop;
   end;

   -----------------------------------------------------

   declare
      type Nota is new Integer range 1..10 with Default_Value => 5;
      type Nota_float is new Float range 1.0..10.0 with Default_Value => 5.0;
      type Examenes is array(Positive range <>) of Nota with Default_Component_Value => 10;


      procedure Cargar_Notas(Lista : out Examenes) is
      begin
         for I in Lista'Range loop
            Lista(I) := Nota(Get_Integer_Between(
                                      "Introduce una nota para el examen",
                                      Integer(Nota'Last),
                                      Integer(Nota'First)));

            -- Lista_Examenes(I) := Nota(Get_Integer("Introduce una nota para el examen"));
         end loop;
      end Cargar_Notas;

      procedure Mostrar_Notas(Lista : Examenes) is
      begin
         Put_line("Has sacado las siguientes notas:");
         for I in Lista'Range loop
            Put_Line(Lista(I)'Image);
         end loop;
      end Mostrar_Notas;

      function Mostrar_Mas_Alta(Lista : Examenes) return Integer is
      Max : integer := 0;
      begin
         Put_line("La nota más alta es:");
         for I in Lista'Range loop
            if (Integer(Lista(I)) > Max) then Max := Integer(Lista(I)); end if;
         end loop;
         return(Max);
      end Mostrar_Mas_Alta;

      function Mostrar_Media(Lista : Examenes) return Nota_float is
         Total : Integer := 0;
         Media : Nota_float;
         Num_Examenes : Nota_float := Nota_float(Lista'Last);
      begin
         Put_line("La media es:");
         for I in Lista'Range loop
            Total := Total + Integer(Lista(I));
         end loop;
         Media := Nota_float(Total / Integer(Num_Examenes));
         return(Media);
      end Mostrar_Media;

      Examen : Examenes(1..Get_Integer("¿Cuantos exámenes has hecho?"));

      begin

      Cargar_Notas(Examen);
      Mostrar_Notas(Examen);

      Put_Line("Tu nota más alta es:" & Mostrar_Mas_Alta(Examen)'Image);
      Put_Line("La media es:" & Mostrar_Media(Examen)'Image);


         --  Put("Tus notas del curso han sido (");
         --
         --  for I in Examen'First..Examen'Last loop
         --     Put(Examen(I)'Image);
         --     Put(if (I/=Examen'Last) then "," else "");
         --  end loop;
         --
         --  Put(")");
         --  Put_Line("");
   end;

   ---------------------------------------------------------------




end Main;
