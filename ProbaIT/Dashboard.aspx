<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ProbaIT.Dashboard" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *{
            font-family: 'Open Sans','Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
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
            background-color: rgba(0, 0, 0, 0.7);
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
                background-image: url('Styles/img/background2.jpg');
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
            cursor: pointer;

        }

        .hovereffect img {
            display: block;
            position: relative;
            -webkit-transition: all 0.2s ease-in;
            transition: all 0.2s ease-in;
             cursor: pointer;
        }

        .hovereffect h3 {
            text-transform: uppercase;
            color: #fff;
            text-align: center;
            position: relative;
            font-size: 17px;
            padding: 0;
            background: rgba(0, 0, 0, 0.6);
             cursor: pointer;
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
                 cursor: pointer;
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
             cursor: pointer;
        }

        .hovereffect:hover h3 {
            -webkit-transform: translateY(0px);
            -ms-transform: translateY(0px);
            transform: translateY(0px);
            -webkit-transition-delay: 0.5s;
            transition-delay: 0.5s;
             cursor: pointer;
        }

            .hovereffect:hover h3.info {
                -webkit-transform: translateY(0px);
                -ms-transform: translateY(0px);
                transform: translateY(0px);
                -webkit-transition-delay: 0.3s;
                transition-delay: 0.3s;
                 cursor: pointer;
            }
    </style>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-9 col-lg-10 backImgDashboard" style="height: 100vh; padding-top: ">
        <div class="row" style="margin: 0 auto; width: 78.2%;">
          <div class="col-md-12" >
            <div class="box">
                <img  width="150" height="150" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDMyMCAzMjAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDMyMCAzMjA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMjU2cHgiIGhlaWdodD0iMjU2cHgiPgo8Zz4KCTxwYXRoIGQ9Ik0yOTIuNjk3LDE5Ljk5NUgyNy4zMDNDMTIuMjIzLDE5Ljk5NSwwLDMyLjIxOSwwLDQ3LjI5OXYxNjMuODIyYzAsMTUuMDc5LDEyLjIyMywyNy4zMDQsMjcuMzAzLDI3LjMwNEgxMzMuNzl2MjQuNyAgIGgtMjEuNTQ0Yy0xMC4xODUsMC0xOC40MzksOC4yNTUtMTguNDM5LDE4LjQ0YzAsMTAuMTg0LDguMjU1LDE4LjQ0LDE4LjQzOSwxOC40NGg5NS41MDhjMTAuMTg2LDAsMTguNDQtOC4yNTYsMTguNDQtMTguNDQgICBjMC0xMC4xODUtOC4yNTQtMTguNDQtMTguNDQtMTguNDRIMTg2LjIxdi0yNC43aDEwNi40ODdjMTUuMDgsMCwyNy4zMDMtMTIuMjI1LDI3LjMwMy0yNy4zMDRWNDcuMjk5ICAgQzMyMCwzMi4yMTksMzA3Ljc3NywxOS45OTUsMjkyLjY5NywxOS45OTV6IE0zMi4xODEsMTc5Ljk2YzAtMTQuNCwxMS43MTUtMjYuMTE2LDI2LjExNS0yNi4xMTYgICBjMTQuNDAxLDAsMjYuMTE1LDExLjcxNiwyNi4xMTUsMjYuMTE2YzAsMTQuNC0xMS43MTMsMjYuMTE2LTI2LjExNSwyNi4xMTZDNDMuODk2LDIwNi4wNzYsMzIuMTgxLDE5NC4zNiwzMi4xODEsMTc5Ljk2eiAgICBNMjg4LjMyOCwyMDYuNzUySDEyNy41NzljMC43MzQtMS44NzQsMC4yNS00LjA0LTEuMjkyLTUuNDA5bC0xMC40NzktOS4zMDhjMC44MTctMy44OTgsMS4yNTEtNy45MzgsMS4yNTEtMTIuMDc1ICAgYzAtNC4xNDItMC40MzQtOC4xODItMS4yNTMtMTIuMDg1bDEwLjQ3OC05LjMwNWMxLjcyNy0xLjUzNSwyLjEzOC00LjA3MSwwLjk4My02LjA3MmwtMTAuNzA2LTE4LjU0NCAgIGMtMS4xNTQtMi4wMDItMy41NTktMi45MTItNS43NS0yLjE4NGwtMTMuMzM4LDQuNDM0Yy01Ljk4Ni01LjM2Ni0xMy4wNzctOS41MjMtMjAuODg0LTEyLjA4NmwtMi44MjEtMTMuNzMgICBjLTAuNDY1LTIuMjYzLTIuNDU4LTMuODg3LTQuNzY5LTMuODg3SDQ3LjU4NmMtMi4zMTEsMC00LjMwMSwxLjYyNC00Ljc2OCwzLjg4N2wtMi44MiwxMy43MzMgICBjLTIuODgyLDAuOTQ3LTUuNjU5LDIuMTIzLTguMzI2LDMuNDg0VjUxLjY2N2gyNTYuNjU1VjIwNi43NTJ6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMTQzLjg3MywxMjcuNzc4Yy0xLjI5Mi0wLjQzLTIuNzA4LDAuMTA5LTMuMzg5LDEuMjg4bC02LjMxMiwxMC45MzFjLTAuNjc5LDEuMTc4LTAuNDM4LDIuNjc0LDAuNTc5LDMuNTc4bDYuMTc3LDUuNDg2ICAgYy0wLjQ4MiwyLjI5Ny0wLjczNyw0LjY3Ny0wLjczNyw3LjExNmMwLDIuNDQxLDAuMjU2LDQuODIzLDAuNzM5LDcuMTIzbC02LjE3Niw1LjQ4NGMtMS4wMTgsMC45MDQtMS4yNiwyLjQtMC41OCwzLjU3OSAgIGw2LjMxMSwxMC45M2MwLjY4MSwxLjE3OSwyLjA5NiwxLjcxNywzLjM4OCwxLjI4N2w3Ljg2MS0yLjYxM2MzLjUyOSwzLjE2Myw3LjcwOCw1LjYxMiwxMi4zMSw3LjEyNGwxLjY2Myw4LjA5MyAgIGMwLjI3NSwxLjMzMiwxLjQ0OSwyLjI4OSwyLjgxMSwyLjI4OWgxMi42MmMxLjM2MiwwLjAwMSwyLjUzNS0wLjk1NywyLjgxLTIuMjg5bDEuNjYzLTguMDk1YzQuNjAyLTEuNTEyLDguNzgtMy45NjMsMTIuMzA5LTcuMTI2ICAgbDcuODU5LDIuNjEzYzEuMjkyLDAuNDI4LDIuNzA3LTAuMTA5LDMuMzg5LTEuMjg4bDYuMzExLTEwLjkzYzAuNjc5LTEuMTc5LDAuNDM4LTIuNjc0LTAuNTgtMy41NzlsLTYuMTc3LTUuNDg2ICAgYzAuNDgyLTIuMjk4LDAuNzM4LTQuNjc5LDAuNzM4LTcuMTE3YzAtMi40NDEtMC4yNTUtNC44MjMtMC43MzktNy4xMjJsNi4xNzUtNS40ODRjMS4wMTgtMC45MDUsMS4yNi0yLjQsMC41NzktMy41OGwtNi4zMS0xMC45MjkgICBjLTAuNjgxLTEuMTgxLTIuMDk4LTEuNzE3LTMuMzg5LTEuMjg3bC03Ljg2MSwyLjYxM2MtMy41MjktMy4xNjMtNy43MDktNS42MTItMTIuMzExLTcuMTIzbC0xLjY2My04LjA5MyAgIGMtMC4yNzMtMS4zMzMtMS40NDgtMi4yOTEtMi44MDktMi4yOTFoLTEyLjYyMWMtMS4zNjIsMC0yLjUzNSwwLjk1OC0yLjgxLDIuMjkxbC0xLjY2Myw4LjA5NSAgIGMtNC42MDIsMS41MTEtOC43ODEsMy45NjMtMTIuMzA5LDcuMTI2TDE0My44NzMsMTI3Ljc3OHogTTE3NC44MjcsMTQwLjc4NWM4LjQ4NywwLDE1LjM5Miw2LjkwNSwxNS4zOTIsMTUuMzkzICAgYzAsOC40ODgtNi45MDUsMTUuMzk0LTE1LjM5MiwxNS4zOTRjLTguNDg3LDAtMTUuMzk0LTYuOTA1LTE1LjM5NC0xNS4zOTRDMTU5LjQzNCwxNDcuNjksMTY2LjM0LDE0MC43ODUsMTc0LjgyNywxNDAuNzg1eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHBhdGggZD0iTTEwNC42ODgsOTEuOTM4Yy0wLjMzLDEuNTc1LTAuNTA1LDMuMjA2LTAuNTA1LDQuODc4YzAsMS42NzMsMC4xNzUsMy4zMDYsMC41MDYsNC44ODJsLTQuMjMyLDMuNzU4ICAgYy0wLjY5NywwLjYyMS0wLjg2MywxLjY0NS0wLjM5NiwyLjQ1M2w0LjMyNiw3LjQ5MmMwLjQ2NiwwLjgwOCwxLjQzNywxLjE3NywyLjMyMiwwLjg4Mmw1LjM4OC0xLjc5MiAgIGMyLjQxOCwyLjE2OCw1LjI4MywzLjg0OCw4LjQzNiw0Ljg4NGwxLjE0LDUuNTQ2YzAuMTg4LDAuOTEzLDAuOTk0LDEuNTY5LDEuOTI1LDEuNTY5aDguNjUxYzAuOTMzLDAuMDAxLDEuNzM3LTAuNjU2LDEuOTI1LTEuNTY5ICAgbDEuMTQxLTUuNTQ4YzMuMTUyLTEuMDM1LDYuMDE3LTIuNzE2LDguNDM2LTQuODg0bDUuMzg3LDEuNzkyYzAuODg1LDAuMjk0LDEuODU2LTAuMDc1LDIuMzIyLTAuODgzbDQuMzI2LTcuNDkxICAgYzAuNDY1LTAuODA4LDAuMjk5LTEuODMzLTAuMzk3LTIuNDUzbC00LjIzMy0zLjc2YzAuMzMtMS41NzQsMC41MDUtMy4yMDYsMC41MDUtNC44NzhjMC0xLjY3NC0wLjE3NS0zLjMwNi0wLjUwNi00Ljg4MiAgIGw0LjIzMi0zLjc1OWMwLjY5Ni0wLjYyLDAuODY0LTEuNjQ1LDAuMzk4LTIuNDUzbC00LjMyNi03LjQ5MWMtMC40NjctMC44MDktMS40MzctMS4xNzctMi4zMjItMC44ODNsLTUuMzg4LDEuNzkxICAgYy0yLjQxOS0yLjE2OC01LjI4My0zLjg0Ny04LjQzNy00Ljg4M2wtMS4xNC01LjU0N2MtMC4xODgtMC45MTQtMC45OTMtMS41Ny0xLjkyNS0xLjU3aC04LjY1Yy0wLjkzNCwwLTEuNzM4LDAuNjU2LTEuOTI2LDEuNTcgICBsLTEuMTQsNS41NDljLTMuMTU0LDEuMDM2LTYuMDE4LDIuNzE1LTguNDM1LDQuODgzbC01LjM4OC0xLjc5MmMtMC44ODUtMC4yOTMtMS44NTYsMC4wNzUtMi4zMjIsMC44ODNsLTQuMzI1LDcuNDkxICAgYy0wLjQ2NywwLjgwOC0wLjMsMS44MzMsMC4zOTYsMi40NTJMMTA0LjY4OCw5MS45Mzh6IE0xMjcuOTIyLDg2LjI2NWM1LjgxNiwwLDEwLjU0OSw0LjczMiwxMC41NDksMTAuNTUgICBjMCw1LjgxOC00LjczMiwxMC41NDktMTAuNTQ5LDEwLjU0OXMtMTAuNTUtNC43MzEtMTAuNTUtMTAuNTQ5QzExNy4zNzIsOTAuOTk4LDEyMi4xMDUsODYuMjY1LDEyNy45MjIsODYuMjY1eiIgZmlsbD0iI0ZGRkZGRiIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" class="img-center-nowidth" />
            <h4 class="text-center">CHOOSE THE COMPONENTS THAT YOU WANT BY CLICKING THE BOXES BELOW</h4>
            <div class="row">
                <div class="col-md-12" id="control-container">
                    <div class="col-md-4">
                        <div class="box hovereffect">
                           
                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTguMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDE4MCAxODAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDE4MCAxODA7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTI4cHgiIGhlaWdodD0iMTI4cHgiPgo8cGF0aCBkPSJNMTgwLDE2OS41MzFWMTAuNDY5Yy0yLjkzMSwxLjYxNS02LjY4NiwxLjE4Ny05LjE3MS0xLjI5OGMtMi40ODUtMi40ODUtMi45MTQtNi4yNC0xLjI5OC05LjE3MUgzMS45MDV2Mi42NCAgYzAsMi4zNDQtMS44OTksNC4yNDMtNC4yNDMsNC4yNDNjLTIuMzQzLDAtNC4yNDItMS44OTktNC4yNDItNC4yNDNWMEgxMC40NjljMS42MTYsMi45MzEsMS4xODgsNi42ODYtMS4yOTgsOS4xNzEgIEM2LjY4NSwxMS42NTUsMi45MzEsMTIuMDg0LDAsMTAuNDY5djE1OS4wNjNjMi45MzEtMS42MTUsNi42ODUtMS4xODcsOS4xNzEsMS4yOThjMi40ODUsMi40ODUsMi45MTMsNi4yNCwxLjI5OCw5LjE3MUgyMy40MnYtMi42NCAgYzAtMi4zNDQsMS44OTktNC4yNDMsNC4yNDItNC4yNDNjMi4zNDQsMCw0LjI0MywxLjg5OSw0LjI0Myw0LjI0M1YxODBoMTM3LjYyNmMtMS42MTYtMi45MzEtMS4xODgtNi42ODYsMS4yOTgtOS4xNzEgIEMxNzMuMzE0LDE2OC4zNDUsMTc3LjA2OSwxNjcuOTE2LDE4MCwxNjkuNTMxeiBNMTU3Ljk0OCwxMzYuMjk1YzAsMTEuOTM5LTkuNzE0LDIxLjY1My0yMS42NTMsMjEuNjUzaC0yMi4zOTggIGMtMy4wOTksMC01LjYxLTIuNTEyLTUuNjEtNS42MWMwLTMuMDk5LDIuNTEyLTUuNjEsNS42MS01LjYxaDIyLjM5OGM1Ljc1MywwLDEwLjQzMy00LjY4LDEwLjQzMy0xMC40MzN2LTkyLjU5ICBjMC01Ljc1My00LjY4LTEwLjQzMy0xMC40MzMtMTAuNDMzSDQzLjcwM2MtNS43NTEsMC0xMC40MzEsNC42OC0xMC40MzEsMTAuNDMzdjkyLjU5YzAsNS43NTMsNC42NzksMTAuNDMzLDEwLjQzMSwxMC40MzNoMjIuNCAgYzMuMDk5LDAsNS42MSwyLjUxMiw1LjYxLDUuNjFjMCwzLjA5OS0yLjUxMiw1LjYxLTUuNjEsNS42MWgtMjIuNGMtMTEuOTM4LDAtMjEuNjUxLTkuNzE0LTIxLjY1MS0yMS42NTN2LTkyLjU5ICBjMC0xMS45NCw5LjcxMy0yMS42NTMsMjEuNjUxLTIxLjY1M2g5Mi41OTJjMTEuOTM5LDAsMjEuNjUzLDkuNzE0LDIxLjY1MywyMS42NTNWMTM2LjI5NXogTTUyLjUyMSwxMzQuMTU2ICBjLTMuNjgxLDAtNi42NzgtMi45OTQtNi42NzgtNi42ODFWNTIuNTI0YzAtMy42ODcsMi45OTctNi42ODEsNi42NzgtNi42ODFoNzQuOTU0YzMuNjg3LDAsNi42ODEsMi45OTQsNi42ODEsNi42ODF2NzQuOTUxICBjMCwzLjY4Ni0yLjk5NCw2LjY4MS02LjY4MSw2LjY4MUg1Mi41MjF6IE03Ni4zMTYsNzguNjI0djQuMjM5aC02LjQ4MnYtNC42NzZjMC0zLjExNi0xLjM3MS00LjMwMi0zLjU1NC00LjMwMiAgYy0yLjE4MSwwLTMuNTU0LDEuMTg2LTMuNTU0LDQuMzAydjIzLjU2M2MwLDMuMTE1LDEuMzczLDQuMjM3LDMuNTU0LDQuMjM3YzIuMTgzLDAsMy41NTQtMS4xMjIsMy41NTQtNC4yMzd2LTYuMjMzaDYuNDgydjUuNzk1ICBjMCw2Ljk4My0zLjQ5LDEwLjk3My0xMC4yMjMsMTAuOTczYy02LjczMywwLTEwLjIyMy0zLjk4OS0xMC4yMjMtMTAuOTczVjc4LjYyNGMwLTYuOTgyLDMuNDktMTAuOTcyLDEwLjIyMy0xMC45NzIgIEM3Mi44MjYsNjcuNjUyLDc2LjMxNiw3MS42NDIsNzYuMzE2LDc4LjYyNHogTTkwLjU5Miw2OC4xNTFIODAuNDkzdjQzLjYzNWg2Ljg1NlY5NS4zOTJoMy4yNDJjNi44NTYsMCwxMC4yMjMtMy44MDMsMTAuMjIzLTEwLjc4MyAgdi01LjY3NEMxMDAuODE0LDcxLjk1NCw5Ny40NDgsNjguMTUxLDkwLjU5Miw2OC4xNTF6IE05My45NTgsODUuMDQ1YzAsMy4xMTYtMS4xODYsNC4xMTMtMy4zNjYsNC4xMTNIODcuMzVWNzQuMzg1aDMuMjQyICBjMi4xODEsMCwzLjM2NiwwLjk5NywzLjM2Niw0LjExM1Y4NS4wNDV6IE0xMTcuNjQ2LDY4LjE1MWg2LjQ4M3YzMy4yMjVjMCw2Ljk4Mi0zLjQ5MSwxMC45NzItMTAuMjI0LDEwLjk3MiAgYy02LjczMywwLTEwLjIyNC0zLjk4OS0xMC4yMjQtMTAuOTcyVjY4LjE1MWg2Ljg1N3YzMy42NjFjMCwzLjExNiwxLjM3MSw0LjIzOCwzLjU1Myw0LjIzOGMyLjE4MywwLDMuNTU0LTEuMTIyLDMuNTU0LTQuMjM4VjY4LjE1MSAgeiIgZmlsbD0iI0ZGRkZGRiIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K"  class="img-center-nowidth" />
                             <h4>Processors</h4>
                         </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="motherboards">
                            

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDYwIDYwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2MCA2MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIxMjhweCIgaGVpZ2h0PSIxMjhweCI+CjxnPgoJPHJlY3QgeD0iMzEiIHk9IjQ0LjUiIHdpZHRoPSIxOCIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIxNCIgeT0iNDQuNSIgd2lkdGg9IjQiIGhlaWdodD0iNSIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iMzEiIHk9IjQ4LjUiIHdpZHRoPSIxOCIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIyOCIgeT0iNDQuNSIgd2lkdGg9IjEiIGhlaWdodD0iMiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iNTEiIHk9IjQwLjUiIHdpZHRoPSIxIiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjUxIiB5PSI0NC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNMzQuNzA5LDMwLjVoMTYuNTgyYzAuMzkxLDAsMC43MDktMC4zMTgsMC43MDktMC43MDlWMTMuMjA5YzAtMC4zOTEtMC4zMTgtMC43MDktMC43MDktMC43MDlIMzQuNzA5ICAgQzM0LjMxOCwxMi41LDM0LDEyLjgxOCwzNCwxMy4yMDl2MTYuNTgyQzM0LDMwLjE4MiwzNC4zMTgsMzAuNSwzNC43MDksMzAuNXogTTM1LDIzLjVoMnYtMWgtMnYtMmgydi0xaC0ydi0yaDJ2LTJoMnYtMmgydjJoMXYtMmgyICAgdjJoMXYtMmgydjJoMnYyaDJ2MmgtMnYxaDJ2MmgtMnYxaDJ2MmgtMnYyaC0ydjJoLTJ2LTJoLTF2MmgtMnYtMmgtMXYyaC0ydi0yaC0ydi0yaC0yVjIzLjV6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIyOCIgeT0iNDAuNSIgd2lkdGg9IjEiIGhlaWdodD0iMiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iOSIgeT0iMzEuNSIgd2lkdGg9IjMiIGhlaWdodD0iMyIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iNTEiIHk9IjM2LjUiIHdpZHRoPSIxIiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjI4IiB5PSIzNi41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cGF0aCBkPSJNNTcsNi41di0xYzAtMC41NTMtMC40NDctMS0xLTFzLTEsMC40NDctMSwxdjFoLTF2LTNoLTRoLTJoLTJoLTJoLTJoLTJoLTJoLTJoLTR2M2gtMXYtMWMwLTAuNTUzLTAuNDQ4LTEtMS0xICAgcy0xLDAuNDQ3LTEsMXYxaC0xdi0xYzAtMC41NTMtMC40NDgtMS0xLTFzLTEsMC40NDctMSwxdjFoLTRoLTZoLTJIOEgwdjVoNGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjFoNCAgIGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjFoNGMwLjU1MiwwLDEsMC40NDcsMSwxcy0wLjQ0OCwxLTEsMUgwdjIwaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDQgICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDRjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYxaDQgICBjMC41NTIsMCwxLDAuNDQ3LDEsMXMtMC40NDgsMS0xLDFIMHYzaDYwdi01MEg1N3ogTTQsMzQuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1MiwzNC41LDQsMzQuNXogICAgTTQsMzEuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM0LjU1MiwzMS41LDQsMzEuNXogTTQsMjguNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMSAgIFM0LjU1MiwyOC41LDQsMjguNXogTTE2LDM4LjVjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzE1LjQ0OCwzOC41LDE2LDM4LjV6IE04LDguNWg2djE3aC0ydjEgICBjMCwwLjU1My0wLjQ0OCwxLTEsMXMtMS0wLjQ0Ny0xLTF2LTFIOFY4LjV6IE03LDI5LjVoN3Y3SDdWMjkuNXogTTE0LDM5LjVjMCwwLjU1Mi0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFzMC40NDgtMSwxLTEgICBTMTQsMzguOTQ4LDE0LDM5LjV6IE0yMSw0Ny41YzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxaC0xdjJoLTh2LTJoLTFjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMXYtMWgtMSAgIGMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaDh2MmgxYzAuNTUyLDAsMSwwLjQ0NywxLDFzLTAuNDQ4LDEtMSwxaC0xdjFIMjF6IE0xOCwzOS41YzAtMC41NTIsMC40NDgtMSwxLTEgICBzMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxUzE4LDQwLjA1MiwxOCwzOS41eiBNMjIsMzEuNWgtMnYxYzAsMC41NTMtMC40NDgsMS0xLDFzLTEtMC40NDctMS0xdi0xaC0ydi0yM2g2VjMxLjV6IE01MCw1LjVoMnYxaC0yICAgVjUuNXogTTQ2LDUuNWgydjFoLTJWNS41eiBNNDIsNS41aDJ2MWgtMlY1LjV6IE0zOCw1LjVoMnYxaC0yVjUuNXogTTM0LDUuNWgydjFoLTJWNS41eiBNMzIsMTMuMjA5ICAgYzAtMS40OTQsMS4yMTUtMi43MDksMi43MDktMi43MDloMTYuNTgyYzEuNDk0LDAsMi43MDksMS4yMTUsMi43MDksMi43MDl2MTYuNTgyYzAsMS40OTQtMS4yMTUsMi43MDktMi43MDksMi43MDlIMzQuNzA5ICAgQzMzLjIxNSwzMi41LDMyLDMxLjI4NSwzMiwyOS43OTFWMTMuMjA5eiBNMjgsMTUuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjcuNDQ4LDE1LjUsMjgsMTUuNXogTTI4LDE4LjUgICBjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzI3LjQ0OCwxOC41LDI4LDE4LjV6IE0yOCwyMS41YzAuNTUyLDAsMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxcy0xLTAuNDQ4LTEtMSAgIFMyNy40NDgsMjEuNSwyOCwyMS41eiBNMjgsMjQuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjcuNDQ4LDI0LjUsMjgsMjQuNXogTTI4LDI3LjVjMC41NTIsMCwxLDAuNDQ4LDEsMSAgIHMtMC40NDgsMS0xLDFzLTEtMC40NDgtMS0xUzI3LjQ0OCwyNy41LDI4LDI3LjV6IE0yOCwzMC41YzAuNTUyLDAsMSwwLjQ0OCwxLDFzLTAuNDQ4LDEtMSwxcy0xLTAuNDQ4LTEtMVMyNy40NDgsMzAuNSwyOCwzMC41eiAgICBNMjUsMTcuNWMwLjU1MiwwLDEsMC40NDgsMSwxcy0wLjQ0OCwxLTEsMXMtMS0wLjQ0OC0xLTFTMjQuNDQ4LDE3LjUsMjUsMTcuNXogTTI1LDIxLjVjMC41NTIsMCwxLDAuNDQ4LDEsMXMtMC40NDgsMS0xLDEgICBzLTEtMC40NDgtMS0xUzI0LjQ0OCwyMS41LDI1LDIxLjV6IE01NSw0MC41YzAuNTUzLDAsMSwwLjQ0NywxLDFzLTAuNDQ3LDEtMSwxaC0xdjJoMWMwLjU1MywwLDEsMC40NDcsMSwxcy0wLjQ0NywxLTEsMWgtMXYyaDEgICBjMC41NTMsMCwxLDAuNDQ3LDEsMXMtMC40NDcsMS0xLDFoLTF2MkgyNnYtMmgtMWMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaC0xYy0wLjU1MiwwLTEtMC40NDctMS0xczAuNDQ4LTEsMS0xaDF2LTIgICBoLTFjLTAuNTUyLDAtMS0wLjQ0Ny0xLTFzMC40NDgtMSwxLTFoMXYtMmgtMWMtMC41NTIsMC0xLTAuNDQ3LTEtMXMwLjQ0OC0xLDEtMWgxdi0yaDI4djJoMWMwLjU1MywwLDEsMC40NDcsMSwxcy0wLjQ0NywxLTEsMWgtMSAgIHYySDU1eiBNNTYsMjYuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMXMxLDAuNDQ4LDEsMVM1Ni41NTIsMjYuNSw1NiwyNi41eiBNNTYsMTkuNWMtMC41NTIsMC0xLTAuNDQ4LTEtMXMwLjQ0OC0xLDEtMSAgIHMxLDAuNDQ4LDEsMVM1Ni41NTIsMTkuNSw1NiwxOS41eiIgZmlsbD0iI0ZGRkZGRiIvPgoJPHJlY3QgeD0iMTAiIHk9IjEwLjUiIHdpZHRoPSIyIiBoZWlnaHQ9IjEzIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIxOCIgeT0iMTAuNSIgd2lkdGg9IjIiIGhlaWdodD0iMTkiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjUxIiB5PSI0OC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIzMSIgeT0iNDAuNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjI4IiB5PSI0OC41IiB3aWR0aD0iMSIgaGVpZ2h0PSIyIiBmaWxsPSIjRkZGRkZGIi8+Cgk8cmVjdCB4PSIzMSIgeT0iMzYuNSIgd2lkdGg9IjE4IiBoZWlnaHQ9IjIiIGZpbGw9IiNGRkZGRkYiLz4KCTxyZWN0IHg9IjM5IiB5PSIxNy41IiB3aWR0aD0iOCIgaGVpZ2h0PSI4IiBmaWxsPSIjRkZGRkZGIi8+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=="
                                class="img-center-nowidth" />
                            <h4>Motherboards</h4>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="power-units">
                            

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjEyOHB4IiBoZWlnaHQ9IjEyOHB4IiB2aWV3Qm94PSIwIDAgNDQ2LjI3MSA0NDYuMjciIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDQ0Ni4yNzEgNDQ2LjI3OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTQzOS4xMjQsODEuMTZoLTY4LjUxMVY1OS40MjRjMC0zLjk0Ni0zLjE5OS03LjE0Ni03LjE0Ni03LjE0NmgtNDguOTk5Yy0zLjk0NiwwLTcuMTQ2LDMuMTk5LTcuMTQ2LDcuMTQ2VjgxLjE2SDEzOC45NDcgICAgVjU5LjQyNGMwLTMuOTQ2LTMuMTk5LTcuMTQ2LTcuMTQ2LTcuMTQ2SDgyLjgwMmMtMy45NDYsMC03LjE0NiwzLjE5OS03LjE0Niw3LjE0NlY4MS4xNkg3LjE0NkMzLjIsODEuMTYsMCw4NC4zNTksMCw4OC4zMDYgICAgdjQ1LjYxNGMwLDMuOTQ2LDMuMTk5LDcuMTQ2LDcuMTQ2LDcuMTQ2aDIzLjIwMWgzODUuNTc3aDIzLjIwMWMzLjk0NSwwLDcuMTQ2LTMuMTk5LDcuMTQ2LTcuMTQ2Vjg4LjMwNiAgICBDNDQ2LjI3LDg0LjM2LDQ0My4wNyw4MS4xNiw0MzkuMTI0LDgxLjE2eiIgZmlsbD0iI0ZGRkZGRiIvPgoJCTxwYXRoIGQ9Ik0zMC4zNDYsMzg0LjcyM2MwLDUuMTE5LDQuMTQ5LDkuMjcsOS4yNjgsOS4yN2gzNjcuMDQxYzUuMTE5LDAsOS4yNjktNC4xNSw5LjI2OS05LjI3VjE2NS40MDRIMzAuMzQ2VjM4NC43MjN6ICAgICBNMTc5LjI2MiwyOTAuMDE0bDIxLjcxNi02OS40MDFjMC4zNzMtMS4xOTIsMS40NzgtMi4wMDQsMi43MjctMi4wMDRoMzMuODY0YzAuOTE0LDAsMS43NzEsMC40MzgsMi4zMTEsMS4xNzcgICAgYzAuNTM4LDAuNzM4LDAuNjg5LDEuNjkxLDAuNDA2LDIuNTYxbC0xMy4yMjEsNDAuODM5aDM3LjIxN2MxLjA0NywwLDIuMDA4LDAuNTcyLDIuNTEsMS40OWMwLjUsMC45MTgsMC40NTksMi4wMzUtMC4xMDcsMi45MTQgICAgbC00OS43MTksNzcuMTQ5Yy0wLjUzOCwwLjgzNS0xLjQ1MywxLjMxLTIuNDAyLDEuMzFjLTAuMzQzLDAtMC42ODktMC4wNjItMS4wMjUtMC4xOWMtMS4yNjMtMC40ODUtMi4wMTItMS43OTMtMS43OTMtMy4xMjkgICAgbDguMDI4LTQ5LjAwNUgxODEuOTljLTAuOTA5LDAtMS43NjQtMC40MzQtMi4zMDItMS4xNjZDMTc5LjE0OCwyOTEuODI2LDE3OC45OSwyOTAuODgxLDE3OS4yNjIsMjkwLjAxNHoiIGZpbGw9IiNGRkZGRkYiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                            <h4>Power Units</h4>
                          </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="graphic-cards">
                           

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="Styles/img/graphics-card.png" class="img-center-nowidth" />
                         <h4>Graphics Cards</h4>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="hard-drives">
                            

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                            <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjI1NnB4IiBoZWlnaHQ9IjI1NnB4IiB2aWV3Qm94PSIwIDAgOTI2IDkyNiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgOTI2IDkyNjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik03MzQuNCwwaC01NDIuOGMtMjkuNCwwLTUzLjIsMjMuOC01My4yLDUzLjJ2ODE5LjZjMCwyOS40LDIzLjgsNTMuMiw1My4yLDUzLjJoNTQyLjhjMjkuNCwwLDUzLjE5OS0yMy44LDUzLjE5OS01My4yICAgIFY1My4yQzc4Ny42LDIzLjgsNzYzLjgwMSwwLDczNC40LDB6IE0yMTUuOSw1NS4xYzE0LDAsMjUuNCwxMS40LDI1LjQsMjUuNHMtMTEuNCwyNS40LTI1LjQsMjUuNHMtMjUuNC0xMS40LTI1LjQtMjUuNCAgICBTMjAxLjksNTUuMSwyMTUuOSw1NS4xeiBNMjE1LjksODc1LjVjLTE0LDAtMjUuNC0xMS40LTI1LjQtMjUuNHMxMS40LTI1LjM5OSwyNS40LTI1LjM5OXMyNS40LDExLjM5OSwyNS40LDI1LjM5OSAgICBTMjI5LjksODc1LjUsMjE1LjksODc1LjV6IE0zNTEuMSw1MzcuOWMwLDktNy4zLDE2LjMtMTYuMywxNi4zaC0zLjdjLTksMC0xNi4zLTcuMy0xNi4zLTE2LjNWNDc1LjhoLTcxVjUzNy45ICAgIGMwLDktNy4zLDE2LjMtMTYuMywxNi4zSDIyNGMtOSwwLTE2LjMtNy4zLTE2LjMtMTYuM1YzOTEuMWMwLTksNy4zLTE2LjMsMTYuMy0xNi4zaDMuN2M5LDAsMTYuMyw3LjMsMTYuMywxNi4zVjQ0NS40aDcxVjM5MS4xICAgIGMwLTksNy4zLTE2LjMsMTYuMy0xNi4zaDMuN2M5LDAsMTYuMyw3LjMsMTYuMywxNi4zVjUzNy45SDM1MS4xeiBNNTMzLjMwMSw1MDQuM2MtNC41LDEzLTEwLjksMjMuNjAxLTE5LjIwMSwzMS43ICAgIGMtNi4yOTksNi4xLTE0Ljc5OSwxMC45LTI1LjM5OCwxNC4zYy04LDIuNS0xOC43MDEsMy44LTMyLjEwMSwzLjhoLTUxLjg5OWMtOSwwLTE2LjMtNy4zLTE2LjMtMTYuM1YzOTEuMWMwLTksNy4zLTE2LjMsMTYuMy0xNi4zICAgIEg0NTQuNmMxNC45LDAsMjYuMywxLjEwMSwzNC4xMDEsMy40YzEwLjUsMy4xLDE5LjUsOC42LDI3LDE2LjVjNy41LDcuODk5LDEzLjE5OSwxNy42LDE3LjEsMjkuMXM1LjksMjUuNjAxLDUuOSw0Mi40ICAgIEM1MzguODAxLDQ4MC45LDUzNyw0OTMuNyw1MzMuMzAxLDUwNC4zeiBNNjM3LjUsNTU0LjFoLTUxLjljLTksMC0xNi4yOTktNy4zLTE2LjI5OS0xNi4zVjM5MS4xYzAtOSw3LjI5OS0xNi4zLDE2LjI5OS0xNi4zaDQ5LjkgICAgYzE0LjksMCwyNi4zMDEsMS4xMDEsMzQuMSwzLjRjMTAuNSwzLjEsMTkuNSw4LjYsMjcsMTYuNWM3LjUsNy44OTksMTMuMjAxLDE3LjYsMTcuMTAyLDI5LjFjMy44OTgsMTEuNSw1Ljg5OCwyNS42MDEsNS44OTgsNDIuNCAgICBjMCwxNC44LTEuNzk5LDI3LjUtNS41LDM4LjJjLTQuNSwxMy0xMC44OTgsMjMuNi0xOS4xOTksMzEuNjk5QzY4OC42LDU0Mi4yLDY4MC4xLDU0Nyw2NjkuNSw1NTAuNCAgICBDNjYxLjYsNTUyLjksNjUwLjksNTU0LjEsNjM3LjUsNTU0LjF6IE03MDIuNSw4NzUuNWMtMTQsMC0yNS40LTExLjQtMjUuNC0yNS40czExLjQtMjUuMzk5LDI1LjQtMjUuMzk5czI1LjQsMTEuMzk5LDI1LjQsMjUuMzk5ICAgIFM3MTYuNiw4NzUuNSw3MDIuNSw4NzUuNXogTTcwMi41LDEwNS45Yy0xNCwwLTI1LjQtMTEuNC0yNS40LTI1LjRzMTEuNC0yNS40LDI1LjQtMjUuNHMyNS40LDExLjQsMjUuNCwyNS40ICAgIFM3MTYuNiwxMDUuOSw3MDIuNSwxMDUuOXoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNNjY4LjQsNDE1LjNjLTQuNC00LjItMTAtNy0xNi44MDEtOC4zOTljLTUuMS0xLjEwMS0xNS0xLjctMjkuNjk5LTEuN0g2MDUuNlY1MjRoMjdjMTAuMTAyLDAsMTcuNC0wLjYsMjEuOS0xLjcgICAgYzUuOS0xLjUsMTAuNzAxLTQsMTQuNi03LjVjMy45LTMuNSw3LTkuMyw5LjUtMTcuM2MyLjQtOCwzLjcwMS0xOSwzLjcwMS0zMi44YzAtMTMuOS0xLjIwMS0yNC41LTMuNzAxLTMxLjkgICAgQzY3Ni4yMDEsNDI1LjIsNjcyLjgwMSw0MTkuNCw2NjguNCw0MTUuM3oiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNNDg3LjQsNDE1LjNjLTQuNC00LjItMTAtNy0xNi44MDEtOC4zOTljLTUuMS0xLjEwMS0xNS0xLjctMjkuNjk5LTEuN0g0MjQuNlY1MjRoMjdjMTAuMTAxLDAsMTcuNC0wLjYsMjEuOS0xLjcgICAgYzUuOS0xLjUsMTAuNzAxLTQsMTQuNi03LjVjMy45LTMuNSw3LTkuMyw5LjUtMTcuM2MyLjQtOCwzLjcwMS0xOSwzLjcwMS0zMi44YzAtMTMuOS0xLjIwMS0yNC41LTMuNzAxLTMxLjkgICAgQzQ5NS4zMDEsNDI1LjIsNDkxLjgwMSw0MTkuNCw0ODcuNCw0MTUuM3oiIGZpbGw9IiNGRkZGRkYiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K" class="img-center-nowidth" />
                            <h4>HDD</h4>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box hovereffect" id="ssds">
                            

                            <div class="overlay">
                                <h3 class="info">Buy Now</h3>
                            </div>
                           <img src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjEyOHB4IiBoZWlnaHQ9IjEyOHB4IiB2aWV3Qm94PSIwIDAgOTI2IDkyNiIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgOTI2IDkyNjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8Zz4KCTxnPgoJCTxwYXRoIGQ9Ik02NDYuMjAxLDUyMS4yYzUuODk4LTEuNSwxMC43OTktNCwxNC42OTktNy41czcuMS05LjQsOS42LTE3LjVjMi41LTguMTAxLDMuNzAxLTE5LjIsMy43MDEtMzMuMTAxICAgIGMwLTE0LTEuMjAxLTI0LjY5OS0zLjcwMS0zMi4xOTlzLTUuOS0xMy4zMDEtMTAuNC0xNy41Yy00LjM5OC00LjItMTAuMS03LTE2Ljg5OC04LjVjLTUuMTAyLTEuMi0xNS4xMDItMS43LTMwLTEuN2gtMTYuNFY1MjMgICAgSDYyNC4xQzYzNC40LDUyMi45LDY0MS43MDEsNTIyLjMsNjQ2LjIwMSw1MjEuMnoiIGZpbGw9IiNGRkZGRkYiLz4KCQk8cGF0aCBkPSJNMTM4LjQsNTMuMnY4MTkuNmMwLDI5LjQsMjMuOCw1My4yLDUzLjIsNTMuMmg1NDIuOGMyOS40LDAsNTMuMTk5LTIzLjgsNTMuMTk5LTUzLjJWNTMuMkM3ODcuNiwyMy44LDc2My44MDEsMCw3MzQuNCwwICAgIGgtNTQyLjhDMTYyLjIwMSwwLDEzOC40LDIzLjgsMTM4LjQsNTMuMnogTTcwMi41LDg3NS41Yy0xNCwwLTI1LjQtMTEuNC0yNS40LTI1LjRzMTEuNC0yNS4zOTksMjUuNC0yNS4zOTkgICAgczI1LjQsMTEuMzk5LDI1LjQsMjUuMzk5UzcxNi42LDg3NS41LDcwMi41LDg3NS41eiBNNzAyLjUsNTUuMWMxNCwwLDI1LjQsMTEuNCwyNS40LDI1LjRzLTExLjQsMjUuNC0yNS40LDI1LjQgICAgcy0yNS40LTExLjQtMjUuNC0yNS40QzY3Ny4yMDEsNjYuNSw2ODguNSw1NS4xLDcwMi41LDU1LjF6IE01NjAuMzAxLDM5MC41YzAtOS45LDguMS0xOCwxOC0xOEg2MjcuMWMxNS4xMDIsMCwyNi41LDEuMiwzNC40LDMuNSAgICBjMTAuNiwzLjEsMTkuNzAxLDguNywyNy4zMDEsMTYuN1M3MDIuMSw0MTAuNSw3MDYuMSw0MjJjMy45LDExLjYsNS45LDI1LjgsNS45LDQyLjhjMCwxNC45LTEuOSwyNy43LTUuNiwzOC41ICAgIGMtNC41LDEzLjItMTEsMjMuOC0xOS40LDMyYy02LjI5OSw2LjItMTQuOSwxMS0yNS42OTksMTQuNGMtOC4xLDIuNi0xOC44MDEsMy44LTMyLjMwMSwzLjhoLTUwLjc5OWMtOS45LDAtMTgtOC4xLTE4LTE4di0xNDUgICAgSDU2MC4zMDF6IE00ODkuNCw0ODkuOWMtMi41LTMtNi45LTUuNjAxLTEzLjEtNy44MDFjLTQuMzAxLTEuNS0xNC00LjEtMjkuMy03Ljg5OWMtMTkuNi00LjktMzMuMy0xMC44LTQxLjItMTcuOSAgICBjLTExLjEtMTAtMTYuNy0yMi4xLTE2LjctMzYuMzk5YzAtOS4yLDIuNjAxLTE3LjgwMSw3LjgwMS0yNS45YzUuMTk5LTgsMTIuOC0xNC4xLDIyLjYtMTguM3MyMS43LTYuMywzNS42LTYuMyAgICBjMjIuNzAxLDAsMzkuOCw1LDUxLjMsMTQuODk5YzQuOSw0LjIsOC44MDEsOS4xMDEsMTEuNjk5LDE0LjVjNi4yMDEsMTEuNjAxLTIsMjUuNy0xNS4xOTksMjYuM2gtMS4xICAgIGMtNy4yMDEsMC4zMDEtMTQuMS0zLjY5OS0xNy0xMC4zYy0xLjgwMS0zLjg5OS00LTYuODk5LTYuOS05LjJjLTUuMS00LjEtMTIuOS02LjEtMjMuMS02LjFjLTEwLjYsMC0xOC44OTksMi4yLTI0Ljg5OSw2LjUgICAgYy0zLjksMi44LTUuODAxLDYuNS01LjgwMSwxMS4yYzAsNC4zLDEuODAxLDcuODk5LDUuNCwxMWM0LjYsMy44OTksMTUuOCw3Ljg5OSwzMy42LDEyLjFjMTcuOCw0LjIsMzAuOSw4LjUsMzkuNCwxMyAgICBzMTUuMjAxLDEwLjYwMSwyMCwxOC40YzQuODAxLDcuOCw3LjIwMSwxNy4zOTksNy4yMDEsMjguOGMwLDEwLjQtMi45LDIwLjEtOC42MDIsMjkuMWMtNS43OTksOS4xMDEtMTMuODk4LDE1LjgwMS0yNC4zOTgsMjAuMiAgICBjLTEwLjUsNC40LTIzLjcwMSw2LjYwMS0zOS40MDEsNi42MDFjLTIyLjg5OSwwLTQwLjM5OS01LjMwMS01Mi43LTE1LjljLTcuMy02LjMtMTIuOC0xNC4yLTE2LjYtMjMuOSAgICBjLTQuNC0xMS4xLDMuMi0yMy4xOTksMTUuMS0yNC4zOTlsMCwwYzcuOS0wLjgsMTUuNjAxLDMuNiwxOC42MDEsMTFjMi4zOTksNS44LDUuNSwxMC4zOTksOS41LDEzLjhjNi41LDUuNiwxNS4zOTksOC40LDI2LjUsOC40ICAgIGMxMS43OTksMCwyMC42LTIuNSwyNi42LTcuNXM4LjktMTAuODAxLDguOS0xNy41QzQ5My4yMDEsNDk2LjYsNDkxLjksNDkyLjksNDg5LjQsNDg5Ljl6IE0yODYuNiwzNjkuNCAgICBjMjIuNywwLDM5LjgwMSw1LDUxLjMwMSwxNC44OTljNC44OTksNC4yLDguOCw5LjEwMSwxMS42OTksMTQuNWM2LjIsMTEuNjAxLTIsMjUuNy0xNS4xOTksMjYuM0gzMzMuMyAgICBjLTcuMiwwLjMwMS0xNC4xLTMuNjk5LTE3LTEwLjNjLTEuOC0zLjg5OS00LTYuODk5LTYuODk5LTkuMmMtNS4xMDEtNC4xLTEyLjktNi4xLTIzLjEwMS02LjFjLTEwLjYsMC0xOC45LDIuMi0yNC45LDYuNSAgICBjLTMuOSwyLjgtNS44LDYuNS01LjgsMTEuMmMwLDQuMywxLjgsNy44OTksNS40LDExYzQuNiwzLjg5OSwxNS44LDcuODk5LDMzLjYsMTIuMWMxNy44MDEsNC4yLDMwLjksOC41LDM5LjQsMTMgICAgczE1LjIsMTAuNjAxLDIwLDE4LjRzNy4yLDE3LjM5OSw3LjIsMjguOGMwLDEwLjQtMi45LDIwLjEtOC42MDEsMjkuMWMtNS44LDkuMTAxLTEzLjg5OSwxNS44MDEtMjQuMzk5LDIwLjIgICAgYy0xMC41LDQuNC0yMy43LDYuNjAxLTM5LjQsNi42MDFjLTIyLjksMC00MC40LTUuMzAxLTUyLjctMTUuOWMtNy4zLTYuMy0xMi44LTE0LjItMTYuNi0yMy45Yy00LjQtMTEuMSwzLjItMjMuMTk5LDE1LjEtMjQuMzk5ICAgIGwwLDBjNy45LTAuOCwxNS42LDMuNiwxOC42LDExYzIuNCw1LjgsNS41LDEwLjM5OSw5LjUsMTMuOGM2LjUsNS42LDE1LjM5OSw4LjQsMjYuNSw4LjRjMTEuOCwwLDIwLjYtMi41LDI2LjYtNy41ICAgIHM4LjktMTAuODAxLDguOS0xNy41YzAtNC4zMDEtMS4zLTcuOS0zLjgtMTAuOXMtNi45LTUuNi0xMy4xMDEtNy44Yy00LjMtMS41LTE0LTQuMTAxLTI5LjMtNy45ICAgIGMtMTkuNi00Ljg5OS0zMy4zLTEwLjgtNDEuMi0xNy44OTljLTExLjEtMTAtMTYuNy0yMi4xMDEtMTYuNy0zNi40YzAtOS4yLDIuNi0xNy44LDcuOC0yNS45YzUuMi04LDEyLjgtMTQuMSwyMi42LTE4LjMgICAgQzI2MC44LDM3MS41LDI3Mi43MDEsMzY5LjQsMjg2LjYsMzY5LjR6IE0yMTUuOSw1NS4xYzE0LDAsMjUuNCwxMS40LDI1LjQsMjUuNHMtMTEuNCwyNS40LTI1LjQsMjUuNHMtMjUuNC0xMS40LTI1LjQtMjUuNCAgICBTMjAxLjksNTUuMSwyMTUuOSw1NS4xeiBNMjE1LjksODI0LjdjMTQsMCwyNS40LDExLjM5OSwyNS40LDI1LjM5OXMtMTEuNCwyNS40LTI1LjQsMjUuNHMtMjUuNC0xMS40LTI1LjQtMjUuNCAgICBTMjAxLjksODI0LjcsMjE1LjksODI0Ljd6IiBmaWxsPSIjRkZGRkZGIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg=="  class="img-center-nowidth" />
                            <h4>SSD</h4>
                        </div>
                    </div>
                    </div></div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //$(".hovereffect").mouseover(function () {
        //    $(this).find("h4").css("visibility", "hidden");
        //});
        //$(".hovereffect").mouseout(function () {
        //    $(this).find("h4").css("visibility", "visible");
        //});

    </script>
</asp:Content>
