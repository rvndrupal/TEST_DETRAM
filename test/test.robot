***Settings***
Documentation   Casos de Prueba  CC-04-2019-AMTIF-OT04
Library     String
Library     ScreenCapLibrary
Resource    ./recursos.robot
Resource    ./casos.robot



#robot -d resultados -i tg01 tg test.robot

***Variables***
${url}          http://10.16.3.29/login/init
${navegador}    chrome
${tiempo}   .1
${dir}      Tramites
${dir2}      Aviso

${rfc}      VINR770919LC8
${pdf1}     C:\\pdf\pdf1.pdf
${pdf2}     C:\\pdf\pdf2.pdf
${date}=    Get Current Date

${curp} =  Random Int    min=0    max=9999 

*** Test Cases ***
CC001 TRAMITES-0T4 (TRAMITES 018 A)
    [Documentation]    PRUEBA TRAMITE 018 A  
    [Tags]      tg01 
    #Video Iniciar 
    Comment  El numero es: ${aleatorio}
    Esperar Iniciar ok    5
    Dormir Todos  ${tiempo}
    Abrir navegador    
    Maximizar 
    Scroll  0  200
    Resultado  .5  ${dir}/Login.png  Pantalla Login Ok
    Texto   //input[contains(@id,'username')]    daniel.badillo
    Texto   //input[contains(@id,'password')]    test123$ 
    Resultado  .5  ${dir}/Login_password.png   Se introducen los datos para el Login
    Click  (//button[@type='button'])[3]
    Dormir  1
    Scroll  0  500
    Resultado  .3  ${dir}/Carga_resultados.png   Carga los resultados
    Click  (//a[@href='#'])[1]
    Click  //a[@routerlink='/registraSolicitudTramite/18A/1/init'][contains(.,'Trámite 18A')]
    Scroll  0  500
    Resultado  .2  ${dir}/Datos_personales.png  Datos Personales Ok  
    Click  //select[@formcontrolname='tipoPersona']
    Click  //*[@id="Formulario"]/form/div[3]/div[1]/select/option[2]
    Texto  (//input[contains(@formcontrolname,'curp')])[1]     ${curp}
    Print Variable  ${curp}
    Print Variable  ${date}
    Scroll  0  400

    Dormir  2
    # Texto  //input[@formcontrolname='rfc']          ${rfc}
    # # Dormir  2
    # # Texto  //input[@formcontrolname='rfc']          ${rfc}
    # Dormir  5
    # Texto  (//input[@type='text'])[3]    YENNYELY NICOLE
    # Dormir  .2
    # Texto  //input[@formcontrolname='primerApellido']   MONTENEGRO
    # Dormir   .2
    # Texto  (//input[contains(@formcontrolname,'segundoApellido')])[1]   GARCIA
    # Dormir   .2
    # Texto  (//input[contains(@formcontrolname,'lada')])[1]   777
    # Dormir   .2
    # Texto  (//input[contains(@placeholder,'Teléfono fijo')])[1]   7774567864
    # Dormir   .2
    # Texto  (//input[contains(@maxlength,'4')])[1]   245
    # Dormir   .2
    # Texto  (//input[contains(@type,'text')])[9]   345
    # Dormir   .2
    # Texto  (//input[contains(@formcontrolname,'correoElectronico')])[1]   rodrigo@gmail.com
    # Dormir   .2
    # Texto  //input[contains(@formcontrolname,'correoElectronicoAl')]   rodrigo2@gmail.com
    # Resultado  1  ${dir}/Personales.png  Datos Personales Ok
    # Scroll  0  1000

    # Click  //select[@formcontrolname='actividadServicio']
    # Click  //option[contains(text(),'ELABORADOR POR MAQUILA')]
    # Click  //select[contains(@formcontrolname,'materiaProducto')]
    # Click   //option[contains(text(),'SALES PURAS ANTIMICROBIANAS')]
    # Click   //select[contains(@ng-reflect-name,'funcion')]
    # Click   //option[contains(text(),'ALMACENAR')]
    # Dormir  1
    # Click   //option[contains(text(),'ALMACENAR')]
    # Click   (//button[@class='btn btn-primary'][contains(.,'Agregar')])[1]
    # Scroll  0  1200
    # Resultado  .3  ${dir}/Actividad_económica.png  Actividad OK

    # Datos Domicilio Fiscal
  
    # Domicilio de la Planta

    # Domicilio del Almacen

    # Datos del Representante Legal

    # Clave del medico veterinario

    # #Documentos Anexos
    # Scroll  0  2500
    # Examinar  (//input[contains(@type,'file')])[1]  ${pdf1}
    # Examinar  (//input[contains(@type,'file')])[2]  ${pdf2}
    # Click  //input[contains(@id,'check')]
    # Scroll  0  2700
    # Click  (//button[@class='btn btn-primary'])[8]
    # Dormir  2
    # Resultado  .4  ${dir}/Archivos.png  Archivos pdf OK

    #Firma 



    



    

    

    


    Dormir  6

    #Video Finalizar
    Cerrar