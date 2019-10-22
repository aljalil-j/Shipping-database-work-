

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
   
    CREW TABLEL</p>
        
         
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Crew]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Crew] WHERE [CrewID] = @original_CrewID AND [fname] = @original_fname AND [lname] = @original_lname AND [Master_] = @original_Master_ AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL))" InsertCommand="INSERT INTO [Crew] ([CrewID], [fname], [lname], [Master_], [Qualifications]) VALUES (@CrewID, @fname, @lname, @Master_, @Qualifications)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Crew] SET [fname] = @fname, [lname] = @lname, [Master_] = @Master_, [Qualifications] = @Qualifications WHERE [CrewID] = @original_CrewID AND [fname] = @original_fname AND [lname] = @original_lname AND [Master_] = @original_Master_ AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_CrewID" Type="Int32" />
                    <asp:Parameter Name="original_fname" Type="String" />
                    <asp:Parameter Name="original_lname" Type="String" />
                    <asp:Parameter Name="original_Master_" Type="String" />
                    <asp:Parameter Name="original_Qualifications" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CrewID" Type="Int32" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="Master_" Type="String" />
                    <asp:Parameter Name="Qualifications" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="Master_" Type="String" />
                    <asp:Parameter Name="Qualifications" Type="String" />
                    <asp:Parameter Name="original_CrewID" Type="Int32" />
                    <asp:Parameter Name="original_fname" Type="String" />
                    <asp:Parameter Name="original_lname" Type="String" />
                    <asp:Parameter Name="original_Master_" Type="String" />
                    <asp:Parameter Name="original_Qualifications" Type="String" />
                </UpdateParameters>
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
         </form>
</body>
</html>
