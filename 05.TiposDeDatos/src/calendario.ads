package calendario is

   type Dia_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   type Meses_Ano is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);
   type Estaciones is (Primavera, Verano, Oto�o, Invierno);
   
   type Dia_Del_Mes is new integer range 1..31;
   type A�os is new integer range 1900..2100;
   
   type Fecha is record
      Dia: Dia_Del_Mes;
      Mes: Meses_Ano;
      A�o: A�os;      
   end record;
   
   procedure Mostrar_Dias;
   procedure Mostrar_Estaciones;
   function To_String(Date:Fecha) return String;

end calendario;
