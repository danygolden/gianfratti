<%
'on error resume next
'#########################################################################################
'#----------------------------------------------------------------------------------------
'#########################################################################################
'#
'#  C�DIGO: VirtuaStore Vers�o OPEN - Copyright 2001-2004 VirtuaStore
'#  URL: http://comunidade.virtuastore.com.br
'#  E-MAIL: comunidade@virtuastore.com.br
'#  AUTORES: Ot�vio Dias(Desenvolvedor)
'# 
'#     Este programa � um software livre; voc� pode redistribu�-lo e/ou 
'#     modific�-lo sob os termos do GNU General Public License como 
'#     publicado pela Free Software Foundation.
'#     � importante lembrar que qualquer altera��o feita no programa 
'#     deve ser informada e enviada para os criadores, atrav�s de e-mail 
'#     ou da p�gina de onde foi baixado o c�digo.
'#
'#  //-------------------------------------------------------------------------------------
'#  // LEIA COM ATEN��O: O software VirtuaStore OPEN deve conter as frases
'#  // "Powered by VirtuaStore OPEN" ou "Software derivado de VirtuaStore 1.2" e 
'#  // o link para o site http://comunidade.virtuastore.com.br no cr�ditos da 
'#  // sua loja virtual para ser utilizado gratuitamente. Se o link e/ou uma das 
'#  // frases n�o estiver presentes ou visiveis este software deixar� de ser
'#  // considerado Open-source(gratuito) e o uso sem autoriza��o ter� 
'#  // penalidades judiciais de acordo com as leis de pirataria de software.
'#  //--------------------------------------------------------------------------------------
'#      
'#     Este programa � distribu�do com a esperan�a de que lhe seja �til,
'#     por�m SEM NENHUMA GARANTIA. Veja a GNU General Public License
'#     abaixo (GNU Licen�a P�blica Geral) para mais detalhes.
'# 
'#     Voc� deve receber a c�pia da Licen�a GNU com este programa, 
'#     caso contr�rio escreva para
'#     Free Software Foundation, Inc., 59 Temple Place, Suite 330, 
'#     Boston, MA  02111-1307  USA
'# 
'#     Para enviar suas d�vidas, sugest�es e/ou contratar a VirtuaWorks 
'#     Internet Design entre em contato atrav�s do e-mail 
'#     contato@virtuaworks.com.br ou pelo endere�o abaixo: 
'#     Rua Ven�ncio Aires, 1001 - Niter�i - Canoas - RS - Brasil. Cep 92110-000.
'#
'#     Para ajuda e suporte acesse um dos sites abaixo:
'#     http://comunidade.virtuastore.com.br
'#     http://br.groups.yahoo.com/group/virtuastore
'#
'#     BOM PROVEITO!          
'#     Equipe VirtuaStore
'#     []'s
'#
'#########################################################################################
'#----------------------------------------------------------------------------------------
'#########################################################################################

'IN�CIO DO C�DIGO

'----------------------------------------------------------------------------------------------------------------
'Este c�digo est� otimizado e roda tanto em Windows 2000/NT/XP/ME/98 quanto em servidores UNIX-LINUX com chilli!ASP
Dim varContador1x, varContador2x
varContador1x = timer
'----------------------------------------------------------------------------------------------------------------



'#########################################################################################
'### Mostra oferta criado por Antonio, sistema implantado com popup inteligente por
'### Rog�rio Silva - 09/01/2004 - WBSolutions - http://www.libihost.net/wbsolutions.
'### POPUP - OFERTA INTERVALO DE 5 EM 5 MINUTOS, CASO DESEJE ALTERE O VALOR APOS O MOD
'### NO CASO 5 - DEFAULT
'#########################################################################################

		'tempo = cInt(Minute(time))
'----------------------------------------------------------------------------------------------------------------
		'Response.Cookies("VSOferta").Expires =  DateAdd("d",1,date()) 'VENCE SEMPRE NO PROXIMO DIA
		'IF tempo MOD 5 = 0 then
		'		IF Request.Cookies("VSOferta")("Abriu")	= "Nao" THEN
		'		pop = 	"function envio()"&VBCrlf&_
		'				"{"&VBCrlf&_
		'				"generico('mostraoferta.asp','contato',290,130,20,20,'no','no');"&VBCrlf&_
		'				"}"&VBCrlf&_
		'				"envio()"&VBCrlf
		'		Response.Cookies("VSOferta")("Abriu")	= "Sim"
		'		END IF
	'	ELSE
	'	Response.Cookies("VSOferta")("Abriu")	= "Nao"
	'	END IF
'----------------------------------------------------------------------------------------------------------------%>

<!-- #include file="df.asp" -->
<!-- #include file="estats.asp"-->
<!-- #include file="banner/include/admentor2.asp"-->

