package body Alumno_Model is

   function Create(Nombre:String) return Persona is 
      
   begin
      return new C_Persona'(Nombre => To_Unbounded_String(Nombre),
                           Lista => Empty_Vector);
   end;
      
      ------------- "Getters & Setters" -------------
      
   function Get_Nombre(This:C_Persona) return String is 
   begin
      return To_String(This.Nombre);
   end;
   
   procedure Rendir_Examen(This: out C_Persona; Value:Integer) is
   begin
      Append(This.Lista,Value);
   end;
   
   function Calcular_Promedio(This: out C_Persona) return Float is
      Total : Integer := 0;
      Media : Float;
      Num_Examenes : Integer := This.Lista'Last;
   begin
      for I in This.Lista'Range loop
         Total := Total + Integer(This.Lista(I));
      end loop;
      Media := Float(Total) / Float(Num_Examenes);
      return(Media);
   end Calcular_Promedio;

end Alumno_Model;
