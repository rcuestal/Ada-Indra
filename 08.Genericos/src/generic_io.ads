generic
   type Tipo is (<>); -- El tipo es discreto

package generic_io is
   
   Default_Prompt: String := "Ingresa un valor";
   Default_Error_Message : String := "No ha ingresado un valor valido. Vuelva a intentarlo";
   
   function Try_Convert
     (Valor_Como_String: in String;
      Valor_Convertido: out Tipo) return Boolean;
   
   function Get_Discrete
     (Prompt:String := Default_Prompt;
      Error:String := Default_Error_Message) return Tipo;


   

end generic_io;
