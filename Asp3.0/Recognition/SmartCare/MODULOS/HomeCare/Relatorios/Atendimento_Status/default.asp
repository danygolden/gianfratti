<link rel="stylesheet" type="text/css" href="/SmartCare/bibliotecas/css/default.css">
<!-- #include virtual="/SmartCare/Bibliotecas/Funcoes/Funcoes.asp" -->
<%
' Autor: Fabrizio Gianfratti Manes
' Data: 12/01/2006
' Descri��o: Pagina de relatorio de status de atendimento
' Atualizado por: -
' Data: -
' Atualiza��o: -
%>
<%
'[DELCARA��O DAS VARIAVEIS GLOBAIS]

'[CONEX�O COM O BANCO DE DADOS]
set conn=server.createobject("adodb.connection")
conn.open application("connstring")

Function Visualizar

	SQL	=	"SELECT id, Descricao, "&_ 
				"(SELECT COUNT(id_Atendimento_Status_Condicoes_Alta) " &_ 
				"FROM dbo.HomeCare_Atendimento INNER JOIN dbo.HomeCare_Solicitacao_Atendimento ON dbo.HomeCare_Atendimento.id_Solicitacao_Atendimento = dbo.HomeCare_Solicitacao_Atendimento.id "&_ 
				"WHERE (id_Atendimento_Status_Condicoes_Alta = dbo.HomeCare_Atendimento_Status_Condicoes_Alta.id) AND (dbo.HomeCare_Solicitacao_Atendimento.id_Convenio = '"&Session("id_Convenio")&"')) AS Total " &_ 
			"FROM  dbo.HomeCare_Atendimento_Status_Condicoes_Alta" 
			Set rs = server.createobject("adodb.recordset")
			Rs.open SQL, CONN, 3
				If Not Rs.Eof Then
					Response.Write "<table width='100%' border='0' cellspacing='0' cellpadding='0' class='borda' >" & Chr(10)
						Response.Write "<Tr class='Titulo_Tabela'>" & Chr(10)
							Response.Write "<Td>Status</Td>" & Chr(10)
							Response.Write "<Td align='center'>Total:</Td>" & Chr(10)
						Response.Write"</Tr>"
					For x = 1 To Rs.RecordCount
						If Rs.Eof Then Exit For 'Quando chegar no fim entao exit
						If zebrado = "zebra1" Then zebrado = "zebra2" Else zebrado = "zebra1" End If
						Response.Write "<Tr>" & Chr(10)
							Response.Write "<Td class='"&zebrado&"' >"&Rs("Descricao")&"</Td>" & Chr(10)
							Response.Write "<Td class='"&zebrado&"' align='center' >"&Rs("Total")&"</Td>" & Chr(10)
						Response.Write "</Tr>" 
					Rs.MoveNext
					Next
					Response.Write "</Table>"

				End if
			Rs.Close
			Set Rs = Nothing

End Function

'USAMOS CASES PARA MANUPULARAS CHAMADAS DAS FUN��ES
useraction=request("action")
select case useraction

	Case Else
%>
	<!-- #include virtual="/SmartCare/Modulos/HomeCare/Relatorios/Atendimento_Status/modelos/Form_Visualizar.htm" -->
<%
End Select

'Fecha Conex�o Com Banco De Dados
Conn.Close
Set Conn = Nothing
%>

