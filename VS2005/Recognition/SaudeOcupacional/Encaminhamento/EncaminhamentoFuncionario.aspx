<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EncaminhamentoFuncionario.aspx.cs" Inherits="Encaminhamento_EncaminhamentoFuncionario" Title="Untitled Page" %>

<%@ Register Src="../UserControls/DropDownList/Profissional.ascx" TagName="Profissional"
    TagPrefix="uc3" %>

<%@ Register Src="../UserControls/DropDownList/Cliente.ascx" TagName="Cliente" TagPrefix="uc2" %>

<%@ Register Src="../UserControls/ClienteFuncionario/FuncionarioDadosBasicos.ascx"
    TagName="FuncionarioDadosBasicos" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
        <link href="../Template/Css/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="../JS/Funcoes.js"></script>
</head>
<body>

<form id="form1" runat="server">

    <fieldset id="BuscaFuncEfetivo" runat="server">
    <legend>Funcion�rio Efetivo</legend>
    <table class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td>Digite o n�mero do CPF do funcion�rio:</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtBuscar" MaxLength="14" onkeypress="return MascaraCampo(this.form.name, this, '999.999.999-99', event);" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscaDadosFuncionario" runat="server" Text="Buscar Funcion�rio" OnClick="btnBuscaDadosFuncionario_Click" CausesValidation="False" />
                <asp:HiddenField ID="hddidCliente" runat="server" />
                <asp:HiddenField ID="hddidFuncionario" runat="server" />
            </td>
        </tr>
    </table>
    </fieldset>
    
    <table runat="server" id="MostraTabDadosFunc" class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td>
                <uc1:FuncionarioDadosBasicos ID="FuncionarioDadosBasicos1" runat="server" />
            </td>
        </tr>
    </table>
        
    <fieldset>
    <legend>Tipo de Atestado Clinico</legend>
    <table class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td>
                <asp:RadioButtonList ID="rdoTipoAtestado" runat="server" class="texto" RepeatDirection="Horizontal">
                </asp:RadioButtonList></td>
        </tr>
    </table>
    </fieldset>
    
    <fieldset>
    <legend>Exames Complementares</legend>
    <table class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td style="height: 39px">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="texto" RepeatColumns="6"
                    RepeatDirection="Horizontal">
                </asp:CheckBoxList></td>
        </tr>
    </table>
    </fieldset>
 
     <fieldset>
    <legend>M�dico Examinador</legend>
    <table class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td>
                <uc3:Profissional ID="ddlProfissional" runat="server" />
            </td>
        </tr>
    </table>
    </fieldset>
       
    <fieldset>
    <legend>Data de Realiza��o</legend>
    <table class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td>
                <asp:TextBox ID="txtDtRealizacao" onblur="javascript:valida_data(this);" onKeyPress="return MascaraCampo(this.form.name, this, '99/99/9999', event);" MaxLength="10" Width="79px" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    </fieldset>
    
    <br />
    <fieldset>
    <table class="texto" border="0" cellpadding=0 cellspacing=0 style="width:100%">
        <tr>
            <td style="height: 24px" align="center">
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" /></td>
        </tr>
    </table>
    </fieldset>

</form>

</body>
</html>