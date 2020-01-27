***Settings***
Library     SeleniumLibrary
Library     String


***Keywords***
Datos Domicilio Fiscal
    Texto  (//input[contains(@formcontrolname,'codigoPostal')])[1]  53200
    Scroll  0   1400
    Texto   (//input[@formcontrolname='calle'])[1]       Juarez
    Texto  (//input[@formcontrolname='numExterior'])[1]      60
    Texto  (//input[@placeholder='Número interior'])[1]     03
    Resultado  .5  ${dir}/Datos_fiscales.png  Datos fiscales OK
    Scroll  0  1700

Domicilio de la Planta
    Scroll  0  1800
    Texto  (//input[@placeholder='Código Postal'])[2]  52300
    Click   (//select[contains(@formcontrolname,'colonia')])[2]
    Click   //option[contains(text(),'San Isidro')]
    Texto  (//input[@placeholder='Calle'])[2]  Pinos
    Texto  (//input[@formcontrolname='numExterior'])[2]  45
    Texto  (//input[@formcontrolname='numInterior'])[2]  44
    Click  (//button[contains(@class,'btn btn-primary')])[3]
    Resultado  .5  ${dir}/Domicilio_planta.png  Domicilio planta OK