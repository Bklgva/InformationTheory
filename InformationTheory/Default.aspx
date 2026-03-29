<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InformationTheory.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Мое портфолио - Теория информации</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 40px;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            overflow: hidden;
        }
        
        .header {
            background: linear-gradient(135deg, #4a90e2, #8e44ad);
            padding: 40px;
            text-align: center;
            color: white;
        }
        
        .avatar {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid white;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            margin-bottom: 20px;
            background: #ddd;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-left: auto;
            margin-right: auto;
            font-size: 60px;
            overflow: hidden;
        }
        
        .avatar img {
            object-fit: cover;
        }
        
        .name {
            font-size: 32px;
            margin-bottom: 10px;
        }
        
        .subtitle {
            font-size: 18px;
            opacity: 0.9;
        }
        
        .content {
            padding: 40px;
        }
        
        .section {
            margin-bottom: 30px;
        }
        
        .section-title {
            font-size: 24px;
            color: #333;
            border-bottom: 3px solid #8e44ad;
            padding-bottom: 10px;
            margin-bottom: 15px;
        }
        
        .description {
            color: #555;
            line-height: 1.6;
            font-size: 16px;
        }
        
        .labs {
            margin-top: 30px;
        }
        
        .lab-button {
            display: inline-block;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 16px;
            border-radius: 30px;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
            margin-right: 15px;
            margin-bottom: 10px;
            text-decoration: none;
        }
        
        .lab-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }
        
        .lab-button.disabled {
            background: #ccc;
            cursor: not-allowed;
            opacity: 0.6;
        }
        
        .lab-button.disabled:hover {
            transform: none;
            box-shadow: none;
        }
        
        .footer {
            background: #f5f5f5;
            padding: 20px;
            text-align: center;
            color: #777;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">

                <div class="name">
                    <asp:Label ID="lblName" runat="server" Text="Боклагова Анна" />
                </div>

                    <asp:Image ID="ProfileImage" runat="server" 
                               ImageUrl="~/images/avatar.jpg" 
                               AlternateText="Мое фото"
                               onerror="this.onerror=null; this.src='data:image/svg+xml,%3Csvg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22%3E%3Ccircle cx=%2250%22 cy=%2250%22 r=%2250%22 fill=%22%23999%22/%3E%3Ctext x=%2250%22 y=%2267%22 text-anchor=%22middle%22 fill=%22white%22 font-size=%2240%22%3E📷%3C/text%3E%3C/svg%3E';" Height="410px" Width="297px" />
            </div>
            
            <div class="content">
                <div class="section">
                    <div class="section-title">Мои данные</div>
                    <div class="description">
                        +375293816829<br />
                        <a href="mailto:annabklgva@gmail.com">annabklgva@gmail.com</a><br />
                        tg: @bklgva</div>
                </div>
                
                <div class="labs">
                    <div class="section-title">Лабораторные работы</div>
                    <asp:Button ID="btnLab1" runat="server" Text="1" 
                                CssClass="lab-button" OnClick="btnLab1_Click" Width="96px" BackColor="#990099" />
                    <asp:Button ID="btnLab2" runat="server" Text="2" 
                                CssClass="lab-button disabled" Enabled="false" Width="96px" />
                    <asp:Button ID="btnLab3" runat="server" Text="3" 
                                CssClass="lab-button disabled" Enabled="false" Width="96px"/>
                    <asp:Button ID="btnLab4" runat="server" Text="4" 
                                CssClass="lab-button disabled" Enabled="false" Width="96px"/>
                </div>
            </div>
            
            
        </div>
    </form>
</body>
</html>