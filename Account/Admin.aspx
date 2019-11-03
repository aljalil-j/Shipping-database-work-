


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <a runat="server" href="~/Account/Register">ADD NEW USERS</a></br></br></br>
        <a  href="Crew.aspx">CREW</a><br />
        <br />
        </br>
        
        SHIPS TABLE<br />

        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [ships]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ships] WHERE [ship_ID] = @original_ship_ID AND (([shipName] = @original_shipName) OR ([shipName] IS NULL AND @original_shipName IS NULL)) AND (([fuel] = @original_fuel) OR ([fuel] IS NULL AND @original_fuel IS NULL)) AND (([Beam] = @original_Beam) OR ([Beam] IS NULL AND @original_Beam IS NULL)) AND (([D_Displacement] = @original_D_Displacement) OR ([D_Displacement] IS NULL AND @original_D_Displacement IS NULL)) AND (([speed] = @original_speed) OR ([speed] IS NULL AND @original_speed IS NULL)) AND (([Endurance] = @original_Endurance) OR ([Endurance] IS NULL AND @original_Endurance IS NULL)) AND (([lenght] = @original_lenght) OR ([lenght] IS NULL AND @original_lenght IS NULL)) AND (([draught] = @original_draught) OR ([draught] IS NULL AND @original_draught IS NULL)) AND (([Home_Port] = @original_Home_Port) OR ([Home_Port] IS NULL AND @original_Home_Port IS NULL))" InsertCommand="INSERT INTO [ships] ([ship_ID], [shipName], [fuel], [Beam], [D_Displacement], [speed], [Endurance], [lenght], [draught], [Home_Port]) VALUES (@ship_ID, @shipName, @fuel, @Beam, @D_Displacement, @speed, @Endurance, @lenght, @draught, @Home_Port)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ships] SET [shipName] = @shipName, [fuel] = @fuel, [Beam] = @Beam, [D_Displacement] = @D_Displacement, [speed] = @speed, [Endurance] = @Endurance, [lenght] = @lenght, [draught] = @draught, [Home_Port] = @Home_Port WHERE [ship_ID] = @original_ship_ID AND (([shipName] = @original_shipName) OR ([shipName] IS NULL AND @original_shipName IS NULL)) AND (([fuel] = @original_fuel) OR ([fuel] IS NULL AND @original_fuel IS NULL)) AND (([Beam] = @original_Beam) OR ([Beam] IS NULL AND @original_Beam IS NULL)) AND (([D_Displacement] = @original_D_Displacement) OR ([D_Displacement] IS NULL AND @original_D_Displacement IS NULL)) AND (([speed] = @original_speed) OR ([speed] IS NULL AND @original_speed IS NULL)) AND (([Endurance] = @original_Endurance) OR ([Endurance] IS NULL AND @original_Endurance IS NULL)) AND (([lenght] = @original_lenght) OR ([lenght] IS NULL AND @original_lenght IS NULL)) AND (([draught] = @original_draught) OR ([draught] IS NULL AND @original_draught IS NULL)) AND (([Home_Port] = @original_Home_Port) OR ([Home_Port] IS NULL AND @original_Home_Port IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ship_ID" Type="Int32" />
                    <asp:Parameter Name="original_shipName" Type="String" />
                    <asp:Parameter Name="original_fuel" Type="Double" />
                    <asp:Parameter Name="original_Beam" Type="Int32" />
                    <asp:Parameter Name="original_D_Displacement" Type="Double" />
                    <asp:Parameter Name="original_speed" Type="Double" />
                    <asp:Parameter Name="original_Endurance" Type="Double" />
                    <asp:Parameter Name="original_lenght" Type="Double" />
                    <asp:Parameter Name="original_draught" Type="String" />
                    <asp:Parameter Name="original_Home_Port" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ship_ID" Type="Int32" />
                    <asp:Parameter Name="shipName" Type="String" />
                    <asp:Parameter Name="fuel" Type="Double" />
                    <asp:Parameter Name="Beam" Type="Int32" />
                    <asp:Parameter Name="D_Displacement" Type="Double" />
                    <asp:Parameter Name="speed" Type="Double" />
                    <asp:Parameter Name="Endurance" Type="Double" />
                    <asp:Parameter Name="lenght" Type="Double" />
                    <asp:Parameter Name="draught" Type="String" />
                    <asp:Parameter Name="Home_Port" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="shipName" Type="String" />
                    <asp:Parameter Name="fuel" Type="Double" />
                    <asp:Parameter Name="Beam" Type="Int32" />
                    <asp:Parameter Name="D_Displacement" Type="Double" />
                    <asp:Parameter Name="speed" Type="Double" />
                    <asp:Parameter Name="Endurance" Type="Double" />
                    <asp:Parameter Name="lenght" Type="Double" />
                    <asp:Parameter Name="draught" Type="String" />
                    <asp:Parameter Name="Home_Port" Type="String" />
                    <asp:Parameter Name="original_ship_ID" Type="Int32" />
                    <asp:Parameter Name="original_shipName" Type="String" />
                    <asp:Parameter Name="original_fuel" Type="Double" />
                    <asp:Parameter Name="original_Beam" Type="Int32" />
                    <asp:Parameter Name="original_D_Displacement" Type="Double" />
                    <asp:Parameter Name="original_speed" Type="Double" />
                    <asp:Parameter Name="original_Endurance" Type="Double" />
                    <asp:Parameter Name="original_lenght" Type="Double" />
                    <asp:Parameter Name="original_draught" Type="String" />
                    <asp:Parameter Name="original_Home_Port" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView2" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource2" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="ship_ID" AllowSorting="True">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="CrewID" AllowSorting="True">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
               SelectCommand="SELECT * FROM [Trip]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Trip] WHERE [Trip_ID] = @original_Trip_ID AND [Dates] = @original_Dates AND [Departure] = @original_Departure AND [Number_On_Board] = @original_Number_On_Board AND [Number_of_Officers] = @original_Number_of_Officers AND [Repairs] = @original_Repairs AND [Position_Of_Vessles] = @original_Position_Of_Vessles AND [Port_Rec] = @original_Port_Rec AND [Value_s] = @original_Value_s AND (([Destination] = @original_Destination) OR ([Destination] IS NULL AND @original_Destination IS NULL))" InsertCommand="INSERT INTO [Trip] ([Dates], [Departure], [Number_On_Board], [Number_of_Officers], [Repairs], [Position_Of_Vessles], [Port_Rec], [Value_s], [Trip_ID], [Destination]) VALUES (@Dates, @Departure, @Number_On_Board, @Number_of_Officers, @Repairs, @Position_Of_Vessles, @Port_Rec, @Value_s, @Trip_ID, @Destination)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Trip] SET [Dates] = @Dates, [Departure] = @Departure, [Number_On_Board] = @Number_On_Board, [Number_of_Officers] = @Number_of_Officers, [Repairs] = @Repairs, [Position_Of_Vessles] = @Position_Of_Vessles, [Port_Rec] = @Port_Rec, [Value_s] = @Value_s, [Destination] = @Destination WHERE [Trip_ID] = @original_Trip_ID AND [Dates] = @original_Dates AND [Departure] = @original_Departure AND [Number_On_Board] = @original_Number_On_Board AND [Number_of_Officers] = @original_Number_of_Officers AND [Repairs] = @original_Repairs AND [Position_Of_Vessles] = @original_Position_Of_Vessles AND [Port_Rec] = @original_Port_Rec AND [Value_s] = @original_Value_s AND (([Destination] = @original_Destination) OR ([Destination] IS NULL AND @original_Destination IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Trip_ID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_Dates" />
                    <asp:Parameter Name="original_Departure" Type="String" />
                    <asp:Parameter Name="original_Number_On_Board" Type="Int32" />
                    <asp:Parameter Name="original_Number_of_Officers" Type="Int32" />
                    <asp:Parameter Name="original_Repairs" Type="String" />
                    <asp:Parameter Name="original_Position_Of_Vessles" Type="String" />
                    <asp:Parameter Name="original_Port_Rec" Type="String" />
                    <asp:Parameter Name="original_Value_s" Type="Double" />
                    <asp:Parameter Name="original_Destination" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="Dates" />
                    <asp:Parameter Name="Departure" Type="String" />
                    <asp:Parameter Name="Number_On_Board" Type="Int32" />
                    <asp:Parameter Name="Number_of_Officers" Type="Int32" />
                    <asp:Parameter Name="Repairs" Type="String" />
                    <asp:Parameter Name="Position_Of_Vessles" Type="String" />
                    <asp:Parameter Name="Port_Rec" Type="String" />
                    <asp:Parameter Name="Value_s" Type="Double" />
                    <asp:Parameter Name="Trip_ID" Type="Int32" />
                    <asp:Parameter Name="Destination" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Dates" />
                    <asp:Parameter Name="Departure" Type="String" />
                    <asp:Parameter Name="Number_On_Board" Type="Int32" />
                    <asp:Parameter Name="Number_of_Officers" Type="Int32" />
                    <asp:Parameter Name="Repairs" Type="String" />
                    <asp:Parameter Name="Position_Of_Vessles" Type="String" />
                    <asp:Parameter Name="Port_Rec" Type="String" />
                    <asp:Parameter Name="Value_s" Type="Double" />
                    <asp:Parameter Name="Destination" Type="String" />
                    <asp:Parameter Name="original_Trip_ID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_Dates" />
                    <asp:Parameter Name="original_Departure" Type="String" />
                    <asp:Parameter Name="original_Number_On_Board" Type="Int32" />
                    <asp:Parameter Name="original_Number_of_Officers" Type="Int32" />
                    <asp:Parameter Name="original_Repairs" Type="String" />
                    <asp:Parameter Name="original_Position_Of_Vessles" Type="String" />
                    <asp:Parameter Name="original_Port_Rec" Type="String" />
                    <asp:Parameter Name="original_Value_s" Type="Double" />
                    <asp:Parameter Name="original_Destination" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView4" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource4" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="Trip_ID" AllowSorting="True">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="Dates" HeaderText="Dates" 
                     SortExpression="Dates" />
                 
                  <asp:BoundField DataField="Departure" 
                     HeaderText="Departure" SortExpression="Departure" />
                  <asp:BoundField DataField="Number_On_Board" 
                     HeaderText="Number_On_Board" SortExpression="Number_On_Board" />

                    <asp:BoundField DataField="Number_of_Officers" 
                     HeaderText="Number_of_Officers" SortExpression="Number_of_Officers" />

                   <asp:BoundField DataField="Repairs" HeaderText="Repairs" SortExpression="Repairs"></asp:BoundField>



                   <asp:BoundField DataField="Position_Of_Vessles" HeaderText="Position_Of_Vessles" SortExpression="Position_Of_Vessles"></asp:BoundField>
                   <asp:BoundField DataField="Port_Rec" HeaderText="Port_Rec" SortExpression="Port_Rec"></asp:BoundField>
                   <asp:BoundField DataField="Value_s" HeaderText="Value_s" SortExpression="Value_s"></asp:BoundField>
                   <asp:BoundField DataField="Trip_ID" HeaderText="Trip_ID" SortExpression="Trip_ID" ReadOnly="True"></asp:BoundField>
                   <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination"></asp:BoundField>



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
            SALARY TABLE</p>

        
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Salary]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Salary] WHERE [salary_id] = @original_salary_id AND [CrewI_D] = @original_CrewI_D AND [Individual_Service_Length] = @original_Individual_Service_Length AND [Length_of_trip] = @original_Length_of_trip AND (([Current_Appointment] = @original_Current_Appointment) OR ([Current_Appointment] IS NULL AND @original_Current_Appointment IS NULL)) AND (([TRN] = @original_TRN) OR ([TRN] IS NULL AND @original_TRN IS NULL))" InsertCommand="INSERT INTO [Salary] ([salary_id], [Individual_Service_Length], [Length_of_trip], [CrewI_D], [Current_Appointment], [TRN]) VALUES (@salary_id, @Individual_Service_Length, @Length_of_trip, @CrewI_D, @Current_Appointment, @TRN)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Salary] SET [Individual_Service_Length] = @Individual_Service_Length, [Length_of_trip] = @Length_of_trip, [Current_Appointment] = @Current_Appointment, [TRN] = @TRN WHERE [salary_id] = @original_salary_id AND [CrewI_D] = @original_CrewI_D AND [Individual_Service_Length] = @original_Individual_Service_Length AND [Length_of_trip] = @original_Length_of_trip AND (([Current_Appointment] = @original_Current_Appointment) OR ([Current_Appointment] IS NULL AND @original_Current_Appointment IS NULL)) AND (([TRN] = @original_TRN) OR ([TRN] IS NULL AND @original_TRN IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_salary_id" Type="Int32" />
                    <asp:Parameter Name="original_CrewI_D" Type="Int32" />
                    <asp:Parameter Name="original_Individual_Service_Length" Type="String" />
                    <asp:Parameter Name="original_Length_of_trip" Type="Double" />
                    <asp:Parameter Name="original_Current_Appointment" Type="String" />
                    <asp:Parameter Name="original_TRN" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="salary_id" Type="Int32" />
                    <asp:Parameter Name="Individual_Service_Length" Type="String" />
                    <asp:Parameter Name="Length_of_trip" Type="Double" />
                    <asp:Parameter Name="CrewI_D" Type="Int32" />
                    <asp:Parameter Name="Current_Appointment" Type="String" />
                    <asp:Parameter Name="TRN" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Individual_Service_Length" Type="String" />
                    <asp:Parameter Name="Length_of_trip" Type="Double" />
                    <asp:Parameter Name="Current_Appointment" Type="String" />
                    <asp:Parameter Name="TRN" Type="String" />
                    <asp:Parameter Name="original_salary_id" Type="Int32" />
                    <asp:Parameter Name="original_CrewI_D" Type="Int32" />
                    <asp:Parameter Name="original_Individual_Service_Length" Type="String" />
                    <asp:Parameter Name="original_Length_of_trip" Type="Double" />
                    <asp:Parameter Name="original_Current_Appointment" Type="String" />
                    <asp:Parameter Name="original_TRN" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView5" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource5" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="salary_id,CrewI_D" AllowSorting="True">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="salary_id" HeaderText="salary_id" 
                     SortExpression="salary_id" ReadOnly="True" />
                 
                  <asp:BoundField DataField="Individual_Service_Length" 
                     HeaderText="Individual_Service_Length" SortExpression="Individual_Service_Length" />
                  <asp:BoundField DataField="Length_of_trip" 
                     HeaderText="Length_of_trip" SortExpression="Length_of_trip" />

                    <asp:BoundField DataField="CrewI_D" 
                     HeaderText="CrewI_D" SortExpression="CrewI_D" ReadOnly="True" />

                   <asp:BoundField DataField="Current_Appointment" HeaderText="Current_Appointment" SortExpression="Current_Appointment"></asp:BoundField>
                   <asp:BoundField DataField="TRN" HeaderText="TRN" SortExpression="TRN"></asp:BoundField>

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
        CARGO TABLE<asp:SqlDataSource ID="SqlDataSource6" runat="server" 
               ConnectionString= "<%$ ConnectionStrings:LoginDBConnectionString %>" 
               SelectCommand="SELECT * FROM [Cargo]" DeleteCommand="DELETE FROM [Cargo] WHERE [ship_IDent] = @ship_IDent" InsertCommand="INSERT INTO [Cargo] ([ship_IDent], [cargo_class], [cargo_capacity]) VALUES (@ship_IDent, @cargo_class, @cargo_capacity)" UpdateCommand="UPDATE [Cargo] SET [cargo_class] = @cargo_class, [cargo_capacity] = @cargo_capacity WHERE [ship_IDent] = @ship_IDent">
            <DeleteParameters>
                <asp:Parameter Name="ship_IDent" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ship_IDent" Type="Int32" />
                <asp:Parameter Name="cargo_class" Type="String" />
                <asp:Parameter Name="cargo_capacity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cargo_class" Type="String" />
                <asp:Parameter Name="cargo_capacity" Type="Int32" />
                <asp:Parameter Name="ship_IDent" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView6" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource6" ForeColor="#333333" 
               GridLines="None" CssClass="auto-style1" Width="604px" DataKeyNames="ship_IDent" AllowSorting="True">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="ship_IDent" HeaderText="ship_IDent" 
                     SortExpression="ship_IDent" ReadOnly="True" />
                 
                  <asp:BoundField DataField="cargo_class" 
                     HeaderText="cargo_class" SortExpression="cargo_class" />
                  <asp:BoundField DataField="cargo_capacity" 
                     HeaderText="cargo_capacity" SortExpression="cargo_capacity" />

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
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" DeleteCommand="DELETE FROM [SALARYAudit] WHERE [AuditID] = @original_AuditID AND [CrewID] = @original_CrewID AND [Crew_fname] = @original_Crew_fname AND [Crew_lname] = @original_Crew_lname AND (([Salary_id] = @original_Salary_id) OR ([Salary_id] IS NULL AND @original_Salary_id IS NULL)) AND (([ModifiedBy] = @original_ModifiedBy) OR ([ModifiedBy] IS NULL AND @original_ModifiedBy IS NULL)) AND (([ModifiedDate] = @original_ModifiedDate) OR ([ModifiedDate] IS NULL AND @original_ModifiedDate IS NULL)) AND (([operation] = @original_operation) OR ([operation] IS NULL AND @original_operation IS NULL))" InsertCommand="INSERT INTO [SALARYAudit] ([CrewID], [Crew_fname], [Crew_lname], [Salary_id], [ModifiedBy], [ModifiedDate], [operation]) VALUES (@CrewID, @Crew_fname, @Crew_lname, @Salary_id, @ModifiedBy, @ModifiedDate, @operation)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SALARYAudit]" UpdateCommand="UPDATE [SALARYAudit] SET [CrewID] = @CrewID, [Crew_fname] = @Crew_fname, [Crew_lname] = @Crew_lname, [Salary_id] = @Salary_id, [ModifiedBy] = @ModifiedBy, [ModifiedDate] = @ModifiedDate, [operation] = @operation WHERE [AuditID] = @original_AuditID AND [CrewID] = @original_CrewID AND [Crew_fname] = @original_Crew_fname AND [Crew_lname] = @original_Crew_lname AND (([Salary_id] = @original_Salary_id) OR ([Salary_id] IS NULL AND @original_Salary_id IS NULL)) AND (([ModifiedBy] = @original_ModifiedBy) OR ([ModifiedBy] IS NULL AND @original_ModifiedBy IS NULL)) AND (([ModifiedDate] = @original_ModifiedDate) OR ([ModifiedDate] IS NULL AND @original_ModifiedDate IS NULL)) AND (([operation] = @original_operation) OR ([operation] IS NULL AND @original_operation IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_AuditID" Type="Int32" />
                    <asp:Parameter Name="original_CrewID" Type="Int32" />
                    <asp:Parameter Name="original_Crew_fname" Type="String" />
                    <asp:Parameter Name="original_Crew_lname" Type="String" />
                    <asp:Parameter Name="original_Salary_id" Type="Int32" />
                    <asp:Parameter Name="original_ModifiedBy" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_ModifiedDate" />
                    <asp:Parameter Name="original_operation" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CrewID" Type="Int32" />
                    <asp:Parameter Name="Crew_fname" Type="String" />
                    <asp:Parameter Name="Crew_lname" Type="String" />
                    <asp:Parameter Name="Salary_id" Type="Int32" />
                    <asp:Parameter Name="ModifiedBy" Type="String" />
                    <asp:Parameter DbType="Date" Name="ModifiedDate" />
                    <asp:Parameter Name="operation" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CrewID" Type="Int32" />
                    <asp:Parameter Name="Crew_fname" Type="String" />
                    <asp:Parameter Name="Crew_lname" Type="String" />
                    <asp:Parameter Name="Salary_id" Type="Int32" />
                    <asp:Parameter Name="ModifiedBy" Type="String" />
                    <asp:Parameter DbType="Date" Name="ModifiedDate" />
                    <asp:Parameter Name="operation" Type="String" />
                    <asp:Parameter Name="original_AuditID" Type="Int32" />
                    <asp:Parameter Name="original_CrewID" Type="Int32" />
                    <asp:Parameter Name="original_Crew_fname" Type="String" />
                    <asp:Parameter Name="original_Crew_lname" Type="String" />
                    <asp:Parameter Name="original_Salary_id" Type="Int32" />
                    <asp:Parameter Name="original_ModifiedBy" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_ModifiedDate" />
                    <asp:Parameter Name="original_operation" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView7" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AuditID" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="AuditID" HeaderText="AuditID" InsertVisible="False" ReadOnly="True" SortExpression="AuditID" />
                    <asp:BoundField DataField="CrewID" HeaderText="CrewID" SortExpression="CrewID" />
                    <asp:BoundField DataField="Crew_fname" HeaderText="Crew_fname" SortExpression="Crew_fname" />
                    <asp:BoundField DataField="Crew_lname" HeaderText="Crew_lname" SortExpression="Crew_lname" />
                    <asp:BoundField DataField="Salary_id" HeaderText="Salary_id" SortExpression="Salary_id" />
                    <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                    <asp:BoundField DataField="operation" HeaderText="operation" SortExpression="operation" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT * FROM [viewport]"></asp:SqlDataSource>
        </p>
        <p>
            View Port<asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8">
                <Columns>
                    <asp:BoundField DataField="numOfShip" HeaderText="numOfShip" SortExpression="numOfShip" />
                    <asp:BoundField DataField="port_rec" HeaderText="port_rec" SortExpression="port_rec" />
                </Columns>
            </asp:GridView>
        </p>
        
         
        <p>
            &nbsp;</p>
        
         
            <p>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString2 %>" DeleteCommand="DELETE FROM [Oil_Tanker] WHERE [ship_identify] = @original_ship_identify AND (([dead_weight] = @original_dead_weight) OR ([dead_weight] IS NULL AND @original_dead_weight IS NULL)) AND (([class_Petroleum] = @original_class_Petroleum) OR ([class_Petroleum] IS NULL AND @original_class_Petroleum IS NULL))" InsertCommand="INSERT INTO [Oil_Tanker] ([ship_identify], [dead_weight], [class_Petroleum]) VALUES (@ship_identify, @dead_weight, @class_Petroleum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Oil_Tanker]" UpdateCommand="UPDATE [Oil_Tanker] SET [dead_weight] = @dead_weight, [class_Petroleum] = @class_Petroleum WHERE [ship_identify] = @original_ship_identify AND (([dead_weight] = @original_dead_weight) OR ([dead_weight] IS NULL AND @original_dead_weight IS NULL)) AND (([class_Petroleum] = @original_class_Petroleum) OR ([class_Petroleum] IS NULL AND @original_class_Petroleum IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ship_identify" Type="Int32" />
                        <asp:Parameter Name="original_dead_weight" Type="Double" />
                        <asp:Parameter Name="original_class_Petroleum" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ship_identify" Type="Int32" />
                        <asp:Parameter Name="dead_weight" Type="Double" />
                        <asp:Parameter Name="class_Petroleum" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="dead_weight" Type="Double" />
                        <asp:Parameter Name="class_Petroleum" Type="String" />
                        <asp:Parameter Name="original_ship_identify" Type="Int32" />
                        <asp:Parameter Name="original_dead_weight" Type="Double" />
                        <asp:Parameter Name="original_class_Petroleum" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        </p>
        OIL TANKER<asp:GridView ID="GridView9" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ship_identify" DataSourceID="SqlDataSource9">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ship_identify" HeaderText="ship_identify" ReadOnly="True" SortExpression="ship_identify" />
                <asp:BoundField DataField="dead_weight" HeaderText="dead_weight" SortExpression="dead_weight" />
                <asp:BoundField DataField="class_Petroleum" HeaderText="class_Petroleum" SortExpression="class_Petroleum" />
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="sp_shiplenght" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter Name="shipID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Store procedure to view<asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataKeyNames="ship_identify" DataSourceID="SqlDataSource9">
            <Columns>
                <asp:BoundField DataField="ship_identify" HeaderText="ship_identify" ReadOnly="True" SortExpression="ship_identify" />
                <asp:BoundField DataField="dead_weight" HeaderText="dead_weight" SortExpression="dead_weight" />
                <asp:BoundField DataField="class_Petroleum" HeaderText="class_Petroleum" SortExpression="class_Petroleum" />
            </Columns>
        </asp:GridView>
        
         
    </form>
        <p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