<%
'INICIO DO HTML
'-----------------------------------------------------------------------------------------------------
response.Write	"<html>"&VBCRlf &_
				"<head>"&VBCRlf &_
				"<title>"&tituloloja&"</title>"&VBCRlf &_
				"<script language=""JavaScript"" src=""layer.js""></script>"&VBCRlf &_
				"<script language=""JavaScript"" src=""Browser_OS_Detection_css.js""></script>"&VBCRlf &_
				"<script language='JavaScript1.2'>"&VBCRlf &_
				"function click() {"&VBCRlf &_
				"if (event.button==2||event.button==3) {"&VBCRlf &_
				"oncontextmenu='return false';"&VBCRlf &_
				"}"&VBCRlf &_
				"}"&VBCRlf &_
				"document.onmousedown=click"&VBCRlf &_
				"document.oncontextmenu = new Function(""return false;"")"&VBCRlf &_
				pop & VBCRlf &_
  				"</script>"&VBCRlf &_
				"<style type=""text/css"">"&VBCRlf &_
				"<!--"&VBCRlf &_
				"a:link       { color: "&cor4&" }"&VBCRlf &_
				"a:visited    { color: "&cor4&" }"&VBCRlf &_
				"a:hover      { color: "&cor5&" }"&VBCRlf &_
				".menu:link { color:"&fontebranca&"; text-decoration: none;}"&VBCRlf &_
				".menu:visited { color:"&fontebranca&"; text-decoration: none;}"&VBCRlf &_
				".menu:hover { color:"&fontebranca&"; text-decoration: underline;}"&VBCRlf &_
				".baixo:link { color:"&cor4&"; text-decoration: none;}"&VBCRlf &_
				".baixo:visited { color:"&cor4&"; text-decoration: none;}"&VBCRlf &_
				".baixo:hover { color:"&cor4&"; text-decoration: underline;}"&VBCRlf &_
				"-->"&VBCRlf &_
				"</style>"&VBCRlf &_
				"</head>"&VBCRlf &_
				"<body bgcolor="&application("corfundo")&" topmargin=0 leftmargin=0 marginwidth=0 marginheight=0 text="&cor4&">"&VBCRlf

'-----------------------------------------------------------------------------------------------------
'Personaliza os links do  menu se o cliente estiver efetuando a compra
'-----------------------------------------------------------------------------------------------------
if session("usuario") = "" then
	link = "fechapedido.asp?compra=login"
else
	link = "fechapedido.asp?compra=ok"
end if
'-----------------------------------------------------------------------------------------------------
if session("ende1") = "" then
	link = link
else
	link = "formaspagamento.asp"
end if
'-----------------------------------------------------------------------------------------------------
response.Write  "<table width=778 cellpadding=""0"" cellspacing=""0"" align=""center"" >"&VBCRlf &_
				"<tr>"&VBCRlf &_
				"	<td>"&VBCRlf &_
				"<basefont face="&fonte&">"&VBCRlf &_
				"<table background= ""logo.jpg"" border=""0"" width=""778"" cellpadding=""1"" cellspacing=""1"">"&VBCRlf
response.write	"		 <tr>"&VBCRlf &_
				"			<td valign=""bottom"" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="" "&dirlingua&"/imagens/"&arquivo_logo_loja&"""  border=""0""></td>"&VBCRlf

if Banner_AdMentor="Sim" then
response.Write	"	 		 <td valign=""middle"" align=""center"" width=234 height=60>"&VBCRlf &_
								AdMentor_GetAdASP("F=0&Z=0&N=1") &VBCRlf &_
				"	 		</td>"&VBCRlf
elseif Banner_Fixo<>"" then
response.Write	"	 		 <td valign=""middle"" align=""center"" width=234 height=60><img src="" banners/"&Banner_Fixo&"""  border=""0""></td>"&VBCRlf
end if

response.Write	"	 		 <td valign=""bottom"" nowrap align=""right"">"&VBCRlf &_
				"	 			<table>"&VBCRlf &_
				"	 				<tr>"&VBCRlf &_
				"	 					<td valign=center><a href=""carrinhodecompras.asp""  style=""color:#000000;text-decoration:none;"" onMouseOut=""window.status='';return true;"" onMouseOver=""window.status='"&strLg1&"';return true;""></a></td>"&VBCRlf &_
				"						<td valign=top>"&VBCRlf 
