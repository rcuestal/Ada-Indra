with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Aula;
with Alumno_Model; use Alumno_Model;
with Profesor_Model; use Profesor_Model;
with Persona_Model; use Persona_Model;

procedure Main is

   --  Jaimito : Alumno := Create("Jaimito");
   --  Esteban : Profesor := Create("Esteban");

   --  procedure Show_Alumno(A: Alumno) is
   --  begin
   --     Put_Line(A.To_String);
   --  end;
   --
   --  procedure Show_Profesor(P: Profesor) is
   --  begin
   --     Put_Line(P.To_String);
   --  end;

   --  package Curso_Ada is new Aula(Tipo_Integrantes => Alumno,
   --                                Mostrar_Integrante => Show_Alumno);


begin

   Ada.Float_Text_IO.Default_Exp := 0; -- Quita exponencial
   Ada.Float_Text_IO.Default_Aft := 2; -- Muestra dos decimales

   --  Put_Line(Jaimito.To_String);
   --
   --  Jaimito.Rendir_Examen(2);
   --  Jaimito.Rendir_Examen(3);
   --  Jaimito.Rendir_Examen(5);
   --  Jaimito.Rendir_Examen(3);
   --  Jaimito.Rendir_Examen(7);
   --
   --  Put("Mi promedio de notas es");
   --  Put(Float(Jaimito.Calcular_Promedio));
   --  New_Line;
   --
   --  Put_Line("Presentando el curso");
   --  Curso_Ada.Asistentes.Append(Jaimito);
   --  Curso_Ada.Mostrar_Asistentes;
   --
   --  Put_Line("El curso esta dictado por:");
   --  Put_Line(Esteban.To_String);
   --  Esteban.Dictar_Curso;

   declare
      Mario : Alumno := Create("Mario");
      Iñigo : Alumno := Create("Iñigo");
      David : Alumno := Create("David");
      Esteban : Profesor := Create("Esteban");

      Una_Persona : Persona;

   begin

      Una_Persona := Persona(Mario);
      Put_Line(Una_Persona.To_String);
      Una_Persona := Persona(Esteban);
      Put_Line(Una_Persona.To_String);

   end;

end Main;
