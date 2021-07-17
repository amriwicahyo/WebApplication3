<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 65px;
        }
        .auto-style4 {
            height: 30px;
            width: 171px;
        }
        .auto-style5 {
            width: 171px;
        }
        .auto-style6 {
            height: 23px;
            width: 171px;
        }
        .auto-style7 {
            height: 65px;
            width: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">NIM<br />
                        (Nomor Induk Mahasiswa)</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Hanya angka" onkeypress="return agk(event)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="NIM harus diisi" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Nama</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Hanya huruf" onkeypress="return hrf(event)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Nama harus diisi" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Jenis Kelamin</td>
                    <td class="auto-style1">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Laki-laki" Checked="True" GroupName="jk" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Perempuan" GroupName="jk" />
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Tanggal Lahir</td>
                    <td class="auto-style1"><input type="date" ID="tgl" runat="server"><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tgl" ErrorMessage="Umur anda harus diantara 15-20 tahun" MaximumValue="2007" MinimumValue="2001" ForeColor="Red"></asp:RangeValidator>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Agama</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Pilih Agama</asp:ListItem>
                            <asp:ListItem>Islam</asp:ListItem>
                            <asp:ListItem>Katolik</asp:ListItem>
                            <asp:ListItem>Protestan</asp:ListItem>
                            <asp:ListItem>Hindu</asp:ListItem>
                            <asp:ListItem>Budha</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Silahkan pilih agama anda" ForeColor="Red" InitialValue="Pilih Agama"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Hobi</td>
                    <td class="auto-style1">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Sepak Bola</asp:ListItem>
                            <asp:ListItem>Bola Basket</asp:ListItem>
                            <asp:ListItem>Badminton</asp:ListItem>
                            <asp:ListItem Selected="True">Dan lain-lain</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style7">Alamat</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Height="51px" Width="193px" placeholder="Alamat rumah" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Silahkan isi alamat anda" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="Submit" />
                    </td>
                    <td class="auto-style1">
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
<script>
    function agk(event){
        var agk = event.keyCode
        if (agk >= 48 && agk <= 57)
            return true;
        return false;
    }
    function hrf(event) {
        var hrf = event.keyCode
        if ((hrf >=  65 && hrf <= 90) || (hrf==32) || (hrf>=97 && hrf<=122))
            return true;
        return false;
    }
</script>