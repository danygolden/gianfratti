<%@ Page Language="C#" MasterPageFile="~/Template/TemplateEmpresa.master" AutoEventWireup="true" CodeFile="FormPosOperatorioPreenchido.aspx.cs" Inherits="FormPosOperatorio_FormPosOperatorioPreenchido" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		<fieldset>
		    <legend align="center">P�s Operat�rio</legend>
		    <fieldset>
        <legend>Dados Paciente</legend>
  <table class="texto" width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="30%">Nome do Paciente </td>
            <td width="25%">Registro Geral </td>
            <td width="15%">Quarto/Leito</td>
            <td width="25%">Data</td>
          </tr>
          <tr>
            <td>
                Jose da Silva Filho</td>
            <td>
                111 222</td>
            <td>
                701</td>
            <td>
                22/11/2007</td>
          </tr>
        </table>
        <table class="texto" width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="30%">N&ordm; Atendimento </td>
            <td width="25%">Cor</td>
            <td width="15%">Idade</td>
            <td width="25%">Sexo</td>
          </tr>
          <tr>
            <td>
                3452</td>
            <td>
                branca</td>
            <td>
                48</td>
            <td>
                masc</td>
          </tr>
        </table>
</fieldset>      
			<fieldset>
			<table width="100%" border="1" cellpadding="0" cellspacing="0" class="texto">
			  <tr bgcolor="#f3f7fc">
				<td width="21%"><strong>Data:</strong></td>
			    <td width="10%"><strong>&nbsp;</strong></td>
			    <td width="10%">
                    &nbsp;
                </td>
			    <td width="10%"><strong>&nbsp;</strong></td>
			    <td width="10%"><strong>23/11/2007</strong></td>
			    <td width="10%"><strong>24/11/2007</strong></td>
			    <td width="10%"><strong>25/11/2007</strong></td>
			    <td width="19%"><strong>"data atual"</strong></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Dia de P.O.:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    1�</td>
			    <td>
                    2�</td>
			    <td>
                    3�</td>
			    <td><input id="Text1" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Problemas:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    n�o</td>
			    <td>
                    sim</td>
			    <td>
                    sim</td>
			    <td><input id="Text2" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Press&atilde;o Arterial (PA):</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    180 X 110</td>
			    <td>
                    160 X 95</td>
			    <td>
                    170 X 100</td>
			    <td><input id="Text3" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Frequencia Card&iacute;aca (FC):</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    116</td>
			    <td>
                    104</td>
			    <td>
                    128</td>
			    <td><input id="Text4" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Peso:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    74,5</td>
			    <td>
                    76,8</td>
			    <td>
                    73,6</td>
			    <td><input id="Text5" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Temperatura:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    36,8</td>
			    <td>
                    37,2</td>
			    <td>
                    38,7</td>
			    <td><input id="Text6" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Diurese:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    650</td>
			    <td>
                    1260</td>
			    <td>
                    2830</td>
			    <td><input id="Text7" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Ultrasson:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    sim</td>
			    <td>
                    n�o</td>
			    <td>
                    n�o</td>
			    <td><input id="Text8" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>CSA:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    4+4</td>
			    <td>
                    4+4</td>
			    <td>
                    4+4</td>
			    <td><input id="Text9" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>PRED:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    30 mg</td>
			    <td>
                    30 mg</td>
			    <td>
                    60 mg</td>
			    <td><input id="Text10" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>AZAT:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    720/720</td>
			    <td>
                    720/720</td>
			    <td>
                    720/720</td>
			    <td><input id="Text11" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Creatina:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    5,6</td>
			    <td>
                    4,3</td>
			    <td>
                    3,8</td>
			    <td><input id="Text12" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Ur&eacute;ia:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    246</td>
			    <td>
                    186</td>
			    <td>
                    124</td>
			    <td><input id="Text13" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>N&iacute;vel Cya:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text14" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>S&oacute;dio:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    125</td>
			    <td>
                    128</td>
			    <td>
                    130</td>
			    <td><input id="Text15" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Pot&aacute;ssio:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    5,4</td>
			    <td>
                    4,9</td>
			    <td>
                    4,1</td>
			    <td><input id="Text16" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Hb:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    10,7</td>
			    <td>
                    9,2</td>
			    <td>
                    9,4</td>
			    <td><input id="Text17" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Htc:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    28</td>
			    <td>
                    26</td>
			    <td>
                    27</td>
			    <td><input id="Text18" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Gl&oacute;bulos Brancos:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    6540</td>
			    <td>
                    7620</td>
			    <td>
                    7840</td>
			    <td><input id="Text19" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
		    	<td style="width: 194px"><strong>Plaquetas:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    280000</td>
			    <td>
                    125000</td>
			    <td>
                    146000</td>
			    <td><input id="Text20" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Diferencial:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    1/90/4/3/1/1</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    1/93/2/4/0/0</td>
			    <td><input id="Text22" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Protein&uacute;ria:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    0,5</td>
			    <td>
                    0,7</td>
			    <td>
                    0,6</td>
			    <td><input id="Text21" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Leu:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text23" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Hem:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text24" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Sorolog:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text25" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
				<td style="width: 194px"><strong>Fan:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text26" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>CH50:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text27" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Glicemia:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    156</td>
			    <td>
                    173</td>
			    <td>
                    186</td>
			    <td><input id="Text28" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>TGO:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    25</td>
			    <td>
                    28</td>
			    <td>
                    48</td>
			    <td><input id="Text29" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>TGP:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    16</td>
			    <td>
                    22</td>
			    <td>
                    25</td>
			    <td><input id="Text30" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px;"><strong>Ca:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text31" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>P:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text32" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
				<td style="width: 194px"><strong>PTH-FA:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text33" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Arteriografia:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    n�o</td>
			    <td>
                    n�o</td>
			    <td>
                    sim</td>
			    <td><input id="Text34" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Tomografia:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    n�o</td>
			    <td>
                    n�o</td>
			    <td>
                    n�o</td>
			    <td><input id="Text35" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Biopsia:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    n�o</td>
			    <td>
                    n�o</td>
			    <td>
                    n�o</td>
			    <td><input id="Text36" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr>
			    <td style="width: 194px"><strong>Relat&oacute;rio de Exames:</strong></td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text37" style="width: 185px" type="text" /></td>
			  </tr>
			  <tr bgcolor="#f3f7fc">
			    <td style="width: 194px"><strong>Resumos:</strong></td>
			    <td>
                    &nbsp;
                </td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;
                </td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td>
                    &nbsp;</td>
			    <td><input id="Text38" style="width: 185px" type="text" /></td>
			  </tr>
			</table>
			</fieldset>
			<fieldset>
		   <table class="texto" width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center"><asp:Button ID="Button1" runat="server" Text="Salvar" /></td>
        </tr>
      </table>
		</fieldset>
		</fieldset>
</asp:Content>

