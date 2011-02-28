﻿/********
 * @version   : 1.0.0 - Professional Edition (Ext.NET Professional License)
 * @author    : Ext.NET, Inc. http://www.ext.net/
 * @date      : 2009-11-15
 * @copyright : Copyright (c) 2010, Ext.NET, Inc. (http://www.ext.net/). All rights reserved.
 * @license   : See license.txt and http://www.ext.net/license/. 
 ********/

using System;

namespace Ext.Net.Examples.FeedViewer
{
    public partial class FeedWindow : Window
    {
        public const string SCOPE = "FeedViewer.FeedWindow";
        private ComboBox feedUrl;
        private FormPanel form;

        public FeedWindow()
        {
            this.ID = "AddFeedWin";
            this.Title = "Add Feed";
            this.IconCls = "feed-icon";
            this.AutoHeight = true;
            this.Width = 500;
            this.Resizable = false;
            this.Plain = true;
            this.Modal = true;
            this.Y = 100;
            this.AutoScroll = true;
            this.CloseAction = Net.CloseAction.Hide;
            this.Hidden = true;

            Button btnAdd = new Button
                                {
                                    Text = "Adicionar Feed",
                                    Scope = FeedWindow.SCOPE,
                                    Handler = FeedWindow.SCOPE + ".onAdd"
                                };
            btnAdd.DirectEvents.Click.Event += AddClick_Event;
            btnAdd.DirectEvents.Click.EventMask.ShowMask = true;
            btnAdd.DirectEvents.Click.EventMask.Msg = "Validando Feed...";
            btnAdd.DirectEvents.Click.Failure = FeedWindow.SCOPE+".markInvalid();";

            this.Buttons.Add(btnAdd);

            this.Buttons.Add(new Button
            {
                Text = "Calncelar",
                Scope = FeedWindow.SCOPE,
                Handler = FeedWindow.SCOPE + ".hide"
            });

            this.BuildForm();

            this.Items.Add(this.form);

            this.Listeners.BeforeShow.Fn = FeedWindow.SCOPE + ".beforeShow";
            this.Listeners.BeforeShow.Scope = FeedWindow.SCOPE;
            
        }

        protected override void OnPreRender(EventArgs e)
        {
            if (!Ext.Net.X.IsAjaxRequest)
            {
                this.AddEvents("validfeed");
                this.On("validfeed", new JFunction("Ext.net.DirectMethods.FeedTree.AddFeed(f.url, f.text, false, false);", "f"));
                this.Listeners.AfterLayout.Handler = string.Format("{0}.feedUrl={1};", SCOPE, this.feedUrl.ClientID);
            }
            base.OnPreRender(e);
        }

        private void BuildCombo()
        {
            Store store = new Store
            {
                ID = "FeedUrlStore",
                Reader =
                {
                    new ArrayReader
                    {
                        Fields =
                        {
                            new RecordField("url"),
                            new RecordField("text")
                        }
                    }
                }
            };
            this.Controls.Add(store);

            if (!Ext.Net.X.IsAjaxRequest)
            {
                store.DataSource = new object[]
                                       {
                                           new string[]
                                               {
                                                   "http://www.divergingpath.com/rss.cfm?mode=full", "Aaron Conran's Blog"    
                                               },
                                           new string[]
                                               {
                                                   "http://feeds.yuiblog.com/YahooUserInterfaceBlog", "Yahoo! UI Blog"    
                                               },
                                           new string[]
                                               {
                                                   "http://feeds.feedburner.com/jquery/", "jQuery Blog"    
                                               },
                                           new string[]
                                               {
                                                   "http://sports.yahoo.com/nba/rss.xml", "NBA News"    
                                               },
                                           new string[]
                                               {
                                                   "http://feeds.dzone.com/dzone/frontpage", "DZone.com"    
                                               } 
                                       };

                store.DataBind();
            }
            
            this.feedUrl = new ComboBox
            {
                ID = "FeedUrl",
                FieldLabel = "Entre com a URL da Fedd para adicionar",
                EmptyText = "http://colunistas.ig.com.br/gamerbr/feed/",
                Width = 450,
                ValidateOnEvent = false,
                ValidateOnBlur = false,
                MsgTarget = MessageTarget.Under,
                TriggerAction = TriggerAction.All,
                DisplayField = "url",
                ValueField = "url",
                Mode = DataLoadMode.Local,
                StoreID = store.ID,
                ForceSelection = false,
                Listeners =
                {
                   Valid = { Fn = FeedWindow.SCOPE + ".syncShadow", Scope = FeedWindow.SCOPE},
                   Invalid = { Fn = FeedWindow.SCOPE + ".syncShadow", Scope = FeedWindow.SCOPE }
                },
                Template =
                {
                   Html = @"<tpl for="".""><div class=""x-combo-list-item"">
                            <em>{url}</em><strong>{text}</strong>
                            <div class=""x-clear""></div>
                            </div></tpl>"
                }
            };
        }

        private void BuildForm()
        {
            this.BuildCombo();

            this.form = new FormPanel
            {
                LabelAlign = LabelAlign.Top,
                Border = false,
                BodyStyle = "background:transparent;padding:10px;",
                Items =
                {
                    this.feedUrl
                }
            };
        }
    }
}