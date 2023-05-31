# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.

print "Ingresa tu salario:"
sueldo=gets.chomp.to_f
print "Ingresa el porcentaje de aumento :"
aumento= gets.chomp.to_f

def calculo_nuevo_salario (salario,incremento)
    salario_incrementado= salario+(salario *(incremento/100))
    puts " El nuevo salario sera: #{salario_incrementado}"
end
calculo_nuevo_salario(sueldo, aumento)


# Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego.

def adivinanza
puts "Adivina el numero, está entre 1 y 10"
$numero=gets.chomp.to_i
end
adivinanza
respuesta_correcta=rand(1..10)

acierto=true
while acierto do
    if $numero > respuesta_correcta
        puts "Incorrecto, intenta un numero menor"
        adivinanza
    elsif $numero < respuesta_correcta
        puts "Incorrecto, intenta un menor mayor"
        adivinanza
    elsif $numero == respuesta_correcta
        puts "Correcto!, has acertado el numero secreto"
        acierto=false
    end
end

# Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.

puts "***Bienvenido al sistema de calculo IMC!***"


def calculo_imc
    puts "ingresa tu peso en kilos:"
    peso=gets.chomp.to_f
    puts "Ingresa tu altura en metros:"
    altura=gets.chomp.to_f

    imc=peso/(altura**2)
end

def masa_corporal(imc)
    puts "Tu IMC es #{imc}"
    if imc<18.5
        puts "Está bajo peso"

    elsif imc>= 18.5 && imc<25.0 
        puts "Es un peso normal"

    elsif imc>=25.0 && imc<30 
        puts "Esta sobrepeso"

    elsif imc>=30
        print "Tiene obesidad" 
        if imc>=30 && imc <35
        print " grado I: moderada"
        elsif imc >=35 && imc <40
        print " grado II: Severa"
        elsif imc >=40
        print " grado III: Muy severa"
        end
    end
end

masa_corporal(calculo_imc)