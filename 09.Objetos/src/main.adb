with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with P_Persona; use P_Persona;
with P_Heroe; use P_Heroe;
with P_Triangulo; use P_Triangulo;

procedure Main is

begin
   declare

      Una_Persona : Persona := null;
      Un_Heroe : Heroe := null;
      Un_Triangulo : Triangulo := null;

   begin

      Una_Persona := new C_Persona'(Nombre => To_Unbounded_String("Roberto"),
                                    Apellido => To_Unbounded_String("Cuesta"));

      Un_Heroe := new C_Heroe'(Nombre => To_Unbounded_String("Giant"),
                               Fuerza => 3000,
                               HP => 200);

      Un_Triangulo := new C_Triangulo'(Base => 5.2,
                               Altura => 3.1);

      Una_Persona.Saludar;

      Un_Heroe.Presentacion;

      Put_Line(Un_Triangulo.Calcular_Area'Image);

   end;

   null;
end Main;
