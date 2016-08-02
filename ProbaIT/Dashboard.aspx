<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ProbaIT.Dashboard" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            left: 0px;
            top: -3px;
        }

        #control-container img {
            width: 150px;
            height: 150px;
            padding-top: 15px;
        }

        .box {
            background-color: rgba(34, 34, 34, 0.9);
            color: #FCFCDC;
            border-radius: 4px;
            text-align: center;
            margin-top: 15px;
            margin-bottom: 10px;
            padding: 30px 24px;
        }

        .backImgDashboard {
            height: 100%;
            position: relative;
        }

            .backImgDashboard::after {
                content: "";
                background-image: url('Styles/img/background.jpg');
                height: 100%;
                background-repeat: no-repeat;
                background-size: cover;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                position: absolute;
                z-index: -1;
                opacity: 0.5;
            }

        .hovereffect {
            width: 100%;
            height: 100%;
            float: left;
            overflow: hidden;
            position: relative;
            text-align: center;
            cursor: default;
            padding-top: 60px;
            font-family: sans-serif;
        }

        h4 {
            margin-bottom: 10px;
            padding: 0;
            position: relative;
            text-transform: uppercase;
            border-bottom: 1px solid white;
        }

        .hovereffect .overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            overflow: hidden;
            top: 0;
            left: 0;
            background-color: rgba(0,0,0,0.6);
            opacity: 0;
            filter: alpha(opacity=0);
            -webkit-transform: translate(460px, -100px) rotate(180deg);
            -ms-transform: translate(460px, -100px) rotate(180deg);
            transform: translate(460px, -100px) rotate(180deg);
            -webkit-transition: all 0.2s 0.4s ease-in-out;
            transition: all 0.2s 0.4s ease-in-out;
        }

        .hovereffect img {
            display: block;
            position: relative;
            -webkit-transition: all 0.2s ease-in;
            transition: all 0.2s ease-in;
        }

        .hovereffect h3 {
            text-transform: uppercase;
            color: #fff;
            text-align: center;
            position: relative;
            font-size: 17px;
            padding: 0;
            background: rgba(0, 0, 0, 0.6);
        }

            .hovereffect h3.info {
                display: inline-block;
                text-decoration: none;
                padding: 1px 14px;
                text-transform: uppercase;
                color: #fff;
                border: 1px solid #ffffff;
                margin: 20px 0 0 0;
                background-color: transparent;
                -webkit-transform: translateY(-200px);
                -ms-transform: translateY(-200px);
                transform: translateY(-200px);
                -webkit-transition: all 0.2s ease-in-out;
                transition: all 0.2s ease-in-out;
            }

                .hovereffect h3.info:hover {
                    box-shadow: 0 0 5px #fff;
                }

        .hovereffect:hover .overlay {
            opacity: 1;
            filter: alpha(opacity=100);
            -webkit-transition-delay: 0s;
            transition-delay: 0s;
            -webkit-transform: translate(0px, 0px);
            -ms-transform: translate(0px, 0px);
            transform: translate(0px, 0px);
        }

        .hovereffect:hover h3 {
            -webkit-transform: translateY(0px);
            -ms-transform: translateY(0px);
            transform: translateY(0px);
            -webkit-transition-delay: 0.5s;
            transition-delay: 0.5s;
        }

            .hovereffect:hover h3.info {
                -webkit-transform: translateY(0px);
                -ms-transform: translateY(0px);
                transform: translateY(0px);
                -webkit-transition-delay: 0.3s;
                transition-delay: 0.3s;
            }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10 backImgDashboard" style="height: 100vh; padding-top: 10%;">
        <div class="row" style="margin: 0 auto; width: 78.2%;">
            <div class="row">
                <div class="col-md-12" id="control-container" style="margin-top: 15px">
                    <div class="col-md-4">
                        <div class="box hovereffect">
                            <h4>Processors</h4>
                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDU4IDU4IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1OCA1ODsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxnPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik01NSwxNmMtMC41NTIsMC0xLDAuNDQ3LTEsMXMwLjQ0OCwxLDEsMWgzdi0ySDU1eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik01NCwyMGMwLDAuNTUzLDAuNDQ4LDEsMSwxaDN2LTJoLTNDNTQuNDQ4LDE5LDU0LDE5LjQ0Nyw1NCwyMHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNNTQsMjNjMCwwLjU1MywwLjQ0OCwxLDEsMWgzdi0yaC0zQzU0LjQ0OCwyMiw1NCwyMi40NDcsNTQsMjN6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTU0LDI2YzAsMC41NTMsMC40NDgsMSwxLDFoM3YtMmgtM0M1NC40NDgsMjUsNTQsMjUuNDQ3LDU0LDI2eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik01NCwyOWMwLDAuNTUzLDAuNDQ4LDEsMSwxaDN2LTJoLTNDNTQuNDQ4LDI4LDU0LDI4LjQ0Nyw1NCwyOXoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNNTQsMzJjMCwwLjU1MywwLjQ0OCwxLDEsMWgzdi0yaC0zQzU0LjQ0OCwzMSw1NCwzMS40NDcsNTQsMzJ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTU0LDM1YzAsMC41NTMsMC40NDgsMSwxLDFoM3YtMmgtM0M1NC40NDgsMzQsNTQsMzQuNDQ3LDU0LDM1eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik01NCwzOGMwLDAuNTUzLDAuNDQ4LDEsMSwxaDN2LTJoLTNDNTQuNDQ4LDM3LDU0LDM3LjQ0Nyw1NCwzOHoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNNTQsNDFjMCwwLjU1MywwLjQ0OCwxLDEsMWgzdi0yaC0zQzU0LjQ0OCw0MCw1NCw0MC40NDcsNTQsNDF6Ii8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6IzVFNUU2MDsiIGQ9Ik01NSwxNmgzVjQuNDk5QzU4LDIuMDE0LDU1Ljk4NiwwLDUzLjUwMSwwSDQ2YzAsMi4yMDktMS43OTEsNC00LDRzLTQtMS43OTEtNC00SDQuNDk5ICBDMi4wMTQsMCwwLDIuMDE0LDAsNC40OTlWMTBoNHY0SDB2MzkuNTAxQzAsNTUuOTg2LDIuMDE0LDU4LDQuNDk5LDU4SDM4YzAtMi4yMDksMS43OTEtNCw0LTRzNCwxLjc5MSw0LDRoNy41MDEgIEM1NS45ODYsNTgsNTgsNTUuOTg2LDU4LDUzLjUwMVY0MmgtM2MtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgzdi0xaC0zYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDN2LTFoLTMgIGMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgzdi0xaC0zYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDN2LTFoLTNjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoM3YtMWgtMyAgYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDN2LTFoLTNjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoM3YtMWgtM2MtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgzdi0xaC0zICBjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFTNTQuNDQ4LDE2LDU1LDE2eiBNNCw1NWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1Miw1NSw0LDU1eiBNNCw1ICBDMy40NDgsNSwzLDQuNTUyLDMsNHMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1Miw1LDQsNXogTTU1LDU0YzAsMC41NTItMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xczAuNDQ4LTEsMS0xUzU1LDUzLjQ0OCw1NSw1NHogICBNNTMsNGMwLTAuNTUyLDAuNDQ4LTEsMS0xczEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMVM1Myw0LjU1Miw1Myw0eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojMzg0NTRGOyIgZD0iTTE1LDM5LjY0M1YxOC4zNTdDMTUsMTYuNTAzLDE2LjUwMywxNSwxOC4zNTcsMTVoMjEuMjg1QzQxLjQ5NywxNSw0MywxNi41MDMsNDMsMTguMzU3djIxLjI4NSAgQzQzLDQxLjQ5Nyw0MS40OTcsNDMsMzkuNjQzLDQzSDE4LjM1N0MxNi41MDMsNDMsMTUsNDEuNDk3LDE1LDM5LjY0M3oiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTExLDIySDhjLTAuNTUyLDAtMSwwLjQ0Ny0xLDFzMC40NDgsMSwxLDFoM2MwLjU1MiwwLDEtMC40NDcsMS0xUzExLjU1MiwyMiwxMSwyMnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNMTEsMzRIOGMtMC41NTIsMC0xLDAuNDQ3LTEsMXMwLjQ0OCwxLDEsMWgzYzAuNTUyLDAsMS0wLjQ0NywxLTFTMTEuNTUyLDM0LDExLDM0eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik0xMSwzMEg4Yy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDNjMC41NTIsMCwxLTAuNDQ3LDEtMVMxMS41NTIsMzAsMTEsMzB6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTExLDI2SDhjLTAuNTUyLDAtMSwwLjQ0Ny0xLDFzMC40NDgsMSwxLDFoM2MwLjU1MiwwLDEtMC40NDcsMS0xUzExLjU1MiwyNiwxMSwyNnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNNDcsMjRoM2MwLjU1MiwwLDEtMC40NDcsMS0xcy0wLjQ0OC0xLTEtMWgtM2MtMC41NTIsMC0xLDAuNDQ3LTEsMVM0Ni40NDgsMjQsNDcsMjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTUwLDM0aC0zYy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDNjMC41NTIsMCwxLTAuNDQ3LDEtMVM1MC41NTIsMzQsNTAsMzR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTUwLDMwaC0zYy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDNjMC41NTIsMCwxLTAuNDQ3LDEtMVM1MC41NTIsMzAsNTAsMzB6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTUwLDI2aC0zYy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDNjMC41NTIsMCwxLTAuNDQ3LDEtMVM1MC41NTIsMjYsNTAsMjZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTM1LDdjLTAuNTUyLDAtMSwwLjQ0Ny0xLDF2M2MwLDAuNTUzLDAuNDQ4LDEsMSwxczEtMC40NDcsMS0xVjhDMzYsNy40NDcsMzUuNTUyLDcsMzUsN3oiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNMjMsN2MtMC41NTIsMC0xLDAuNDQ3LTEsMXYzYzAsMC41NTMsMC40NDgsMSwxLDFzMS0wLjQ0NywxLTFWOEMyNCw3LjQ0NywyMy41NTIsNywyMyw3eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik0yNyw3Yy0wLjU1MiwwLTEsMC40NDctMSwxdjNjMCwwLjU1MywwLjQ0OCwxLDEsMXMxLTAuNDQ3LDEtMVY4QzI4LDcuNDQ3LDI3LjU1Miw3LDI3LDd6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTMxLDdjLTAuNTUyLDAtMSwwLjQ0Ny0xLDF2M2MwLDAuNTUzLDAuNDQ4LDEsMSwxczEtMC40NDcsMS0xVjhDMzIsNy40NDcsMzEuNTUyLDcsMzEsN3oiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNMzUsNDZjLTAuNTUyLDAtMSwwLjQ0Ny0xLDF2M2MwLDAuNTUzLDAuNDQ4LDEsMSwxczEtMC40NDcsMS0xdi0zQzM2LDQ2LjQ0NywzNS41NTIsNDYsMzUsNDZ6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRUNEMzYxOyIgZD0iTTIzLDQ2Yy0wLjU1MiwwLTEsMC40NDctMSwxdjNjMCwwLjU1MywwLjQ0OCwxLDEsMXMxLTAuNDQ3LDEtMXYtM0MyNCw0Ni40NDcsMjMuNTUyLDQ2LDIzLDQ2eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGQ9Ik0yNyw0NmMtMC41NTIsMC0xLDAuNDQ3LTEsMXYzYzAsMC41NTMsMC40NDgsMSwxLDFzMS0wLjQ0NywxLTF2LTNDMjgsNDYuNDQ3LDI3LjU1Miw0NiwyNyw0NnoiLz4KCTxwYXRoIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBkPSJNMzEsNDZjLTAuNTUyLDAtMSwwLjQ0Ny0xLDF2M2MwLDAuNTUzLDAuNDQ4LDEsMSwxczEtMC40NDcsMS0xdi0zQzMyLDQ2LjQ0NywzMS41NTIsNDYsMzEsNDZ6Ii8+CjwvZz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRUNEMzYxOyIgY3g9IjMiIGN5PSIzNiIgcj0iMSIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNFQ0QzNjE7IiBjeD0iMyIgY3k9IjQwIiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGN4PSIzIiBjeT0iNDQiIHI9IjEiLz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRUNEMzYxOyIgY3g9IjMiIGN5PSI0OCIgcj0iMSIvPgo8Zz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIzNyIgY3k9IjM4IiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMzMiIGN5PSIzOCIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjM1IiBjeT0iMzUiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyOSIgY3k9IjM4IiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjUiIGN5PSIzOCIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjMxIiBjeT0iMzUiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyNyIgY3k9IjM1IiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjEiIGN5PSIzOCIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjIzIiBjeT0iMzUiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIzNyIgY3k9IjMyIiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMzMiIGN5PSIzMiIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjM1IiBjeT0iMjkiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyOSIgY3k9IjMyIiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjUiIGN5PSIzMiIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjMxIiBjeT0iMjkiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyNyIgY3k9IjI5IiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjEiIGN5PSIzMiIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjIzIiBjeT0iMjkiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIzNyIgY3k9IjI2IiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMzMiIGN5PSIyNiIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjM1IiBjeT0iMjMiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyOSIgY3k9IjI2IiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjUiIGN5PSIyNiIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjMxIiBjeT0iMjMiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyNyIgY3k9IjIzIiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjEiIGN5PSIyNiIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjIzIiBjeT0iMjMiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIzNyIgY3k9IjIwIiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMzMiIGN5PSIyMCIgcj0iMSIvPgoJPGNpcmNsZSBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgY3g9IjI5IiBjeT0iMjAiIHI9IjEiLz4KCTxjaXJjbGUgc3R5bGU9ImZpbGw6IzU0NkE3OTsiIGN4PSIyNSIgY3k9IjIwIiByPSIxIi8+Cgk8Y2lyY2xlIHN0eWxlPSJmaWxsOiM1NDZBNzk7IiBjeD0iMjEiIGN5PSIyMCIgcj0iMSIvPgo8L2c+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGN4PSIxMCIgY3k9IjU1IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGN4PSIxNCIgY3k9IjU1IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGN4PSIxOCIgY3k9IjU1IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0VDRDM2MTsiIGN4PSIyMiIgY3k9IjU1IiByPSIxIi8+CjxyZWN0IHg9IjIxIiB5PSIxMSIgc3R5bGU9ImZpbGw6I0NCRDREODsiIHdpZHRoPSIxNiIgaGVpZ2h0PSI0Ii8+CjxyZWN0IHg9IjIxIiB5PSI0MyIgc3R5bGU9ImZpbGw6I0NCRDREODsiIHdpZHRoPSIxNiIgaGVpZ2h0PSI0Ii8+CjxyZWN0IHg9IjQzIiB5PSIyMSIgc3R5bGU9ImZpbGw6I0NCRDREODsiIHdpZHRoPSI0IiBoZWlnaHQ9IjE2Ii8+CjxyZWN0IHg9IjExIiB5PSIyMSIgc3R5bGU9ImZpbGw6I0NCRDREODsiIHdpZHRoPSI0IiBoZWlnaHQ9IjE2Ii8+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="motherboards">
                            <h4>Motherboards</h4>

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDU4IDU4IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1OCA1ODsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSI1MTJweCIgaGVpZ2h0PSI1MTJweCI+CjxwYXRoIHN0eWxlPSJmaWxsOiM1RTVFNjA7IiBkPSJNMCw2LjV2NGgzYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxSDB2MWgzYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxSDB2MWgzICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYyMGgzYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxSDB2MWgzYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxSDB2MWgzICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDNjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDNjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYyaDU4di00OEgweiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsMzkuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDQwLjUsNCw0MC4wNTMsNCwzOS41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsNDIuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDQzLjUsNCw0My4wNTMsNCw0Mi41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsNDUuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDQ2LjUsNCw0Ni4wNTMsNCw0NS41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsNDguNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDQ5LjUsNCw0OS4wNTMsNCw0OC41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsNTEuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDUyLjUsNCw1Mi4wNTMsNCw1MS41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsMTEuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDEyLjUsNCwxMi4wNTMsNCwxMS41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsMTQuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDE1LjUsNCwxNS4wNTMsNCwxNC41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTQsMTcuNWMwLTAuNTUzLTAuNDQ4LTEtMS0xSDB2MmgzQzMuNTUyLDE4LjUsNCwxOC4wNTMsNCwxNy41eiIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNFN0VDRUQ7IiBjeD0iMjciIGN5PSIyNC41IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0YzQ0M2RDsiIGN4PSIyNyIgY3k9IjI3LjUiIHI9IjEiLz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRjNDQzZEOyIgY3g9IjI3IiBjeT0iMzAuNSIgcj0iMSIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGM0NDNkQ7IiBjeD0iMjciIGN5PSIxNS41IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0U3RUNFRDsiIGN4PSIyNCIgY3k9IjE3LjUiIHI9IjEiLz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRTdFQ0VEOyIgY3g9IjI0IiBjeT0iMjEuNSIgcj0iMSIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGM0NDNkQ7IiBjeD0iNTUiIGN5PSIxNy41IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0YzQ0M2RDsiIGN4PSI1NSIgY3k9IjI0LjUiIHI9IjEiLz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRTdFQ0VEOyIgY3g9IjE4IiBjeT0iMzguNSIgcj0iMSIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNFN0VDRUQ7IiBjeD0iMTUiIGN5PSIzOC41IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0YzQ0M2RDsiIGN4PSIxMiIgY3k9IjM4LjUiIHI9IjEiLz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRjNDQzZEOyIgY3g9IjMiIGN5PSIyNi41IiByPSIxIi8+CjxjaXJjbGUgc3R5bGU9ImZpbGw6I0YzQ0M2RDsiIGN4PSIzIiBjeT0iMjkuNSIgcj0iMSIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNGM0NDNkQ7IiBjeD0iMyIgY3k9IjMyLjUiIHI9IjEiLz4KPGNpcmNsZSBzdHlsZT0iZmlsbDojRjNDQzZEOyIgY3g9IjI3IiBjeT0iMTguNSIgcj0iMSIvPgo8Y2lyY2xlIHN0eWxlPSJmaWxsOiNFN0VDRUQ7IiBjeD0iMjciIGN5PSIyMS41IiByPSIxIi8+CjxwYXRoIHN0eWxlPSJmaWxsOiMyODgxMkY7IiBkPSJNNTAuMjkxLDMwLjVIMzMuNzA5QzMyLjc2NSwzMC41LDMyLDI5LjczNSwzMiwyOC43OTFWMTIuMjA5YzAtMC45NDQsMC43NjUtMS43MDksMS43MDktMS43MDloMTYuNTgxICBjMC45NDQsMCwxLjcwOSwwLjc2NSwxLjcwOSwxLjcwOXYxNi41ODFDNTIsMjkuNzM1LDUxLjIzNSwzMC41LDUwLjI5MSwzMC41eiIvPgo8cmVjdCB4PSIzMiIgeT0iMy41IiBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgd2lkdGg9IjQiIGhlaWdodD0iMyIvPgo8cmVjdCB4PSIzNiIgeT0iMy41IiBzdHlsZT0iZmlsbDojMzg0NTRGOyIgd2lkdGg9IjQiIGhlaWdodD0iMyIvPgo8cmVjdCB4PSI0MCIgeT0iMy41IiBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgd2lkdGg9IjQiIGhlaWdodD0iMyIvPgo8cmVjdCB4PSI0NCIgeT0iMy41IiBzdHlsZT0iZmlsbDojMzg0NTRGOyIgd2lkdGg9IjQiIGhlaWdodD0iMyIvPgo8cmVjdCB4PSI0OCIgeT0iMy41IiBzdHlsZT0iZmlsbDojNTQ2QTc5OyIgd2lkdGg9IjQiIGhlaWdodD0iMyIvPgo8cGF0aCBzdHlsZT0iZmlsbDojQkZBMzgwOyIgZD0iTTU0LDM3LjVoLTJjLTAuNTUzLDAtMS0wLjQ0Ny0xLTFzMC40NDctMSwxLTFoMmMwLjU1MywwLDEsMC40NDcsMSwxUzU0LjU1MywzNy41LDU0LDM3LjV6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNCRkEzODA7IiBkPSJNNTQsNDEuNWgtMmMtMC41NTMsMC0xLTAuNDQ3LTEtMXMwLjQ0Ny0xLDEtMWgyYzAuNTUzLDAsMSwwLjQ0NywxLDFTNTQuNTUzLDQxLjUsNTQsNDEuNXoiLz4KPGc+Cgk8cGF0aCBzdHlsZT0iZmlsbDojOEY4Rjk5OyIgZD0iTTI0LDM3LjVoMmMwLjU1MiwwLDEtMC40NDcsMS0xcy0wLjQ0OC0xLTEtMWgtMmMtMC41NTIsMC0xLDAuNDQ3LTEsMVMyMy40NDgsMzcuNSwyNCwzNy41eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzhGOEY5OTsiIGQ9Ik0yNiwzOS41aC0yYy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDJjMC41NTIsMCwxLTAuNDQ3LDEtMVMyNi41NTIsMzkuNSwyNiwzOS41eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzhGOEY5OTsiIGQ9Ik0yNiw0My41aC0yYy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDJjMC41NTIsMCwxLTAuNDQ3LDEtMVMyNi41NTIsNDMuNSwyNiw0My41eiIvPgoJPHBhdGggc3R5bGU9ImZpbGw6IzhGOEY5OTsiIGQ9Ik0yNiw0Ny41aC0yYy0wLjU1MiwwLTEsMC40NDctMSwxczAuNDQ4LDEsMSwxaDJjMC41NTIsMCwxLTAuNDQ3LDEtMVMyNi41NTIsNDcuNSwyNiw0Ny41eiIvPgo8L2c+CjxwYXRoIHN0eWxlPSJmaWxsOiNCRkEzODA7IiBkPSJNNTQsNDUuNWgtMmMtMC41NTMsMC0xLTAuNDQ3LTEtMXMwLjQ0Ny0xLDEtMWgyYzAuNTUzLDAsMSwwLjQ0NywxLDFTNTQuNTUzLDQ1LjUsNTQsNDUuNXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0JGQTM4MDsiIGQ9Ik01NCw0OS41aC0yYy0wLjU1MywwLTEtMC40NDctMS0xczAuNDQ3LTEsMS0xaDJjMC41NTMsMCwxLDAuNDQ3LDEsMVM1NC41NTMsNDkuNSw1NCw0OS41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTIwLDQ1LjVoLTJjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMmMwLjU1MiwwLDEsMC40NDcsMSwxUzIwLjU1Miw0NS41LDIwLDQ1LjV6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiNGM0NDNkQ7IiBkPSJNMjAsNDguNWgtMmMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgyYzAuNTUyLDAsMSwwLjQ0NywxLDFTMjAuNTUyLDQ4LjUsMjAsNDguNXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0YzQ0M2RDsiIGQ9Ik0xMiw0NS41aC0yYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDJjMC41NTIsMCwxLDAuNDQ3LDEsMVMxMi41NTIsNDUuNSwxMiw0NS41eiIvPgo8cGF0aCBzdHlsZT0iZmlsbDojRjNDQzZEOyIgZD0iTTEyLDQ4LjVoLTJjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMmMwLjU1MiwwLDEsMC40NDcsMSwxUzEyLjU1Miw0OC41LDEyLDQ4LjV6Ii8+CjxwYXRoIHN0eWxlPSJmaWxsOiMzODQ1NEY7IiBkPSJNMTAsMjYuNWMtMC41NTIsMC0xLTAuNDQ3LTEtMXYtMmMwLTAuNTUzLDAuNDQ4LTEsMS0xczEsMC40NDcsMSwxdjJDMTEsMjYuMDUzLDEwLjU1MiwyNi41LDEwLDI2LjV6ICAiLz4KPHBhdGggc3R5bGU9ImZpbGw6IzM4NDU0RjsiIGQ9Ik0xOCwzMi41Yy0wLjU1MiwwLTEtMC40NDctMS0xdi0yYzAtMC41NTMsMC40NDgtMSwxLTFzMSwwLjQ0NywxLDF2MkMxOSwzMi4wNTMsMTguNTUyLDMyLjUsMTgsMzIuNXogICIvPgo8cmVjdCB4PSI3IiB5PSIyOS41IiBzdHlsZT0iZmlsbDojMzMzMzMxOyIgd2lkdGg9IjUiIGhlaWdodD0iNSIvPgo8cmVjdCB4PSIzNyIgeT0iMTUuNSIgc3R5bGU9ImZpbGw6IzMzMzMzMTsiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCIvPgo8Zz4KCTxyZWN0IHg9IjM4IiB5PSIxMi41IiBzdHlsZT0iZmlsbDojQkZBMzgwOyIgd2lkdGg9IjIiIGhlaWdodD0iMyIvPgoJPHJlY3QgeD0iNDEiIHk9IjEyLjUiIHN0eWxlPSJmaWxsOiNCRkEzODA7IiB3aWR0aD0iMiIgaGVpZ2h0PSIzIi8+Cgk8cmVjdCB4PSI0NCIgeT0iMTIuNSIgc3R5bGU9ImZpbGw6I0JGQTM4MDsiIHdpZHRoPSIyIiBoZWlnaHQ9IjMiLz4KCTxyZWN0IHg9IjM4IiB5PSIyNS41IiBzdHlsZT0iZmlsbDojQkZBMzgwOyIgd2lkdGg9IjIiIGhlaWdodD0iMyIvPgoJPHJlY3QgeD0iNDEiIHk9IjI1LjUiIHN0eWxlPSJmaWxsOiNCRkEzODA7IiB3aWR0aD0iMiIgaGVpZ2h0PSIzIi8+Cgk8cmVjdCB4PSI0NCIgeT0iMjUuNSIgc3R5bGU9ImZpbGw6I0JGQTM4MDsiIHdpZHRoPSIyIiBoZWlnaHQ9IjMiLz4KCTxyZWN0IHg9IjQ3IiB5PSIxNi41IiBzdHlsZT0iZmlsbDojQkZBMzgwOyIgd2lkdGg9IjMiIGhlaWdodD0iMiIvPgoJPHJlY3QgeD0iNDciIHk9IjE5LjUiIHN0eWxlPSJmaWxsOiNCRkEzODA7IiB3aWR0aD0iMyIgaGVpZ2h0PSIyIi8+Cgk8cmVjdCB4PSI0NyIgeT0iMjIuNSIgc3R5bGU9ImZpbGw6I0JGQTM4MDsiIHdpZHRoPSIzIiBoZWlnaHQ9IjIiLz4KCTxyZWN0IHg9IjM0IiB5PSIxNi41IiBzdHlsZT0iZmlsbDojQkZBMzgwOyIgd2lkdGg9IjMiIGhlaWdodD0iMiIvPgoJPHJlY3QgeD0iMzQiIHk9IjE5LjUiIHN0eWxlPSJmaWxsOiNCRkEzODA7IiB3aWR0aD0iMyIgaGVpZ2h0PSIyIi8+Cgk8cmVjdCB4PSIzNCIgeT0iMjIuNSIgc3R5bGU9ImZpbGw6I0JGQTM4MDsiIHdpZHRoPSIzIiBoZWlnaHQ9IjIiLz4KPC9nPgo8cmVjdCB4PSIxNiIgeT0iNi41IiBzdHlsZT0iZmlsbDojMzUzQTM3OyIgd2lkdGg9IjQiIGhlaWdodD0iMjMiLz4KPHJlY3QgeD0iOCIgeT0iNi41IiBzdHlsZT0iZmlsbDojMzUzQTM3OyIgd2lkdGg9IjQiIGhlaWdodD0iMTciLz4KPHJlY3QgeD0iMTIiIHk9IjQyLjUiIHN0eWxlPSJmaWxsOiMzMzMzMzE7IiB3aWR0aD0iNiIgaGVpZ2h0PSI3Ii8+CjxyZWN0IHg9IjI2IiB5PSI0Mi41IiBzdHlsZT0iZmlsbDojMzg0NTRGOyIgd2lkdGg9IjI2IiBoZWlnaHQ9IjQiLz4KPHJlY3QgeD0iMjYiIHk9IjM4LjUiIHN0eWxlPSJmaWxsOiNERDM1MkU7IiB3aWR0aD0iMjYiIGhlaWdodD0iNCIvPgo8cmVjdCB4PSIyNiIgeT0iNDYuNSIgc3R5bGU9ImZpbGw6I0REMzUyRTsiIHdpZHRoPSIyIiBoZWlnaHQ9IjQiLz4KPHJlY3QgeD0iMzAiIHk9IjQ2LjUiIHN0eWxlPSJmaWxsOiNERDM1MkU7IiB3aWR0aD0iMTgiIGhlaWdodD0iNCIvPgo8cmVjdCB4PSI1MCIgeT0iNDYuNSIgc3R5bGU9ImZpbGw6I0REMzUyRTsiIHdpZHRoPSIyIiBoZWlnaHQ9IjQiLz4KPHJlY3QgeD0iMzAiIHk9IjM0LjUiIHN0eWxlPSJmaWxsOiMzODQ1NEY7IiB3aWR0aD0iMTgiIGhlaWdodD0iNCIvPgo8cmVjdCB4PSI1MCIgeT0iMzQuNSIgc3R5bGU9ImZpbGw6IzM4NDU0RjsiIHdpZHRoPSIyIiBoZWlnaHQ9IjQiLz4KPHJlY3QgeD0iMjYiIHk9IjM0LjUiIHN0eWxlPSJmaWxsOiMzODQ1NEY7IiB3aWR0aD0iMiIgaGVpZ2h0PSI0Ii8+CjxnPgoJPHBvbHlnb24gc3R5bGU9ImZpbGw6IzI4MzIzODsiIHBvaW50cz0iMjgsMzguNSAyOCw0Ni41IDI4LDUwLjUgMzAsNTAuNSAzMCw0Ni41IDMwLDM4LjUgMzAsMzQuNSAyOCwzNC41ICAiLz4KCTxwb2x5Z29uIHN0eWxlPSJmaWxsOiMyODMyMzg7IiBwb2ludHM9IjQ4LDM0LjUgNDgsMzguNSA0OCw0Ni41IDQ4LDUwLjUgNTAsNTAuNSA1MCw0Ni41IDUwLDM4LjUgNTAsMzQuNSAgIi8+CjwvZz4KPHBhdGggc3R5bGU9ImZpbGw6I0NCRDREODsiIGQ9Ik0yNyw0LjVjMC0wLjU1My0wLjQ0OC0xLTEtMXMtMSwwLjQ0Ny0xLDF2MmgyVjQuNXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0NCRDREODsiIGQ9Ik0zMCw0LjVjMC0wLjU1My0wLjQ0OC0xLTEtMXMtMSwwLjQ0Ny0xLDF2MmgyVjQuNXoiLz4KPHBhdGggc3R5bGU9ImZpbGw6I0NCRDREODsiIGQ9Ik01Niw0LjVjMC0wLjU1My0wLjQ0Ny0xLTEtMXMtMSwwLjQ0Ny0xLDF2MmgyVjQuNXoiLz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="power-units">
                            <h4>Power Units</h4>

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA0OTAgNDkwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA0OTAgNDkwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPGc+Cgk8ZyBpZD0iWE1MSURfNThfIj4KCQk8Zz4KCQkJPGc+CgkJCQk8cGF0aCBzdHlsZT0iZmlsbDojRTdFQ0VEOyIgZD0iTTM3MCwzNzB2MTAwYzAsNS41LTQuNSwxMC0xMCwxMEgxMzBjLTUuNSwwLTEwLTQuNS0xMC0xMFYzNzBWMjAwdi04MGMwLTUuNSw0LjUtMTAsMTAtMTBoMzVoMTYwICAgICAgaDM1YzUuNSwwLDEwLDQuNSwxMCwxMHY4MFYzNzB6Ii8+CgkJCQk8cG9seWdvbiBzdHlsZT0iZmlsbDojQUZCNkJCOyIgcG9pbnRzPSIzMjUsNjAgMzI1LDExMCAxNjUsMTEwIDE2NSw2MCAyMDAsNjAgMjkwLDYwICAgICAiLz4KCQkJCTxyZWN0IHg9IjIwMCIgeT0iMTAiIHN0eWxlPSJmaWxsOiNBM0E5QUU7IiB3aWR0aD0iOTAiIGhlaWdodD0iNTAiLz4KCQkJCTxyZWN0IHg9IjEyMCIgeT0iMjAwIiBzdHlsZT0iZmlsbDojNDNCMDVDOyIgd2lkdGg9IjI1MCIgaGVpZ2h0PSIxNzAiLz4KCQkJPC9nPgoJCQk8ZyBpZD0iWE1MSURfNjVfIj4KCQkJCTxwb2x5Z29uIHN0eWxlPSJmaWxsOiNGRkQyNDg7IiBwb2ludHM9IjMxNSwyNjAgMjUwLDI2MCAyNTAsMTkwIDE4NSwyOTUgMjQ1LDI5NSAyMzAsNDAwICAgICAiLz4KCQkJCTxnPgoJCQkJCTxnPgoJCQkJCQk8cGF0aCBzdHlsZT0iZmlsbDojMjMxRjIwOyIgZD0iTTIyOS45OTgsNDEwLjAwMWMtMS4xMjQsMC0yLjI2Mi0wLjE5LTMuMzY4LTAuNTg2Yy00LjQ3My0xLjYwMi03LjIwMS02LjEyNy02LjUyOS0xMC44MjkgICAgICAgIEwyMzMuNDcsMzA1SDE4NWMtMy42MjgsMC02Ljk3MS0xLjk2NS04LjczNi01LjEzNHMtMS42NzYtNy4wNDUsMC4yMzMtMTAuMTNsNjUtMTA1YzIuMzUyLTMuODAxLDYuOTM5LTUuNTgsMTEuMjM5LTQuMzU0ICAgICAgICBjNC4yOTksMS4yMjMsNy4yNjQsNS4xNDksNy4yNjQsOS42MTh2NjBoNTVjMy42MTIsMCw2Ljk0MywxLjk0OCw4LjcxNSw1LjA5NmMxLjc3MSwzLjE0OCwxLjcwOCw3LjAwNy0wLjE2NywxMC4wOTRsLTg1LDE0MCAgICAgICAgQzIzNi42OTMsNDA4LjI0NSwyMzMuNDEzLDQxMC4wMDEsMjI5Ljk5OCw0MTAuMDAxeiBNMjAyLjk1MSwyODVIMjQ1YzIuODk4LDAsNS42NTUsMS4yNTgsNy41NTUsMy40NDggICAgICAgIGMxLjg5OSwyLjE4OSwyLjc1NSw1LjA5NywyLjM0NSw3Ljk2NmwtOC4wOSw1Ni42MzFMMjk3LjIyOSwyNzBIMjUwYy01LjUyMywwLTEwLTQuNDc4LTEwLTEwdi0zNC44NDhMMjAyLjk1MSwyODV6Ii8+CgkJCQkJPC9nPgoJCQkJPC9nPgoJCQk8L2c+CgkJCTxnPgoJCQkJPHJlY3QgeD0iMTQ1IiB5PSIxMzUiIHN0eWxlPSJmaWxsOiMyMzFGMjA7IiB3aWR0aD0iMjAiIGhlaWdodD0iMjAiLz4KCQkJPC9nPgoJCQk8Zz4KCQkJCTxyZWN0IHg9IjMyNSIgeT0iMTM1IiBzdHlsZT0iZmlsbDojMjMxRjIwOyIgd2lkdGg9IjIwIiBoZWlnaHQ9IjIwIi8+CgkJCTwvZz4KCQkJPGc+CgkJCQk8cmVjdCB4PSIxNDUiIHk9IjQzNSIgc3R5bGU9ImZpbGw6IzIzMUYyMDsiIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIvPgoJCQk8L2c+CgkJCTxnPgoJCQkJPHJlY3QgeD0iMzI1IiB5PSI0MzUiIHN0eWxlPSJmaWxsOiMyMzFGMjA7IiB3aWR0aD0iMjAiIGhlaWdodD0iMjAiLz4KCQkJPC9nPgoJCQk8cGF0aCBzdHlsZT0iZmlsbDojMjMxRjIwOyIgZD0iTTM2MCwxMDBoLTI1VjYwYzAtNS41MjItNC40NzgtMTAtMTAtMTBoLTI1VjEwYzAtNS41MjMtNC40NzgtMTAtMTAtMTBoLTkwICAgICBjLTUuNTIzLDAtMTAsNC40NzctMTAsMTB2NDBoLTI1Yy01LjUyMywwLTEwLDQuNDc4LTEwLDEwdjQwaC0yNWMtMTEuMDI4LDAtMjAsOC45NzItMjAsMjB2MzUwYzAsMTEuMDI4LDguOTcyLDIwLDIwLDIwaDIzMCAgICAgYzExLjAyOCwwLDIwLTguOTcyLDIwLTIwVjEyMEMzODAsMTA4Ljk3MiwzNzEuMDI4LDEwMCwzNjAsMTAweiBNMjgwLDIwdjMwaC03MFYyMEgyODB6IE0xNzUsNzBoMTQwdjMwSDE3NVY3MHogTTEzMCw0NzB2LTkwaDY1ICAgICB2LTIwaC02NVYyMTBoNjV2LTIwaC02NXYtNzBoMjMwdjcwaC02NXYyMGg2NXYxNTBoLTY1djIwaDY1djkwSDEzMHoiLz4KCQk8L2c+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="graphic-cards">
                            <h4>Graphic Cards</h4>

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYwIDYwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2MCA2MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIyNTZweCIgaGVpZ2h0PSIyNTZweCI+CjxnPgoJPHBhdGggZD0iTTQ1LjU2MywyOS4xNzRsLTIyLTE1Yy0wLjMwNy0wLjIwOC0wLjcwMy0wLjIzMS0xLjAzMS0wLjA1OEMyMi4yMDUsMTQuMjg5LDIyLDE0LjYyOSwyMiwxNXYzMCAgIGMwLDAuMzcxLDAuMjA1LDAuNzExLDAuNTMzLDAuODg0QzIyLjY3OSw0NS45NjIsMjIuODQsNDYsMjMsNDZjMC4xOTcsMCwwLjM5NC0wLjA1OSwwLjU2My0wLjE3NGwyMi0xNSAgIEM0NS44MzYsMzAuNjQsNDYsMzAuMzMxLDQ2LDMwUzQ1LjgzNiwyOS4zNiw0NS41NjMsMjkuMTc0eiBNMjQsNDMuMTA3VjE2Ljg5M0w0My4yMjUsMzBMMjQsNDMuMTA3eiIgZmlsbD0iIzQzYjA1YyIvPgoJPHBhdGggZD0iTTMwLDBDMTMuNDU4LDAsMCwxMy40NTgsMCwzMHMxMy40NTgsMzAsMzAsMzBzMzAtMTMuNDU4LDMwLTMwUzQ2LjU0MiwwLDMwLDB6IE0zMCw1OEMxNC41NjEsNTgsMiw0NS40MzksMiwzMCAgIFMxNC41NjEsMiwzMCwyczI4LDEyLjU2MSwyOCwyOFM0NS40MzksNTgsMzAsNTh6IiBmaWxsPSIjNDNiMDVjIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==" class="img-center-nowidth" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="hard-drives">
                            <h4>HDD</h4>

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUwMi42NjQgNTAyLjY2NCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTAyLjY2NCA1MDIuNjY0OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjI1NnB4IiBoZWlnaHQ9IjI1NnB4Ij4KPGc+Cgk8Zz4KCQk8Zz4KCQkJPHBhdGggZD0iTTcwLjM2NCwwdjUwMi42NjRINDMyLjNWMEg3MC4zNjR6IE0yNDMuOTY2LDQ1Ny43MzJIMTA5LjUzNlYzMTYuMTg1bDQ2Ljk4MSw0My41MyAgICAgYy0xNS41MDksNi43OTUtMjYuMzgxLDIyLjIzOS0yNi4zODEsNDAuMjUxYzAsMjQuMjAyLDE5LjY3Myw0My44OTcsNDMuOTQsNDMuODk3czQzLjkxOC0xOS42NzMsNDMuOTE4LTQzLjg5NyAgICAgYzAtMS4yMDgtMC4yNTktMi4zMy0wLjM2Ny0zLjUzOGMwLjA0My0wLjA0MywwLjA4Ni0wLjA2NSwwLjEyOS0wLjEwOGwyNi4yMDgsMC40NTMgICAgIEMyNDMuOTY2LDM5Ni43NzMsMjQzLjk2Niw0NTcuNzMyLDI0My45NjYsNDU3LjczMnogTTE5OC41MzcsMzk2LjU1N2MwLjA4NiwxLjE2NSwwLjYyNiwyLjIyMiwwLjYyNiwzLjQwOCAgICAgYzAsMTMuODQ4LTExLjIzOCwyNS4wNjUtMjUuMDg3LDI1LjA2NWMtMTMuODkyLDAtMjUuMTMtMTEuMjM4LTI1LjEzLTI1LjA2NWMwLTEzLjkzNSwxMS4yMzgtMjUuMTMsMjUuMTMtMjUuMTMgICAgIGMyLjI0MywwLDQuMjI4LDAuNzMzLDYuMzIsMS4yNzNjMzkuNzU1LTMwLjQxNSwxMTQuNzc4LTg2LjUyLDExNi4yNjctODQuOTAzQzI5Ny45MzYsMjkyLjY3MiwyMzMuMjIzLDM2MC43MjgsMTk4LjUzNywzOTYuNTU3eiAgICAgIE0yNzIuODcsMzM5LjMwOGM0Ny43NzktNTIuMjAxLDQyLjY0NS01OC4zOTIsMzkuMjM3LTYyLjE0NWMtOC40OTktOS40MDUtOC40OTktOS40MDUtODYuMDg5LDQ4LjU3N2wtMTMuMzMxLDEwLjE4MSAgICAgYy02My42NzctMTYuOTk4LTExMC43MjMtNzQuOTE1LTExMC43MjMtMTQzLjk4NWMwLTgyLjQyMiw2Ni44MjYtMTQ5LjI0OCwxNDkuMTYyLTE0OS4yNDggICAgIGM4Mi40NjUsMCwxNDkuMjI3LDY2Ljg0OCwxNDkuMjI3LDE0OS4yNDhDNDAwLjM1NCwyNjYuODk1LDM0NS4wMDMsMzI4Ljc4MiwyNzIuODcsMzM5LjMwOHoiIGZpbGw9IiNGRkZGRkYiLz4KCQkJPHBhdGggZD0iTTI1MS4xMjcsMTQ3LjU0NGMtMjQuNDYxLDAtNDQuMzI4LDE5LjkxLTQ0LjMyOCw0NC4zOTNjMCwyNC41MDQsMTkuODg4LDQ0LjMwNiw0NC4zMjgsNDQuMzA2ICAgICBjMjQuNTkxLDAsNDQuMzkzLTE5LjgyNCw0NC4zOTMtNDQuMzA2QzI5NS40OTgsMTY3LjQ3NiwyNzUuNjUzLDE0Ny41NjYsMjUxLjEyNywxNDcuNTQ0eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTwvZz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KCTxnPgoJPC9nPgoJPGc+Cgk8L2c+Cgk8Zz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="ssds">
                            <h4>SSD</h4>

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0ZWQgYnkgSWNvTW9vbi5pbyAtLT4KPCFET0NUWVBFIHN2ZyBQVUJMSUMgIi0vL1czQy8vRFREIFNWRyAxLjEvL0VOIiAiaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkIj4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIHdpZHRoPSIyNTZweCIgaGVpZ2h0PSIyNTZweCIgdmlld0JveD0iMCAwIDE2IDE2Ij4KPHBhdGggZmlsbD0iI2VkYzM2MSIgZD0iTTIgMTJoMXYxaC0xdi0xeiIvPgo8cGF0aCBmaWxsPSIjZWRjMzYxIiBkPSJNNCAxMmgzdjFoLTN2LTF6Ii8+CjxwYXRoIGZpbGw9IiNlZGMzNjEiIGQ9Ik0xMyAxaC0xMGwtMyA5djVoMTZ2LTVsLTMtOXpNMy43IDJoOC42bDIuNyA4aC0xMy45bDIuNi04ek0xIDE0di0zaDE0djNoLTE0eiIvPgo8L3N2Zz4K" class="img-center-nowidth" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(".hovereffect").mouseover(function () {
            $(this).find("h4").css("visibility", "hidden");
        });
        $(".hovereffect").mouseout(function () {
            $(this).find("h4").css("visibility", "visible");
        });

    </script>
</asp:Content>
