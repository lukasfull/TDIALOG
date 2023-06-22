//Bibliotecas
#Include 'TOTVS.ch'


//Lucas Silva 


User Function zDIALOG()
    Local aArea         := FWGetArea()
    Local nCorFundo     := RGB(153, 255, 204)
    Local nJanAltura    := 272
    Local nJanLargur    := 511 
    Local cJanTitulo    := 'Endereços'
    Local lDimPixels    := .T. 
    Local lCentraliz    := .T. 
    Local nObjLinha     := 0
    Local nObjColun     := 0
    Local nObjLargu     := 0
    Local nObjAltur     := 0
    Private cFontNome   := 'Tahoma'
    Private oFontPadrao := TFont():New(cFontNome, , -12)
    Private oDialogPvt 
    Private bBlocoIni   := {|| /*fSuaFuncao()*/ } //Aqui voce pode acionar funcoes customizadas que irao ser acionadas ao abrir a dialog 
    //objeto0 
    Private oGetObj0 
    Private xGetObj0    := Space(10) //Se o get for data para inicilizar use dToS(''), se for numerico inicie com 0  
    //objeto1 
    Private oGetObj1 
    Private xGetObj1    := Space(10) //Se o get for data para inicilizar use dToS(''), se for numerico inicie com 0  
    //objeto2 
    Private oGetObj2 
    Private xGetObj2    := Space(10) //Se o get for data para inicilizar use dToS(''), se for numerico inicie com 0  
    //objeto3 
    Private oGetObj3 
    Private xGetObj3    := Space(10) //Se o get for data para inicilizar use dToS(''), se for numerico inicie com 0  
    //objeto7 
    Private oSayObj7 
    Private oResult as Object 
    Private cSayObj7    := 'Cidade'  
    //objeto8 
    Private oSayObj8 
    Private cSayObj8    := 'Bairro'  
    //objeto9 
    Private oSayObj9 
    Private cSayObj9    := 'Rua'  

    oResult  := JsonObject():new()
    //objeto10 
    Private oBtnObj10  
    Private cBtnObj10    := 'Button'  
    Private bBtnObj10    := {|| oResult := u_zViaCep(alltrim(xGetObj0))} 



    //Cria a dialog
    oDialogPvt := TDialog():New(0, 0, nJanAltura, nJanLargur, cJanTitulo, , , , , , nCorFundo, , , lDimPixels)
    
        //objeto0 - usando a classe TGet
        nObjLinha := 10
        nObjColun := 87
        nObjLargu := 75
        nObjAltur := 12
        oGetObj0  := TGet():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , xGetObj0 := u, xGetObj0)}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)
        oGetObj0:cPlaceHold := 'Informe o CEP'   //Texto que sera exibido no campo antes de ter conteudo
        //oGetObj0:cF3        := 'Codigo da consulta padrao' //Codigo da consulta padrao / F3 que sera habilitada
        //oGetObj0:bValid     := {|| fFuncaoVld()}           //Funcao para validar o que foi digitado
        //oGetObj0:lReadOnly  := .T.                         //Para permitir o usuario clicar mas nao editar o campo
        //oGetObj0:lActive    := .F.                         //Para deixar o campo inativo e o usuario nao conseguir nem clicar
        //oGetObj0:Picture    := '@!'                        //Mascara / Picture do campo

        //objeto1 - usando a classe TGet
        nObjLinha := 48
        nObjColun := 22
        nObjLargu := 100
        nObjAltur := 10
        oGetObj1  := TGet():New(nObjLinha, nObjColun, {|u|  xGetObj1 := oResult['localidade']}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)
        //oGetObj1:cPlaceHold := 'Digite aqui um texto...'   //Texto que sera exibido no campo antes de ter conteudo
        //oGetObj1:cF3        := 'Codigo da consulta padrao' //Codigo da consulta padrao / F3 que sera habilitada
        //oGetObj1:bValid     := {|| fFuncaoVld()}           //Funcao para validar o que foi digitado
        //oGetObj1:lReadOnly  := .T.                         //Para permitir o usuario clicar mas nao editar o campo
        //oGetObj1:lActive    := .F.                         //Para deixar o campo inativo e o usuario nao conseguir nem clicar
        //oGetObj1:Picture    := '@!'                        //Mascara / Picture do campo

        //objeto2 - usando a classe TGet
        nObjLinha := 68
        nObjColun := 23
        nObjLargu := 100
        nObjAltur := 10
        oGetObj2  := TGet():New(nObjLinha, nObjColun, {|u| xGetObj2 := oResult['bairro']}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)
        //oGetObj2:cPlaceHold := 'Digite aqui um texto...'   //Texto que sera exibido no campo antes de ter conteudo
        //oGetObj2:cF3        := 'Codigo da consulta padrao' //Codigo da consulta padrao / F3 que sera habilitada
        //oGetObj2:bValid     := {|| fFuncaoVld()}           //Funcao para validar o que foi digitado
        //oGetObj2:lReadOnly  := .T.                         //Para permitir o usuario clicar mas nao editar o campo
        //oGetObj2:lActive    := .F.                         //Para deixar o campo inativo e o usuario nao conseguir nem clicar
        //oGetObj2:Picture    := '@!'                        //Mascara / Picture do campo

        //objeto3 - usando a classe TGet
        nObjLinha := 93
        nObjColun := 23
        nObjLargu := 100
        nObjAltur := 10
        oGetObj3  := TGet():New(nObjLinha, nObjColun, {|u| xGetObj3 := oResult['logradouro']}, oDialogPvt, nObjLargu, nObjAltur, /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels)
        //oGetObj3:cPlaceHold := 'Digite aqui um texto...'   //Texto que sera exibido no campo antes de ter conteudo
        //oGetObj3:cF3        := 'Codigo da consulta padrao' //Codigo da consulta padrao / F3 que sera habilitada
        //oGetObj3:bValid     := {|| fFuncaoVld()}           //Funcao para validar o que foi digitado
        //oGetObj3:lReadOnly  := .T.                         //Para permitir o usuario clicar mas nao editar o campo
        //oGetObj3:lActive    := .F.                         //Para deixar o campo inativo e o usuario nao conseguir nem clicar
        //oGetObj3:Picture    := '@!'                        //Mascara / Picture do campo

        //objeto7 - usando a classe TSay
        nObjLinha := 35
        nObjColun := 28
        nObjLargu := 28
        nObjAltur := 7
        oSayObj7  := TSay():New(nObjLinha, nObjColun, {|| cSayObj7}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //objeto8 - usando a classe TSay
        nObjLinha := 60
        nObjColun := 29
        nObjLargu := 28
        nObjAltur := 7
        oSayObj8  := TSay():New(nObjLinha, nObjColun, {|| cSayObj8}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //objeto9 - usando a classe TSay
        nObjLinha := 84
        nObjColun := 29
        nObjLargu := 28
        nObjAltur := 7
        oSayObj9  := TSay():New(nObjLinha, nObjColun, {|| cSayObj9}, oDialogPvt, /*cPicture*/, oFontPadrao, , , , lDimPixels, /*nClrText*/, /*nClrBack*/, nObjLargu, nObjAltur, , , , , , /*lHTML*/)

        //objeto10 - usando a classe TButton
        nObjLinha := 30
        nObjColun := 105
        nObjLargu := 50
        nObjAltur := 15
        oBtnObj10  := TButton():New(nObjLinha, nObjColun, cBtnObj10, oDialogPvt, bBtnObj10, nObjLargu, nObjAltur, , oFontPadrao, , lDimPixels)

    
    //Ativa e exibe a janela
    oDialogPvt:Activate(, , , lCentraliz, , , bBlocoIni)
    
    FWRestArea(aArea)
Return
