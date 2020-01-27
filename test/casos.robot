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
    Dormir      .2
    Click   //option[contains(text(),'San Isidro')]
    Texto  (//input[@placeholder='Calle'])[2]  Pinos
    Texto  (//input[@formcontrolname='numExterior'])[2]  45
    Texto  (//input[@formcontrolname='numInterior'])[2]  44
    Click  (//button[contains(@class,'btn btn-primary')])[3]
    Resultado  .5  ${dir}/Domicilio_planta.png  Domicilio planta OK


Domicilio del Almacen
    Scroll  0    2100
    Dormir  .4
    Texto  (//input[@placeholder='Código Postal'])[3]  53200
    Texto  (//input[@placeholder='Calle'])[3]  Juarez
    Texto    (//input[@placeholder='Número exterior'])[3]   12
    Texto  (//input[@placeholder='Número interior'])[3]  43 
    Click  (//button[@class='btn btn-primary'])[5]
    Resultado  .3  ${dir}/Domicilio_almacen.png  Domicilio Almacen OK


Datos del Representante Legal
    Scroll  0  2250
    Texto  (//input[contains(@placeholder,'Clave Única de Registro de Población')])[2]  ${curp}
    Texto  (//input[@placeholder='Registro Federal de Contribuyentes'])[2]  ${rfc}
    Dormir      .2
    Texto  (//input[@placeholder='Registro Federal de Contribuyentes'])[2]  ${rfc}
    Texto  (//input[contains(@type,'text')])[32]  Maribel
    Texto   (//input[@maxlength='50'])[7]   Chavez
    Texto  (//input[contains(@maxlength,'50')])[8]  Garcia
    Texto   (//input[@placeholder='Lada'])[2]   044
    Texto  (//input[contains(@type,'text')])[36]  558987987
    Texto    (//input[contains(@placeholder,'ejemplo@dominio.com')])[3]     Maribel@gmail.com
    Resultado  .3   ${dir}/Datos_legal.png    Datos Representante Legal OK


Clave del medico veterinario
    Scroll  0  2300
    Texto  (//input[@type='text'])[38]  MR-0119-09-001-10
    Resultado  .3  ${dir}/Clave_medico.png  Clave medico OK
    