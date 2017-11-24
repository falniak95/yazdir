<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loglar.aspx.cs" Inherits="yazdir.webSitesi.test.adminPanel.loglar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtManagerName" runat="server"></asp:TextBox>
        <asp:Button ID="search" runat="server" Text="Araştır" />
        <asp:ScriptManager ID="updatorSM" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="updator" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Panel ID="myPanel" runat="server" style="width:100%">
                                            
           
              

                                             </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>

    </form>
</body>
</html>
