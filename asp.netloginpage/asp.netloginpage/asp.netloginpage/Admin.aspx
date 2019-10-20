<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="asp.netloginpage.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        
        SHIPS TABLE<br />

        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [ships]">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView2" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource2" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="ship_ID">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                  <asp:BoundField DataField="ship_ID" HeaderText="ship_ID" 
                     SortExpression="ship_ID" ReadOnly="True" />
                 
                  <asp:BoundField DataField="shipName" 
                     HeaderText="shipName" SortExpression="shipName" />
                  <asp:BoundField DataField="fuel" 
                     HeaderText="fuel" SortExpression="fuel" />

                    <asp:BoundField DataField="Beam" 
                     HeaderText="Beam" SortExpression="Beam" />

                   <asp:BoundField DataField="D_Displacement" HeaderText="D_Displacement" SortExpression="D_Displacement"></asp:BoundField>
                   <asp:BoundField DataField="speed" HeaderText="speed" SortExpression="speed"></asp:BoundField>
                   <asp:BoundField DataField="Endurance" HeaderText="Endurance" SortExpression="Endurance"></asp:BoundField>
                   <asp:BoundField DataField="lenght" HeaderText="lenght" SortExpression="lenght"></asp:BoundField>
                   <asp:BoundField DataField="draught" HeaderText="draught" SortExpression="draught"></asp:BoundField>
                   <asp:BoundField DataField="Home_Port" HeaderText="Home_Port" SortExpression="Home_Port"></asp:BoundField>

               </Columns>
               <FooterStyle BackColor="#5D7B9D" 
                  Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" 
                  ForeColor="White" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#E2DED6" 
                  Font-Bold="True" ForeColor="#333333" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  
                  ForeColor="White" />
               <EditRowStyle BackColor="#999999" />
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        <p>
            CREW TABLEL</p>
        
         
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Crew]">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView3" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource3" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="CrewID">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                  <asp:BoundField DataField="CrewID" HeaderText="CrewID" 
                     SortExpression="CrewID" ReadOnly="True" />
                 
                  <asp:BoundField DataField="fname" 
                     HeaderText="fname" SortExpression="fname" />
                  <asp:BoundField DataField="lname" 
                     HeaderText="lname" SortExpression="lname" />

                    <asp:BoundField DataField="Master_" 
                     HeaderText="Master_" SortExpression="Master_" />

                   <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications"></asp:BoundField>



               </Columns>
               <FooterStyle BackColor="#5D7B9D" 
                  Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" 
                  ForeColor="White" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#E2DED6" 
                  Font-Bold="True" ForeColor="#333333" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  
                  ForeColor="White" />
               <EditRowStyle BackColor="#999999" />
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        <br />
        TRIP TABLE<br />
        
         
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Trip]">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView4" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource4" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="Trip_ID">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                  <asp:BoundField DataField="Dates" HeaderText="Dates" 
                     SortExpression="Dates" />
                 
                  <asp:BoundField DataField="Departure" 
                     HeaderText="Departure" SortExpression="Departure" />
                  <asp:BoundField DataField="Destination" 
                     HeaderText="Destination" SortExpression="Destination" />

                    <asp:BoundField DataField="Number_On_Board" 
                     HeaderText="Number_On_Board" SortExpression="Number_On_Board" />

                   <asp:BoundField DataField="Number_of_Officers" HeaderText="Number_of_Officers" SortExpression="Number_of_Officers"></asp:BoundField>



                   <asp:BoundField DataField="Repairs" HeaderText="Repairs" SortExpression="Repairs"></asp:BoundField>
                   <asp:BoundField DataField="Position_Of_Vessles" HeaderText="Position_Of_Vessles" SortExpression="Position_Of_Vessles"></asp:BoundField>
                   <asp:BoundField DataField="Port_Rec" HeaderText="Port_Rec" SortExpression="Port_Rec"></asp:BoundField>
                   <asp:BoundField DataField="Value_s" HeaderText="Value_s" SortExpression="Value_s"></asp:BoundField>
                   <asp:BoundField DataField="Trip_ID" HeaderText="Trip_ID" ReadOnly="True" SortExpression="Trip_ID"></asp:BoundField>



               </Columns>
               <FooterStyle BackColor="#5D7B9D" 
                  Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" 
                  ForeColor="White" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#E2DED6" 
                  Font-Bold="True" ForeColor="#333333" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  
                  ForeColor="White" />
               <EditRowStyle BackColor="#999999" />
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
    </form>
</body>
</html>
