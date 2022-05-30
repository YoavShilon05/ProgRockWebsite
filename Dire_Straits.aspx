<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/BandPages.master" AutoEventWireup="true" CodeFile="Dire_Straits.aspx.cs" Inherits="_Default" %>

<%-- page title --%>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Dire Straits
</asp:Content>

<%-- title --%>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    Dire Straits
</asp:Content>

<%--subtitle--%>
<asp:Content ID="Content8" ContentPlaceHolderID="subtitle" Runat="Server">
    1977-1995
</asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="wiki" Runat="Server">
    <a href="https://en.wikipedia.org/wiki/Dire_Straits">wikipedia</a>
</asp:Content>

<%-- band members --%>
<asp:Content ID="Content3" ContentPlaceHolderID="membersp" Runat="Server">
    <ul>
        <li id="Mark Knoffler">
            <b>Mark Knoffler</b> (born 12 August 1949) was the heart and soul of Dire Straits. Him, his brother David, and friends
            John Illsley and Pick Withers founded dire straits in 1977.
            Mark was the lead singer, songwriter and guitarist of the band. His unique playing style was characterized
            by plucking the strings with his thumb, middle and index fingers, unlike the standard pick for rock, or using
            all fingers for jazz and folk.
            Knofler has a long and impressive solo work, and he still tours with original and Dire Straits materials to this day.
            Knofler remained through the entirety of Dire Straits and remained its main focus and inspiration.
        </li>
        <li id="Pick Withers">
            <b>Pick Withers</b> (age 74) was Dire Straits' drummer.
            His style with Dire Straits is distinctive for being restrained, favouring sparse snare drum and hi-hat 
            combinations rather than heavy beats, speed and pyrotechnic flourishes.
            His drum kit has a unique electronic-like recognisable sound.
        </li>
        <li id="Alan Clark">
            <b>Alan Clark</b> (born 5 March 1952) was the keyboardist and pianist of Dire Straits.
            He joined Dire Straits in 1980 and remained a major influence on the band's music until the band's eventual dissolution in 1995.
            He had a very subtle yet emotional sound, playing rythm and solo (Mention worthy keyboard solos in Telegraph Road, Brothers in arms)
            Clark had a solo career as a session musician, and recorded and played live with many famous artists such as Bob Dylan and Eric Clapton.
        </li>
    </ul>
</asp:Content>

<%-- albums --%>
<asp:Content ID="Content4" ContentPlaceHolderID="albumsp" Runat="Server">
    
    <div class="album-grid">
        <a href="https://open.spotify.com/album/2rCS6Xwx32V27pvgFzLzlT?si=xy2clfZfRue3wD2R82Rl6A" class="album">
            <span id="Dire Straits Album"></span>
            <img src="images/Dire Straits/Dire_Straits.jpg" alt/>
            <h1 class="name">Dire Straits</h1>
            <h1 class="release-year">2013</h1>
        </a>

        <a href="https://open.spotify.com/album/3wvclpO3LJmpSQGQ9gBa2a?si=XHkRKPqYQkuaSpzFC7vAhw" class="album">
            <span id="Making Movies Album"></span>
            <img src="images/Dire Straits/Making_Movies.png" alt/>
            <h1 class="name">Making Movies</h1>
            <h1 class="release-year">2017</h1>
        </a>

        <a href="https://open.spotify.com/album/4hJqOIahWodpSJU6uDgjvN?si=DNjxOoBNSgK4i3bFytjFIQ" class="album">
            <span id="Love Over Gold Album"></span>
            <img src="images/Dire Straits/Love_Over_Gold.jpg" alt/>
            <h1 class="name">Love Over Gold</h1>
            <h1 class="release-year">2018</h1>
        </a>

        <a href="https://open.spotify.com/album/6Pz06FAaeym0JSqVqIkN56?si=ZhJ8WBUeRDqAYSG-wIsZMA" class="album">
            <span id="Brothers In Arms Album"></span>
            <img src="images/Dire Straits/Brothers_In_Arms.jpg" alt/>
            <h1 class="name">Brothers In Arms</h1>
            <h1 class="release-year">2019</h1>
        </a>
    </div>
    
</asp:Content>

<%-- fun facts --%>
<asp:Content ID="Content7" ContentPlaceHolderID="factsp" Runat="Server">
    <ul>
        <li>
            Dire Straits Took the name "Dire Straits" because it represented their financial condition in the early days.
        </li>
        <li>
            Dire Straits were Princess of Wales Diana's favorite rock band!
        </li>
        <li>
            The band were inducted into the Rock and Roll Hall of Fame in 2018, but both Knopfler brothers declined the invitation, so they did not perform.
        </li>
        <li>
            Mark Knopfler is left-handed but he plays right-handed; he says that makes him strong at vibratos.
        </li>
        <li>
            At a concert in New Zealand, the Minister of Transport called off a National Stewards' strike so they could make it to their show :O
        </li>
        <li>
            In 2001, British scientists named a dinosaur they discovered after Mark Knopfler. They named the dinosaur, 
            which was discovered in Madagascar, "Masiakasaurus Knopfleri" as a tribute to Knopfler D:
        </li>
    </ul>
</asp:Content>

