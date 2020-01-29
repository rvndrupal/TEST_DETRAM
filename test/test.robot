***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Library     ScreenCapLibrary
Library     DateTime
Resource    ./recursos.robot
Resource    ./casos.robot
Library     FakerLibrary



#robot -d resultados -i tg01  test.robot
#Vinr770919hdfltd00
#robot -d resultados  tes*.robot
#pabot --processes 20 --outputdir resultados_uno  TEST/test*.robot

***Variables***
${url}          http://10.16.3.29/login/init
${navegador}    chrome
${tiempo}   .1
${dir}      Tramites
${dir2}      Aviso


${pdf1}     C:\\pdf\\pdf1.pdf
${pdf2}     C:\\pdf\\pdf2.pdf

      
${key}      C:\\ClavePrivada.key
${Cer}      C:\\vinr770919lc8.cer

*** Keywords ***
Aleatorio rfc
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${datetime} =	Convert Date  ${CurrentDate}  datetime
    ${text} =    Generate Random String  2  [UPPER]
    ${num} =    Generate Random String  1  [NUMBERS]       
    [Return]     VINR820818${text}${num}
    	
    

*** Test Cases ***
CC001 TRAMITES-0T4 (TRAMITES 018 A)
    [Documentation]    PRUEBA TRAMITE 018 A  
    [Tags]      tg01 
    
    #Video Iniciar
    ${rfc} =    Aleatorio rfc
    Log     ${rfc}
 
    Login

    Tramite

    Datos Personales  ${rfc}

    Actividad Economica   

    Datos Domicilio Fiscal
  
    Domicilio de la Planta

    Domicilio del Almacen

    Datos del Representante Legal    ${rfc}

    Clave del medico veterinario

    Documentos Anexos

    #Sin Firma

    Con firma


    Dormir  1.5

    #Video Finalizar
    Cerrar