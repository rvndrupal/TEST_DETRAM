***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Library     ScreenCapLibrary
Library     DateTime
Resource    ./recursos.robot
Resource    ./casos.robot
Library     FakerLibrary



#robot -d resultados -i tg01  test.robot
#robot -d resultados  test.robot
#Vinr770919hdfltd00
#robot -d resultados  tes*.robot
#pabot --processes 20 --outputdir resultados_uno  TEST/test*.robot


***Variables***
#${url}          http://10.16.3.29/login
${url}          http://10.16.3.29/login/init
${navegador}    firefox
${tiempo}   .1
${dir}      Tramites
${dir2}      Aviso


${pdf1}     C:\\pdf\\pdf1.pdf
${pdf2}     C:\\pdf\\pdf2.pdf

      
${key}      C:\\ClavePrivada.key
${Cer}      C:\\vinr770919lc8.cer

*** Keywords ***
Aleatorio claverfc
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${datetime} =	Convert Date  ${CurrentDate}  datetime
    ${text} =    Generate Random String  2  [UPPER]
    ${inc} =    Generate Random String  3  [UPPER]
    ${num} =    Generate Random String  1  [NUMBERS]            
    [Return]     ${inc}C840918${text}${num}

Aleatorio claverfc2
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${datetime} =	Convert Date  ${CurrentDate}  datetime
    ${text} =    Generate Random String  2  [UPPER]
    ${inc} =    Generate Random String  3  [UPPER]
    ${num} =    Generate Random String  1  [NUMBERS]            
    [Return]     ${inc}D720918${text}${num}

Aleatorio Curp
    ${CurrentDate}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S.%f
    ${datetime} =	Convert Date  ${CurrentDate}  datetime
    ${tex} =    Generate Random String  2  [UPPER]
    ${num} =    Generate Random String  2  [NUMBERS]
    [Return]     VINF810919HDflTD${num}
    	
    

*** Test Cases ***
CC001 TRAMITES-0T4 (TRAMITES 018 A)(CHROME LOGIN)
    [Documentation]    PRUEBA TRAMITE 018 A  (Login) 
    [Tags]      tg01   
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}

    Cerrar

CC002 TRAMITES-0T4 (TRAMITES 018 A)(CHROME TRAMITE)
    [Documentation]    PRUEBA TRAMITE 018 A  
    [Tags]      tg02   
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Cerrar


CC003 TRAMITES-0T4 (TRAMITES 018 A)(CHROME ACTIVIDAD ECONÓMICA)
    [Documentation]    PRUEBA TRAMITE 018 A  ACTIVIDAD ECONÓMICA
    [Tags]      tg03   
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica  
    Cerrar

CC004 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DOMICILIO FISCAL)
    [Documentation]    PRUEBA TRAMITE 018 A  DOMICILIO FISCAL
    [Tags]      tg04  
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Cerrar

CC005 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DOMICILIO PLANTA)
    [Documentation]    PRUEBA TRAMITE 018 A  DOMICILIO PLANTA
    [Tags]      tg05  
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Domicilio de la Planta
    Cerrar


CC006 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DOMICILIO ALMACÉN)
    [Documentation]    PRUEBA TRAMITE 018 A  DOMICILIO ALMACÉN
    [Tags]      tg06 
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Domicilio de la Planta
    Domicilio del Almacen
    Cerrar


CC007 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DATOS REPRESENTANTE LEGAL)
    [Documentation]    PRUEBA TRAMITE 018 A  DATOS REPRESENTANTE LEGAL
    [Tags]      tg07 
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Domicilio de la Planta
    Domicilio del Almacen
    ${claverfc2} =    Aleatorio claverfc2
    Log     ${claverfc2}       
    Datos del Representante Legal    ${claverfc2}
    Cerrar

CC008 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DATOS DATOS ADICIONALES)
    [Documentation]    PRUEBA TRAMITE 018 A  DATOS DATOS ADICIONALES
    [Tags]      tg08 
    Esperar Iniciar ok    15  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Domicilio de la Planta
    Domicilio del Almacen
    ${claverfc2} =    Aleatorio claverfc2
    Log     ${claverfc2}       
    Datos del Representante Legal    ${claverfc2}
    Clave del medico veterinario
    Cerrar

CC009 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DATOS DOCUMENTOS ANEXOS)
    [Documentation]    PRUEBA TRAMITE 018 A  DATOS DOCUMENTOS ANEXOS
    [Tags]      tg09 
    Esperar Iniciar ok    30  
    #Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Domicilio de la Planta
    Domicilio del Almacen
    ${claverfc2} =    Aleatorio claverfc2
    Log     ${claverfc2}       
    Datos del Representante Legal    ${claverfc2}
    Clave del medico veterinario    
    Documentos Anexos
    Cerrar

CC010 TRAMITES-0T4 (TRAMITES 018 A)(CHROME DATOS FIRMA ELECTRONICA)
    [Documentation]    PRUEBA TRAMITE 018 A  DATOS FIRMA ELECTRONICA
    [Tags]      tg10
    Esperar Iniciar ok    30  
    Video Iniciar
    ${claverfc} =    Aleatorio claverfc
    Log     ${claverfc} 
    Login   ${url}   ${${navegador}
    Tramite
    Datos Personales    ${claverfc}
    Actividad Economica 
    Datos Domicilio Fiscal 
    Domicilio de la Planta
    Domicilio del Almacen
    ${claverfc2} =    Aleatorio claverfc2
    Log     ${claverfc2}       
    Datos del Representante Legal    ${claverfc2}
    Clave del medico veterinario    
    Documentos Anexos
    Sin Firma
    Video Finalizar
    Cerrar


    

    
     
    
    
    
 

 
    # Con firma
    # Dormir  1.5
    # #Video Finalizar
    Cerrar