'-----------------------------------------------------------------------------------------------------
'#### INICIO DO 1Âº IF 
'-----------------------------------------------------------------------------------------------------
'Cria o carrinho de compras no topo superior da loja
'-----------------------------------------------------------------------------------------------------
if cstr(Session("orderID")) = "" then
	'-------------------------------------------------------------------------------------------------
	'Chama o nome do cliente da tabela clientes
	'-------------------------------------------------------------------------------------------------
	Set dados = abredb.Execute("SELECT email,nome FROM clientes WHERE email='"&Cripto(session("usuario"),true)&"';")
	'-----------------------------------------------------------------------------------------------------
	'Faz aparecer somento o primeiro nome do cliente
	'-----------------------------------------------------------------------------------------------------
	if dados.eof then
		nomez = ""
	else
		nomeq = Cripto(dados("nome"),false)
		numeroz = Instr(1,nomeq," ")
		var5000 = Left(nomeq,numeroz)
	'-----------------------------------------------------------------------------------------------------
			if var5000 = "" then
				var5000 = nomeq
			else
				var5000 =  Left(nomeq,numeroz)
			end if
	'-----------------------------------------------------------------------------------------------------		
	nomez = "&nbsp;"&var5000
	end if
	'-----------------------------------------------------------------------------------------------------
	'Fecha tabela clientes
	'-----------------------------------------------------------------------------------------------------
	dados.Close
	set dados = Nothing
	'-----------------------------------------------------------------------------------------------------
	response.Write	"	  <table width=""100%"" border=""0"" onMouseOver=""window.status='"&strLg1&"';return true;"" onMouseOut=""window.status='';return true;"">"&VBCrlf &_
					" <tr><td >"&VBCrlf &_
					"		  <table>"&VBCrlf &_
					" 		   <tr><td bgcolor=#ffffff>"&VBCrlf
						    %>
				<!-- ////  Quadro Superior  de  Carrinho de Compras -->
				<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:36px;
	top:328px;
	width:27px;
	height:25px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:27px;
	top:528px;
	width:36px;
	height:18px;
	z-index:2;
}
body {
	background-image: url();
}
.style3 {color: #FF0000}
.style12 {	font-size: 9px;
	color: #666666;
}
.style13 {	font-size: 11px;
	color: #333333;
}
.style14 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
                </style>
				
                 
				   <!-- ////  Fim do Quadro Superior  de  Carrinho de Compras -->
<%
				response.Write " </td></tr></table>"
'-----------------------------------------------------------------------------------------------------
else
'-----------------------------------------------------------------------------------------------------
	intOrderID = cstr(Session("orderID"))
	'-----------------------------------------------------------------------------------------------------
	'Chama o nome do cliente da tabela clientes
	'-----------------------------------------------------------------------------------------------------
	Set dados = abredb.Execute("SELECT email, nome FROM clientes WHERE email='"&Cripto(session("usuario"),true)&"';")
	'-----------------------------------------------------------------------------------------------------
	'Faz aparecer somento o primeiro nome do cliente
	'-----------------------------------------------------------------------------------------------------
	if dados.EOF then
		nomez = ""
	else
		nomeq = Cripto(dados("nome"),true)
		numeroz = Instr(1,nomeq," ")
		var5000 = Left(nomeq,numeroz)
		if var5000 = "" then
			var5000 = nomeq
		else
			var5000 =  Left(nomeq,numeroz)
		end if
	nomez = "&nbsp;"&var5000
	end if
'-----------------------------------------------------------------------------------------------------
'Fecha tabela clientes
'-----------------------------------------------------------------------------------------------------
dados.Close
set dados = Nothing
'-----------------------------------------------------------------------------------------------------
'Chama os dados dos produtos comprados e monta o carrinho
'-----------------------------------------------------------------------------------------------------
	set pedidos = abredb.Execute("SELECT idprod, quantidade FROM pedidos WHERE idcompra='"&intOrderID&"';")
	while not pedidos.EOF
		idprod = pedidos("idprod")
		quantidade = pedidos("quantidade")
		set produtos = abredb.Execute("SELECT preco, nome FROM produtos WHERE idprod="&idprod&";")
		preco = produtos("preco")
		nome = produtos("nome")
	'--------------------------------------------------------------------------------------------------
	'Calcula os dados
	'--------------------------------------------------------------------------------------------------
		intProdID = idprod
		strProdName = nome
		intProdPrice = preco
		intQuant = cint(quantidade)
		intQuantx = cint(intQuantx) + cint(intQuant)	
		intTotal = intTotal + (intQuant * intProdPrice)
		inTotal = cint(inTotal)
		pedidos.MoveNext
	wend
'-----------------------------------------------------------------------------------------------------
'Fecha os dados dos produtos comprados
'-----------------------------------------------------------------------------------------------------
pedidos.Close
set pedidos = Nothing
'-----------------------------------------------------------------------------------------------------
'Valor do pre�o total
'-----------------------------------------------------------------------------------------------------
precito1 = formatNumber(intTotal,2)

Response.Write	" <table onMouseOut=""window.status='';return true;"" onMouseOver=""window.status='"&strLg1&"';return true;"">"&VBCrlf &_
				"<tr>"&VBCrlf &_
				"<td >"&VBCrlf &_
		   		"<table width=""100%"">"&VBCrlf &_
				"	   <tr>"&VBCrlf &_
				"<td bgcolor=#ffffff>"&VBCrlf
						    %>
				<!-- ////  Quadro Superior  de  Carrinho de Compras -->
				<!-- ////  Fim do Quadro Superior  de  Carrinho de Compras -->
<%
				response.Write " </td></tr></table>"&VBCrlf &_
				"</td>"&VBCrlf &_
				"</tr>"&VBCrlf &_
				"</table>"&VBCrlf 
end if
'-----------------------------------------------------------------------------------------------------
'#### TÉRMINO DO 1º IF 
'-----------------------------------------------------------------------------------------------------
Response.Write	"</td>"&VBCrlf &_
				"</tr>"&VBCrlf &_
				"</table>"&VBCrlf &_
				"</td>"&VBCrlf &_
				"</tr>"&VBCrlf &_
				"</table>"&VBCrlf
'-----------------------------------------------------------------------------------------------------
set rs = abredb.execute("SELECT nome FROM clientes where email='" & Cripto(Session("usuario"),true) & "'")
'-----------------------------------------------------------------------------------------------------
if rs.eof then
	strNome = strLg264
else
	nomeq = Cripto(rs("nome"),false)
	numeroz = Instr(1,nomeq," ")
	var5000 = Left(nomeq,numeroz)
'-----------------------------------------------------------------------------------------------------
		if var5000 = "" then
			var5000 = nomeq
		else
			var5000 =  Left(nomeq,numeroz)
		end if
'-----------------------------------------------------------------------------------------------------
strNome = Trim(var5000)
strNome2 = Trim(Cripto(rs("nome"),false))
end if
'-----------------------------------------------------------------------------------------------------
rs.close
set rs = nothing

'-----------------------------------------------------------------------------------------------------
'Personaliza o menu se o cliente estiver logado
'-----------------------------------------------------------------------------------------------------
%>


<!-- ////   Sombra da Barra de Botoes -->


<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#808080><IMG height=1 
      src="<%= dirlingua %>/imagens/spacer.gif" width=1></TD></TR></TBODY></TABLE>

<!-- ////   Fim da Sombra da Barra de Botoes -->



<!-- ////    Barra de Botoes -->


<TABLE width="100%" border=0 align="center" cellPadding=0 cellSpacing=0 bgColor=#f0f0f0>
  <TBODY>
  <TR>
    <TD width="1%"><IMG height=32 src="<%= dirlingua %>/imagens/spacer.gif" width=5></TD>
    <TD align=left width="44%"><table cellspacing="0" cellpadding="0" width="300" border="0" style="BACKGROUND: #f0f0f0">
      <tr>
        <td width="125" align="left" nowrap="nowrap" ><font color="#000000"><%= strLg2 %> </font></td>
        <td width="48" align="left" nowrap="nowrap"><div align="center"><span class="style3"><%= intQuantx %></span></div></td>
        <td width="127" rowspan="2" align="left" nowrap="nowrap"><a href="carrinhodecompras.asp"><img src="topo_bot_carrinho.gif" width="82" height="36" border="0" /></a></td>
      </tr>
      <tr>
        <td align="left" nowrap="nowrap"><font color="#000000"><%= strLg3 %> </font></td>
        <td align="left" nowrap="nowrap"><div align="center"><font color="#0000ff"><%= strLgMoeda %><%= precito1 %></font></div></td>
      </tr>
      <tr>
        <td></TBODY></td>
      </tr>
    </table>
      <!-- <IMG height=35 
      src="<%= dirlingua %>/imagens/telephone_151x35.gif" width=151 border=0> --></TD>
    <TD width="5%"><IMG height=40 src="<%= dirlingua %>/imagens/spacer.gif" width=5></TD>
    <TD width="5%" align=middle vAlign=center noWrap><!--- start SEARCH ---><!--- end SEARCH ---></TD>
    <TD width="40%" align=right noWrap>
	
<% 
if session("usuario") = "" or InStr(Request.ServerVariables("SCRIPT_NAME"),"/pagamento.asp") > 0 then
'*** Se for a tela final de compra (pagamento.asp) tb, pois aparecia o menu errado (pois era encerrado a 'sessao' na tela final de compra apos jÃƒÂ¡ ter aparecido o menu de 'logado') 
%>	
      <TABLE cellSpacing=0 cellPadding=0 width=240 border=0>
        <TBODY>
        <TR>
          <TD><A href="default.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_home.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="carrinhodecompras.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_finalizar_compras.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="registro.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_registro_clientes.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="fechapedido.asp?compra=login&menu=sim"><IMG src="<%= dirlingua %>/imagens/botao_superior_login.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="como.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_como_comprar.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD></TR></TBODY></TABLE>
<% Else  %>
      <TABLE cellSpacing=0 cellPadding=0 width=240 border=0>
        <TBODY>
        <TR>
          <TD><A href="default.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_home.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="carrinhodecompras.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_finalizar_compras.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="dados.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_meus_dados.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="minhascompras.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_historico_compras.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
		  <TD><A href="conf_pagamento.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_pagamento.gif" border=0 target="home"></A></TD>
          <TD><IMG height=1 src="<%= dirlingua %>/imagens/spacer_1x1.gif" 
            width=3 border=0></TD>
          <TD><A href="logout.asp"><IMG src="<%= dirlingua %>/imagens/botao_superior_logout.gif" border=0 target="home"></A></TD></TR></TBODY></TABLE>
<% End If %>
</TD>
    <TD width="5%"><IMG height=32 src="<%= dirlingua %>/imagens/spacer.gif" 
  width=5></TD>
  </TR></TBODY></TABLE>
  
  
<!-- ////   Fim da  Barra de Botoes -->



<!-- ////   Sombra da Barra de Botoes  -->


<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#808080><IMG height=1 
      src="<%= dirlingua %>/imagens/spacer.gif" width=1></TD></TR></TBODY></TABLE>

<!-- ////   Fim da Sombra da Barra de Botoes   -->




	  
<!-- //////   Inicio do Azulao (Barra de cor) -->


<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD><img src="fundo.jpg" width="778" height="27" /></TD>
    </TR>
  
  <TR>
    <TD><IMG height=3 src="<%= dirlingua %>/imagens/spacer.gif" 
      width=1></TD></TR></TBODY></TABLE>
	  
	  
	  
<!-- //////   Fim do Azulao (Barra de cor) -->



<!--   //////    Sombra do Azulao  - shadow -->


<!--   //////  Fim da Sombra do Azulao  - shadow -->



<!-- ////    Barra de Procura   -->


<TABLE width="100%" height="54" border=0 cellPadding=0 cellSpacing=0 bgColor=#f0f0f0>
  <TBODY>
  <TR>
    <TD><IMG height=32 src="<%= dirlingua %>/imagens/spacer.gif" width=5></TD>
    <TD align=left width="40%"><IMG height=54 
      src="linguagens/portuguesbr/imagens/disque_loja.gif" width=160 border=0></TD>
    <TD><IMG height=32 src="<%= dirlingua %>/imagens/spacer.gif" width=5></TD>
    <td align="center" valign="middle"><TD vAlign=center noWrap align=middle>
      <div align="center"></div>
    <!--- start SEARCH --->

      <FORM style="DISPLAY: inline" name=newsearch action=pesquisa.asp method=get>
      <TABLE cellSpacing=0 cellPadding=1 border=0>
        <TBODY>
        <TR>
          <TD nowrap>
							 		 <input type=text name=pesq value="<%= request.querystring("pesq") %>" size=25 style=font-size:11px;font-family:<%=fonte%>;><br>
									 <select name=cat style=font-size:11px;font-family:<%=fonte%>>
									 <option value=todos><%=strLg15%> </option>
									 <option value=xxx>------------------------------</option>
									 
<%Dim scat
'--------------------------------------------------------------------------------------------------
'Monta a select de pesquisa
'--------------------------------------------------------------------------------------------------
Set cat = abredb.Execute("SELECT * FROM sessoes WHERE ver = 's' ORDER by nome;")
While Not cat.EOF 
'Response.Write "<option value="& cat("id") &" style=color:#808080;>"&CHR(187)&"&nbsp;"&cat("nome") &"</option>"&VBCRlf 
Response.Write "<option value="""" style=color:#808080;>"&CHR(187)&"&nbsp;"&cat("nome") &"</option>"&VBCRlf 
	'#########################################################################################
	'#----------------------------------------------------------------------------------------
	'#########################################################################################
	'### Mostra categorias e sub-categorias
	'### Rog�rio Silva - WBSolutions - http://www.libihost.net/wbsolutions.
	'###    SUB MENU / CATEGORIA
	'#########################################################################################
		SQL = "SELECT C.idcategoria, C.nome FROM categoria as c ,sessoes as s  WHERE s.id = c.idsessao and c.idsessao = "&cat("id")&" AND C.ver = 's' ORDER by c.nome"
		Set scat = abredb.Execute(SQL)
			While Not scat.EOF
				Response.Write "<option value="&scat("idcategoria")&">&nbsp;&nbsp; " &CHR(149)&"&nbsp;" & scat("nome")&"</option>"&VBCRlf 
				scat.MoveNext
			Wend
cat.MoveNext
Wend
Response.Write "</select></font>"&VBCRlf %>
									 
		 </TD>
          <TD>
	  
		  <INPUT class=searchforms type=image alt="Pesquisar" src="<%= dirlingua %>/imagens/botao_pesquisar.gif" onMouseOut="window.status='';return true;" onMouseOver="window.status='<%=strLg21%>';return true;" align="absmiddle"> </TD></TR></TBODY></TABLE></FORM><!--- end SEARCH ---><td align="center" valign="middle"></TD>
		    <div align="center"></div>
    <TD noWrap align=right width="40%" valign="middle"><p><%= strLg265 %> <b><%=strNome%></b>!&nbsp;&nbsp;&nbsp;&nbsp; </p>      </TD>
  </TR>
  </TBODY></TABLE>
  
  
<!-- ////   Fim da  Barra de Procura  -->



<!-- ////   Sombra da Barra de Procura   -->


<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#808080><IMG height=1 
      src="<%= dirlingua %>/imagens/spacer.gif" width=1></TD></TR></TBODY></TABLE>

<!-- ////   Fim da Sombra da Barra de Procura   -->


<!-- ////   Area Branca Divisor   -->


<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height="32" bgColor=#ffffff><IMG height=25 
      src="<%= dirlingua %>/imagens/spacer.gif" width=1></TD>
  </TR></TBODY></TABLE>

<!-- ////   Fim Area Branca Divisor   -->



<%
'-----------------------------------------------------------------------------------------------------
%>



		<!-- LAYER PRINCIPAL -->
		
		
		<br />
		<div id="layer1" style="position:absolute; top:200px; z-index:1">
		
			 <table border="0" bgcolor="#FFFFFF" cellpadding="0" cellspacing="0" width="750">
			 <tr>
			 <td width="161" valign="top" align="center">
			 		<table border="0" cellspacing="4" cellpadding="4" width="177">
 <tr>
   <td> 
 <tr>
   <td> 
 <tr>
 <td width="185">
  
<!--  ///  Inicio do Menu Departamentos -->
<table cellspacing="0" cellpadding="0" width="161" border="0">
  <tbody>
    <tr>
      <td colspan="3" valign="top"><img src="linguagens/portuguesbr/imagens/menudep.jpg" width="159" height="42" /></td>
    </tr>
    <tr>
      <td bgcolor="#cccccc"><img height="1" 
            src="<%= dirlingua %>/imagens/spacer.gif" width="1" /></td>
      <td align="middle"><div id="masterdiv">
          <table cellspacing="0" cellpadding="2" width="159" bgcolor="#ffffff" 
            border="0">
            <tbody>
              <!--      <TR>
                <TD><FONT face="verdana, arial, helvetica" color=#000000 
                  size=2><B>Hardware</B></FONT> </TD></TR> -->

              <%
Mostrar = Request.QueryString("item")
Dim Smenu

'-----------------------------------------------------------------------------------------------------
'Monta o menu de departamentos (Sessoes e Categorias)
'-----------------------------------------------------------------------------------------------------

		'#########################################################################################
		'### Mostra as Sessoes da Loja
		'### Rog&eacute;rio Silva - WBSolutions - http://www.libihost.net/wbsolutions.
		'###    MENU PRINCIPAL (Tabela Sessoes)
		'#########################################################################################

Set menu = abredb.Execute("SELECT * FROM sessoes WHERE ver = 's' ORDER by nome;")
DO While Not menu.EOF

'Verifica se existe alguma categoria sem sub-categoria, ou seja, se o produto estiver cadastrado em uma SubCategoria chamado 'Todos' , a Categoria ser&aacute; 'linkado' diretamente para os seus produtos

	SQL = "SELECT nome FROM categoria WHERE nome = 'Todos' AND idsessao = "&menu("id")&""
	Set sem_categ = abredb.Execute(SQL)
	if not sem_categ.EOF then %>
              <tr>
                <td onmouseout="window.status='';return true;" onmouseover="window.status='<%=menu("nome")%>';return true;"><a href="sessoes.asp?item=<%=menu("id")%>&amp;Categoria=" style="text-decoration:none;" onmouseout="window.status='';return true;" onmouseover="window.status='<%=menu("nome")%>';return true;"> &nbsp; <%=menu("nome")%></a><br />                </td>
              </tr>
              <%	 else %>
              <tr>
                <td onmouseout="window.status='';return true;" onmouseover="window.status='<%= menu("nome") %>';return true;"><div class="menutitle" onclick="SwitchMenu('<%=menu("nome")%>')" style="cursor:hand"> &nbsp; <%=menu("nome")%> </div>
                    <%IF cInt(Mostrar) = menu("id") then
				Response.Write "<span class=""submenu"" id="""&menu("nome")&""" style=""display:block"">"
				ELSE
				Response.Write "<span class=""submenu"" id="""&menu("nome")&""" style=""display:none"">"
				END IF

		'#########################################################################################
		'### Mostra as Categorias das Sessoes da Loja
		'### Rog&eacute;rio Silva - WBSolutions - http://www.libihost.net/wbsolutions.
		'###    SUB MENU (Tabela Categoria)
		'#########################################################################################
		 SQL = "SELECT C.idcategoria, C.nome FROM categoria as c ,sessoes as s  WHERE s.id = c.idsessao and c.idsessao = "&menu("id")&" AND C.ver = 's' AND C.nome <> 'Todos' ORDER by c.nome"
		 Set Smenu = abredb.Execute(SQL)
		 While Not Smenu.EOF%>
                    <a href="sessoes.asp?item=<%=menu("id")%>&amp;Categoria=<%=Smenu("idcategoria")%>" style="text-decoration:none;" onmouseout="window.status='';return true;" onmouseover="window.status='<%= menu("nome")&" > "&Smenu("nome") %>';return true;"> <b>&nbsp;&nbsp;&nbsp;<img src='<%=dirlingua%>/imagens/flechav.gif' border="0" />&nbsp;&nbsp;<%=Smenu("nome")%></b></a><br />
                    <%Smenu.MoveNext
		  Wend %>
                  </span> </td>
              </tr>
              <%	end if	
	sem_categ.close
	set sem_categ=Nothing%>
              <%
menu.MoveNext
Loop
'-----------------------------------------------------------------------------------------------------
'Fecha o menu
'-----------------------------------------------------------------------------------------------------
menu.Close
Set menu = Nothing


'-----------------------------------------------------------------------------------------------------
'Response.Write "</table>"			%>
            </tbody>
          </table>
        <br /></td>
      <td bgcolor="#cccccc"><img height="1" 
            src="<%= dirlingua %>/imagens/spacer.gif" width="1" /></td>
    </tr>
    <tr>
      <td bgcolor="#cccccc" colspan="3"><img height="1" 
            src="<%= dirlingua %>/imagens/spacer.gif" 
      width="1" /></td>
    </tr>
  </tbody>
</table>
<!-- ////    Fim do Menu Departamentos  -->
<img height="10" 
            src="<%= dirlingua %>/imagens/spacer.gif" width="1" /><br />
<!-- /////     Quadro Atendimento - Lateral Esquerdo  -->
<table cellspacing="0" cellpadding="0" width="160" border="0" >
  <tr>
    <td style="BACKGROUND: <%= Cor_principal %>; HEIGHT: 22px" colspan="3"><img src="linguagens/portuguesbr/imagens/menuorca.gif" width="159" height="42" /></td>
  </tr>
  <tr>
    <td></TBODY></td>
  </tr>
</table>
<table cellspacing="0" cellpadding="2" width="160" border="0" bgcolor="#ffffff" style="BACKGROUND: #ffffff; BORDER-LEFT: #bbbaba 1px solid; BORDER-RIGHT: #bbbaba 1px solid; BORDER-BOTTOM: #bbbaba 1px solid">
  <tr>
    <td class="ti"><img alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border="0" />&nbsp;<a class="bbh" 
                        href="montacesta.asp"><%=strLg325%></a></td>
  </tr>
  <% If mostrar_politica_de_trocas="Sim" then%>
  <% End If %>
  <tr>
    <td></TBODY></td>
  </tr>
</table>
<BR>
 <IMG height=10 
            src="<%= dirlingua %>/imagens/spacer.gif" width=1><BR>


<!-- /////     Quadro Atendimento - Lateral Esquerdo  -->

			
            <TABLE cellSpacing=0 cellPadding=0 width=160 border=0 >
                   <TR><TD style="BACKGROUND: <%= Cor_principal %>; HEIGHT: 22px" colSpan=3><img src="linguagens/portuguesbr/imagens/menudep1.jpg" width="159" height="42" /></TD>
                   </TR>
                   </TBODY></TABLE>
				   
					<TABLE cellSpacing=0 cellPadding=2 width=160 border=0 bgcolor="#ffffff" style="BACKGROUND: #ffffff; BORDER-LEFT: #bbbaba 1px solid; BORDER-RIGHT: #bbbaba 1px solid; BORDER-BOTTOM: #bbbaba 1px solid">

                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="como.asp"><%=strLg16%></A></TD></TR>

                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="comopagar.asp"><%=strLg287%></A></TD></TR>
                    <TR>
                      <TD class=ti><img alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border="0" />&nbsp;<a class="bbh" 
                        href="regiao.asp"><%=strLg319%></a></TD>
                    </TR>
                    <TR>
                      <TD class=ti><img alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border="0" />&nbsp;<a class="bbh" 
                        href="condicao.asp"><%=strLg320%></a></TD>
                    </TR>
                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="como_reimprimir_boleto.asp"><%=strLg288%></A></TD></TR>						
                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="como_conf_pagamento.asp"><%=strLg313%></A></TD></TR>						
                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="ajuda_email.asp"><%=strLg17%></A></TD></TR>
                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="quemsomos.asp"><%=strLg20%></A></TD></TR>
                    <TR>
                      <TD class=ti><IMG alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border=0>&nbsp;<A class=bbh 
                        href="seguranca.asp"><%=strLg22%></A></TD></TR>
						<% If mostrar_politica_de_trocas="Sim" then%>
                        <TR>
                          <TD class=ti><img alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border="0" />&nbsp;<a class="bbh" 
                        href="politica_de_trocas.asp"><%=strLg296%></a></TD>
                        </TR>
                      <TR>
                      <TD class=ti><img alt="Blue Arrow" 
                        src="<%= dirlingua %>/imagens/arrow_blue.gif" 
                        border="0" />&nbsp;<a class="bbh" 
                        href="rastreamento.asp"><%=strLg322%></a></TD>
                      </TR>
						<% End If %>

</TBODY></TABLE>
			  
			  
			  <BR><IMG height=10 src="<%= dirlingua %>/imagens/spacer.gif" width=1><BR>
			

			  
<!-- /////    Fim do Quadro Atendimento - Lateral Esquerdo  -->





<!-- /////     Quadro Linguagens - Lateral Esquerdo  -->
<%
If mostrar_quadro_linguagens="Sim" then 

	'*** Colcoado este filtro, pois se for usado a traducao nesta pagina, ocorrer� um erro, pois � ENCERRADO a sess�o no pagamento.asp
	 If InStr(Request.ServerVariables("SCRIPT_NAME"),"pagamento.asp") = 0 then %>
			
            <TABLE cellSpacing=0 cellPadding=0 width=160 border=0 >
                   <TR><TD style="BACKGROUND: <%= Cor_principal %>; HEIGHT: 22px" colSpan=3> &nbsp;&nbsp;<B><font color="#FFFFFF"><%=strLg260%></font></B></TD></TR>
                   </TBODY></TABLE>
				   
					<TABLE cellSpacing=0 cellPadding=2 width=160 border=0 bgcolor="#ffffff" style="BACKGROUND: #ffffff; BORDER-LEFT: #bbbaba 1px solid; BORDER-RIGHT: #bbbaba 1px solid; BORDER-BOTTOM: #bbbaba 1px solid">

                    <TR>
                      <TD class=ti align="center"><%= OpcaoLingua %></TD></TR>

</TBODY></TABLE>
			  
			  
      <p><IMG height=10 src="<%= dirlingua %>/imagens/spacer.gif" width=1>
               <%
	end If
end if %>			  
               <!-- /////    Fim do Quadro Linguagens - Lateral Esquerdo  -->


               <!-- /////    Quadro Atendimento Online - Lateral Esquerdo  -->
                    
					 <iframe name="SOS_status" src="http://www.megametropole.com.br/varejo/loja/chat/status.asp" style="width:165;height:90" scrolling="no" frameborder="0"></iframe>
                      <br />
					  
        <!-- /////    Fim do Quadro Atendimento Online - Lateral Esquerdo  --><img src="linguagens/portuguesbr/imagens/skype.jpg" width="160" height="68" /><br>			
      </p>
             <p><a href="seguranca.asp"><IMG src="<%= dirlingua %>/imagens/site_seguro2.gif" border=0 ></a>
               <br>
               <br>
               <br>
               <% If entrega_sedex="Sim" then %>
               <IMG src="<%= dirlingua %>/imagens/sedex.gif" border=0 >
               <br>
               <br>
               <% End If %>

               <% If entrega_motoboy="Sim" then %>
&nbsp;&nbsp;&nbsp;&nbsp;<IMG align="absmiddle" src="<%= dirlingua %>/imagens/motoboy.gif"  border=0 ></p>
             <p align="left"><img src="linguagens/portuguesbr/imagens/selo_seguro.gif" width="112" height="68" /></p>
             <p align="left"><img src="linguagens/portuguesbr/imagens/logo_internetsegura.gif" width="76" height="31" /> <img src="linguagens/portuguesbr/imagens/detalhe_produto_compra_segura.gif" width="56" height="22" /><br>
               <br />
               <span class="style12"><span class="style13"><span class="style14">Visitantes Online:</span>
               <span class="style13">
               <!--#include file="incvisitors.asp"-->
               </span><br />
               </span></span><br />
               <% End If %>
               
               <!-- /////    Inicio do Quadro Contador - Lateral Esquerdo  -->		
               
               <!--#include file="contador.asp"-->
               
               <% If mostrar_contador="Sim" then %>
             </p>
             <TABLE cellSpacing=0 cellPadding=0 width=160 border=0 >
                   <TR><TD style="BACKGROUND: <%= Cor_principal %>; HEIGHT: 22px" colSpan=3> &nbsp;&nbsp;<font color="#FFFFFF" size="1"><%=strLg263&date%></font></TD></TR>
                   </TBODY></TABLE>
				   
					<TABLE cellSpacing=0 cellPadding=2 width=160 border=0 bgcolor="#ffffff" style="BACKGROUND: #ffffff; BORDER-LEFT: #bbbaba 1px solid; BORDER-RIGHT: #bbbaba 1px solid; BORDER-BOTTOM: #bbbaba 1px solid">

                    <TR>
                      <TD class=ti align="center"><strong><font face="Tahoma" color="#555555" style=font-size:12px><%=formatazeros(UltimoNumero, 6)%></strong></TD></TR>

</TBODY></TABLE>
<% End If %>

<br><br><br>
<!-- /////    Fim do Quadro Contador - Lateral Esquerdo  -->
</div>						

</td>
</tr>
			    </table>
		</td><td width="1" height=500 ><img src="<%=dirlingua%>/imagens/spacer.gif" width="1" height="10" border="0"><!-- <img src="<%=dirlingua%>/imagens/dot_gray_1x1.gif" width="1" height="100%" border="0"> --></td>
		<td align="left" valign="top">
		<!-- TABELA PRINCIPAL -->
		<table border="0" cellspacing="0" cellpadding="2" valign=top>
		<tr>
		<td valign=top>	
		
<%
'-----------------------------------------------------------------------------------------------------
Sub BaixoC()
response.write "<a class=menu  href=""http://www.webonenet.com.br"" target=_new>Powered by VirtuaStore OPEN</a>"
End Sub

Sub BaixoComunidade()
response.write application("link_comunidade") 
End Sub
'-----------------------------------------------------------------------------------------------------

'-----------------------------------------------------------------------------------------------------
Function formatazeros(dado, numero)
	if len(dado) > numero then
	dado = right(dado, numero)
	end if
	'--------------------------------------------------------------------------------------------------
	for i = 1 to len(dado)
		varn = (numero - 1) - i
		numezero = "0"
			if varn <> 0 then
				for i2 = 1 to varn
					numezero = numezero & "0"
				next
			end if
	next
formatazeros = right(numezero & dado, numero)
End Function
'-----------------------------------------------------------------------------------------------------
%> 