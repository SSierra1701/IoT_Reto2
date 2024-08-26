atget id id

data p "hola" id id
send p

loop
read mens
rdata mens tipo valor1 valor2 bat ite

if( tipo == "alerta")
   cprint "Alerta en: longitud" valor1 ", latitud: " valor2 ", Batería: " bat ", Iteraciones: " ite
end

if( tipo == "critico")
   cprint "Nodo descargado en: longitud" valor1 ", latitud: " valor2 ", Batería: " bat ", Iteraciones: " ite
   data p "stop"
   send p
   wait 1000
   stop
end

wait 100
