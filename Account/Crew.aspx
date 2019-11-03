



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <a href="Default.aspx">LOG OUT</a>
        </br>

    CREW TABLEL<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Crew]" OldValuesParameterFormatString="original_{0}">
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
        <br />
         
    
        TRIP LOG</p>
        
         
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Trip_log]" OldValuesParameterFormatString="original_{0}">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView4" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource4" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="T_ID">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                  <asp:BoundField DataField="T_ID" HeaderText="T_ID" 
                     SortExpression="T_ID" ReadOnly="True" />
                 
                  <asp:BoundField DataField="trip_Destination" 
                     HeaderText="trip_Destination" SortExpression="trip_Destination" />
                  <asp:BoundField DataField="OnBoard" 
                     HeaderText="OnBoard" SortExpression="OnBoard" />



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
        <br />
        
   
        </p>
        
         
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Passenger]" OldValuesParameterFormatString="original_{0}">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView5" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource5" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="ship_IDentification">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                  <asp:BoundField DataField="ship_IDentification" HeaderText="ship_IDentification" 
                     SortExpression="ship_IDentification" ReadOnly="True" />
                 
                  <asp:BoundField DataField="Capacity" 
                     HeaderText="Capacity" SortExpression="Capacity" />
                  <asp:BoundField DataField="Stateroom" 
                     HeaderText="Stateroom" SortExpression="Stateroom" />

                    <asp:BoundField DataField="class" 
                     HeaderText="class" SortExpression="class" />



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
         </form>
    
    
</body>
</html>
