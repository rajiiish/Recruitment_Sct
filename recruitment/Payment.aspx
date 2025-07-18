﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="recruitment.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .titlemenufont
    {
        font-family: Arial;
        font-size: 10pt;
    }
         .stepfont
        {
            color: green;
     text-shadow: 2px 2px 5px green;
        font-size: 100%;
        }
       
        .savebtncolor 
{
   background-color: dodgerblue; 
   padding: 4px 10px;
   font: 16px sans-serif;
   text-decoration: none;
   border: 2px solid #000;
   border-color: #aaa #444 #444 #aaa;
   color: white;
}
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
         ff<%-- title start--%><div class="container">

        <div class="bg-light shadow text-center">
        <p class="alert-info">Note: Don't input any special characters or punctuation marks. Input only alphanumeric characters.<br/>
        &nbsp; PLEASE BE VERY CAREFUL WHILE FILLING THE APPLICATION FORM </p>
        <p >Candidate Registration Number:
              <asp:Label ID="regidlbl" runat="server" Text="Label" Font-Bold="True" ForeColor="Blue"></asp:Label>
       Application ID: <asp:Label ID="appidnolbl" runat="server" Text="Label" Font-Bold="True" ForeColor="#006600"></asp:Label> 
            Post Applying For: <asp:Label ID="applyhpostlbl" runat="server" Text="Label" Font-Bold="True" ForeColor="#006600"></asp:Label>  </p>
      </div>

    </div> 
        <%-- title ends--%>


    <div class="container">
        <asp:Panel ID="Panel2" runat="server">
            <div class="row">
                     <div class="col">
                        <center>
                            <div class="alert alert-danger" role="alert">
                                <p>Candidates belonging to General / OBC / EWS category are required to remit/pay application fee (non-refundable) of Rs.500/- [Rupees five hundred only] through online mode viz. SBI Collect and fill up the transaction details in the prescribed columns of application given below. No other mode of payment will be accepted.</p>
                                
</div>
                           
                        </center>
                     </div>
                  </div>
        </asp:Panel>
        <asp:Panel ID="AcctDetailsPanel" runat="server">
            <div class="row">
                    
                 <div class="col-1">
                     </div>
                     <div class="col-10">
                        <center>
                            <div class="card " style="width: 50rem;">
                                <div class="card-header text-white  bg-info">SBI Collect Payment Link</div>
                                <div class="card-body">
                                    <p class="alert-info">After a successful payment, the candidate must enter the SBI Collect Reference Number / UTRN number and transaction date in the details below.</p> <p class="alert-info"><a href="files/HOW_PAY_SBI_COLLECT_CMC.pdf" target="_blank"> How to Pay Fee in SBI Collect</a></p>
                                    <p><a href="https://www.onlinesbi.sbi/sbicollect/icollecthome.htm?corpid=222844" target="_blank"> Click Here to Pay Fee in SBI Collect</a></p>
                            
                                        
                                    </div>
                                </div>
                        </center>
                         </div>

                 <div class="col-1">
                     </div>
                </div>
            </asp:Panel>
        <br />
        <asp:Panel ID="PaymentPanel" runat="server">
         <div class="card">
               <div class="card-body">

                     <center>    <h6 class="card-header text-white  bg-info ">Payment Transaction Details</h6></center><br />
        <div class="row">
             <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                <div class="col-4">
                    <label for="bankname">SBI Collect Reference Number</label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*Required" ControlToValidate="banknameText" validationgroup="basicpagegroup"></asp:RequiredFieldValidator>

                 <asp:TextBox ID="banknameText" runat="server" class="form-control" placeholder="" value="" ></asp:TextBox>                 

                 </div>
                <div class="col-4">
                    <label for="paydate">Payment Date</label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorPayDate" runat="server" ForeColor="Red" ErrorMessage="*Required" ControlToValidate="paymentdateText" validationgroup="basicpagegroup"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPayDate" runat="server" ErrorMessage="Invalid Date Format" ControlToValidate="paymentdateText" validationgroup="basicpagegroup"
                    ForeColor="Red" ValidationExpression="(^((((0[1-9])|([1-2][0-9])|(3[0-1]))|([1-9]))-(((0[1-9])|(1[0-2]))|([1-9]))-(([0-9]{2})|(((19)|([2]([0]{1})))([0-9]{2}))))$)"></asp:RegularExpressionValidator>

                  
                    <asp:TextBox ID="paymentdateText" class="form-control" Format="dd-MM-yyyy" placeholder="dd-MM-yyyy" runat="server" MaxLength="10" ></asp:TextBox> 

              

                  <ajaxToolkit:CalendarExtender ID="CalendarExtenderPayDate" PopupButtonID="paymentdateText" TargetControlID="paymentdateText" runat="server" Format="dd-MM-yyyy"/>
               
                 </div>
                <div class="col-4">
                    <label for="paymode">Mode of Payment</label>

               <!--   <asp:TextBox ID="paymodeText1" runat="server" class="form-control" placeholder="" value="SBI Collect" ReadOnly="true" ></asp:TextBox>  -->               

                 <asp:RequiredFieldValidator ErrorMessage="*Required" ControlToValidate="paymodeText" InitialValue="0" validationgroup="basicpagegroup" runat="server" ForeColor="Red" />

                     <asp:DropDownList ID="paymodeText" runat="server" class="form-control" placeholder="" value="" AutoPostBack="False" OnSelectedIndexChanged="paymodeText_SelectedIndexChanged" >
                          
                         <asp:ListItem Selected="True" Value="SBI Collect">SBI Collect</asp:ListItem>
                                                 
                     </asp:DropDownList>
               
                 </div>
                
                

            </div>
                     

                   </div>
             </div>
            </asp:Panel>
        <asp:Panel ID="PaymentPanelNotification" runat="server">
            <div class="row">
                     <div class="col">
                        <center>
                            <div class="alert alert-success" role="alert">
  <h5 class="alert-heading">      *Payment is exempted for Female, SC, ST, CSIR Employee (Permanent) & Ex-Servicemen</h5>
                                <p>If you are falling under any one of the above catagory and still payment options are visible, please re-check your filled application details in previous forms.</p>
                                
</div>
                           
                        </center>
                     </div>
                  </div>
        </asp:Panel>

        
        
        <div class="row">
            <div class="col-12">
                <center>
                    <asp:Label ID="PaymentErrorlbl" runat="server" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </center>
            </div>
        </div>

        <div class="row">
    <div class="col-12">
                 <asp:Button ID="goBackbtn" CssClass="savebtncolor" runat="server" Text="Go Back to Home" OnClick="goBackbtn_Click"  />

    <center> 

       <asp:Button ID="SaveDetails" CssClass="savebtncolor" runat="server" Text="Save and Continue" causesvalidation="true" validationgroup="basicpagegroup" OnClick="SaveDetails_Click" />
    </center>
    </div>
    </div>
    </div>
</asp:Content>
