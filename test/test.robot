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

***Variables***
${url}          http://10.16.3.29/login/init
${navegador}    chrome
${tiempo}   .1
${dir}      Tramites
${dir2}      Aviso


${pdf1}     C:\\pdf\\pdf1.pdf
${pdf2}     C:\\pdf\\pdf2.pdf

${curp}     Vinr
${rfc}      VINR770919L
${key}      C:\\ClavePrivada.key
${Cer}      C:\\vinr770919lc8.cer
    	
    

*** Test Cases ***
CC001 TRAMITES-0T4 (TRAMITES 018 A)
    [Documentation]    PRUEBA TRAMITE 018 A  
    [Tags]      tg01 
    Login

    Tramite

    Datos Personales

    Actividad Economica   

    Datos Domicilio Fiscal
  
    Domicilio de la Planta

    Domicilio del Almacen

    Datos del Representante Legal

    Clave del medico veterinario

    Documentos Anexos

    #Sin Firma

    Con firma






    



    

    

    


    Dormir  6

    #Video Finalizar
    Cerrar