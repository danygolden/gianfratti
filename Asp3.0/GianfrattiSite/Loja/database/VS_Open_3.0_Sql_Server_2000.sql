/**********************************************************************************************************
*** Cria banco de dados da loja VS Open 3.0 para SQL 2000 Server
*** Criado: 02/03/2004 - 16:10
*** Atualizado: 02/03/2004 - 16:10
*** Fábio Vicente Coelho - Mid West Distr.
***********************************************************************************************************/

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[acesso]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[acesso]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[admin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[admin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[boleto]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[boleto]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[browsers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[browsers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[categoria]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[categoria]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[clientes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[clientes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[compras]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[compras]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[email]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[email]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[estoque]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[estoque]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[horas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[horas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[hosts]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[hosts]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[meses]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[meses]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[newsletter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[newsletter]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pedidos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pedidos]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[produtos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[produtos]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[referencias]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[referencias]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[semana]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[semana]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sessoes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[sessoes]
GO

CREATE TABLE [dbo].[acesso] (
	[IDACESSO] [int] NOT NULL ,
	[LOGIN] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SENHA] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QTDACESSO] [int] NULL ,
	[ULTACESSO] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EMAIL] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[admin] (
	[host] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ip] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[data] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[hora] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[boleto] (
	[nosso] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[browsers] (
	[id] [int] NOT NULL ,
	[browser] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acessos] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[categoria] (
	[idcategoria] [int] NOT NULL ,
	[idsessao] [int] NULL ,
	[data] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nome] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[descr] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ver] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[clientes] (
	[clienteid] [int] NOT NULL ,
	[datacad] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nome] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[senha] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cpf] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rg] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nascimento] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[endereco] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bairro] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cidade] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cep] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pais] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tel] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[estado] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[contato] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL  
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[compras] (
	[pedido] [int] NOT NULL ,
	[idcompra] [int] NULL ,
	[datacompra] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[clienteid] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[frete] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[totalcompra] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dataentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[endentrega] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bairroentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cidadeentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[estadoentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cepentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[paisentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[telentrega] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pagamentovia] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[presente] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[msgpresente] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[numero] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[codigo_seguranca] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vencimento] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[titular] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[email] (
	[email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[estoque] (
	[IDESTOQUE] [int] NOT NULL ,
	[IDPRODUTO] [int] NULL ,
	[QTDMAXIMA] [int] NULL ,
	[ESTOQUE] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[horas] (
	[id] [int] NOT NULL ,
	[hora] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acessos] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[hosts] (
	[id] [int] NOT NULL ,
	[host] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[meses] (
	[id] [int] NOT NULL ,
	[mes] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acessos] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[newsletter] (
	[datacad] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[pedidos] (
	[idcompra] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[idprod] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantidade] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[produtos] (
	[idprod] [int] NOT NULL ,
	[nome] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fabricante] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[detalhe] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[preco] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[precovelho] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[parcela] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[juro] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[aomes] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[estoque] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[idsessao] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[data] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[peso] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[imgra] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[impeq] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[contador] [int] NULL ,
	[vendas] [int] NULL ,
	[destaque] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[referencias] (
	[id] [int] NOT NULL ,
	[referencia] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[semana] (
	[id] [int] NOT NULL ,
	[dia_semana] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acessos] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[sessoes] (
	[id] [int] NOT NULL ,
	[data] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nome] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[descr] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ver] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

