package body Profesor_Model is

   function Create(Nombre:String) return Profesor is   
   begin
      return new C_Profesor'(C_Persona with
                             Nombre => To_Unbounded_String(Nombre),
                             Num_Cursos => 0);
   end;
   
   function To_String(This: in C_Profesor) return String is
   begin
      return ("Hola, soy el profesor " & To_String(This.Nombre));
   end;
   
   procedure Dictar_Curso(This: in out C_Profesor) is 
   begin
      This.Num_Cursos := This.Num_Cursos + 1;
      Put_Line("Numero de cursos incrementado a:" & This.Num_Cursos'Image);
   end;

end Profesor_Model;
