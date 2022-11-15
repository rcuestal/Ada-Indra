with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with figuras; use figuras;
with calendario; use calendario;


procedure Main is

   Base : Distancia := 10.0;
   Altura : Distancia := 15.0;
   Area_Triangulo : Area;

   ---------------------------

   type Nota is new Integer range 1..10 with Default_Value => 5; -- Se puede eliminar el "new integer"
   type Numero_Muy_Alto is new Integer range 1..2**30;

   Nota_Examen : Nota;

   Bits_reservados_Menos_1 : Integer := Numero_Muy_Alto'Size - 1;

   ---------------------------

   type Angulo is mod 360; -- Is mod equivale a range 0..360
   Giro : Angulo := 180;

   ---------------------------


   Hoy_Es : Dia_Semana;
   Mañana_Es : Dia_Semana;
   Ayer_Fue : Dia_Semana;

begin

   Area_Triangulo := Calcular_Area_Triangulo(Base, Altura);
   Put_Line("Area del triángulo =" & Area_Triangulo'Image);

   ----------------------------
   Put_Line("");
   -----------------------------

   Nota_Examen := 10;
   Nota_Examen := Nota_Examen - 4;
   Put_Line("Se han reservado" & Nota'Size'Image &
              " bits de memoria para poder almacenar el rango de 1 a 10 de la nota (10 valores)");


   Put_Line("Se han reservado" & Numero_Muy_Alto'Size'Image &
            " bits de memoria para poder almacenar el rango de 1 a 2^30, es decir"
            & Bits_reservados_Menos_1'Image & " + 1 (para incluir el uno)");


   -----------------------------
   Put_Line("");
   -----------------------------


   Put_Line("Original:" & Giro'Image & "º");
   Giro := Giro + 185;
   Put_Line("Tras sumarle 185º obtenemos" & Giro'Image & "º");
   Put_Line("Se reinicia por el tipo mod");


   -----------------------------
   Put_Line("");
   -----------------------------

   Hoy_Es := Martes;
   Put_Line(Hoy_Es'Image);
   Mañana_Es := Dia_Semana'Succ(Hoy_Es); --- Succ = sucesivo, siguiente
   Put_Line(Mañana_Es'Image);
   Ayer_Fue := Dia_Semana'Pred(Hoy_Es); --- Pred = predecesor, anterior
   Put_Line(Ayer_Fue'Image);

   -----------------------------
   Put_Line("");
   -----------------------------

   --  for Dia in Dia_Semana loop
   --     case Dia is
   --        when Sabado..Domingo =>
   --           Put_Line(Dia'Image & " es fin de semana");
   --        when others =>
   --           Put_Line(Dia'Image & " es entresemana");
   --        end case;
   --  end loop;

   Mostrar_Dias;

   -----------------------------
   Put_Line("");
   -----------------------------

   --  for Meses in Meses_Ano loop
   --     case Meses is
   --        when Enero..Febrero =>
   --           Put_Line(Meses'Image & " - " & Invierno'Image);
   --        when Marzo =>
   --           Put_Line(Meses'Image & " -> Transición " & Invierno'Image & " -> " & Primavera'Image);
   --        when Abril..Mayo =>
   --           Put_Line(Meses'Image & " - " & Primavera'Image);
   --        when Junio =>
   --           Put_Line(Meses'Image & " -> Transición " & Primavera'Image & " -> " & Verano'Image);
   --        when Julio..Agosto =>
   --           Put_Line(Meses'Image & " - " & Verano'Image);
   --        when Septiembre =>
   --           Put_Line(Meses'Image & " -> Transición " & Verano'Image & " -> " & Otoño'Image);
   --        when Octubre..Noviembre =>
   --           Put_Line(Meses'Image & " - " & Otoño'Image);
   --        when Diciembre =>
   --           Put_Line(Meses'Image & " -> Transición " & Otoño'Image & " -> " & Invierno'Image);
   --        end case;
   --  end loop;

   Mostrar_Estaciones;

   -----------------------------
   Put_Line("");
   -----------------------------

   declare
      use calendario;

      Hoy : Fecha := (15, Noviembre, 2022);
      Cumpleaños : Fecha := (Dia => 1, Mes => Enero, Año => 2000);

   begin
      Put_Line("Hoy es" & To_String(Hoy));
      Put_Line("Mi cumpleaños es el" & To_String(Cumpleaños));
   end;


end Main;
