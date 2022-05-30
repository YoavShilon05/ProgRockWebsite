<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/BandPages.master" AutoEventWireup="true" CodeFile="King_Crimson.aspx.cs" Inherits="_Default" %>

<%-- page title --%>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    King Crimson
</asp:Content>

<%-- title --%>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    King Crimson
</asp:Content>

<%--subtitle--%>
<asp:Content ID="Content8" ContentPlaceHolderID="subtitle" Runat="Server">
    1968 - present
</asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="wiki" Runat="Server">
    <a href="https://en.wikipedia.org/wiki/King_Crimson">wikipedia</a>
</asp:Content>

<%-- band members --%>
<asp:Content ID="Content3" ContentPlaceHolderID="membersp" Runat="Server">

        <ul>
            <li id="Robert Fripp">
                <b>Robert Fripp</b> (born 16 May 1946) is the lead guitarist of King Crimson.
                He is also King Crimson's founder and longest-lasting member.
                Fripp had a lot of difficulties starting up. He was tone deaf and left handed, but still opted
                to play the right-handed guitar. Fripp began to develop the technique of crosspicking, which became one of his specialities
                and also begun using a tuning system which he named "New Standard tuning".
                Over the years fripp had a lot of disagreements with band members which led to them leaving the band.
                The band changed composition many times, but Fripp was always a part of it.
            </li>
            <li id="Greg Lake">
                Even though not a current member, <b>Greg Lake</b> (10 November 1947 – 7 December 2016) was a very important
                member of King Crimson in it's early years as a band. He was the lead vocalist and bassist of the band and was responsible for the
                more relaxed and melodic songs of the band (such as Peace, I talk to the wind...).
                He was a very prominent person in the Progressive Rock industry, being a part of the famous Prog Rock trio
                ELP (Emerson Lake and Palmer). He died of cancer in 2016.
            </li>
            <li id="Tony Levin">
                <b>Tony Levin</b> (born June 6, 1946) is King Crimson's Bassist. He joined the band in 1981 and played in every
                studio album and live show ever since.
                Levin plays mainly a "Chapman Stick", which unlike an electric bass, has between 6-10 strings, and played with a
                technique called "tapping".
                Levin is also a session bassist, and played in hundreds of albums and live shows with famous artists!
                Including: Peter Gabriel, Pink Floyd, John Lennon, Buddy Rich, Paul Simon, David Bowie and many more!
            </li>
            <li id="Jakko Jakszyk">
                <b>Jakko Jakszyk</b> (born 8 June 1958) is King Crimson's Lead singer since 2013.
                Before joining King Crimson, he led bands for over thirty years, including 64 Spoons, 
                Dizrhythmia, 21st Century Schizoid Band (which was a King Crimson cover band!), 
                Jakszyk Fripp Collins, and Rapid Eye Movement.
                Jakszyk is also a comedian and an actor.
            </li>
            <li id="Drummers">
                <b>Jeremy Stacey, Gavin Harrison and Pat Mastelotto</b> are all King Crimson drummers and percussionists.
                Mastelotto joined the band in 1994, Stacey joined in 2016 and Harrison in 2013. He is also the band's Youngest member.
                The drummers joined the band very late, and were mostly used in live performences and not in the studio.
                The band currently tours the world in this 3 drummer composition.
                Fripp: "...very different reformation to what has gone before: seven players, four English and three American, with three drummers!"
                </ul>
        
</asp:Content>

<%-- albums --%>
<asp:Content ID="Content4" ContentPlaceHolderID="albumsp" Runat="Server">

    <div class="album-grid">
        <a href="https://open.spotify.com/album/6tVg2Wl9hVKMpHYcAl2V2M?si=ta49lKZkTsC9_Q_x9MlubQ" class="album">
            <span id="In The Court Of The Crimson King Album"></span>
            <img src="images/King Crimson/In_The_Court.jpeg"/>
            <h1 class="name">In The Court Of The Crimson King</h1>
            <h1 class="release-year">1969</h1>
        </a>
        
        <a href="https://open.spotify.com/album/4dgsjsPIogKXhFlPZSYjvT?si=nrYehXgKTFubUa6Lri4Zww" class="album">
            <span id="In The Wake Of Poseidon Album"></span>
            <img src="images/King Crimson/In_The_Wake_Of_Poseidon.jpeg"/>
            <h1 class="name">In The Wake Of Poseidon Album</h1>
            <h1 class="release-year">1970</h1>
        </a>

        <a href="https://open.spotify.com/album/4VKzYj7REUxkP1VXTdvSoV?si=EE2_l6FISKW6ssjPLTP09w" class="album">
            <span id="Larks' Tongues In Aspic Album"></span>
            <img src="images/King Crimson/Larks_Tongues_In_Aspic.jpg"/>
            <h1 class="name">Larks' Tongues In Aspic</h1>
            <h1 class="release-year">1973</h1>
        </a>

        <a href="https://open.spotify.com/album/2Eaep5bQ8I6ygLtzVJ2CWz?si=k0yBo3LUTlmHYfz1wxQOuQ" class="album">
            <span id="Starless And Bible Black Album"></span>
            <img src="images/King Crimson/Starless_And_Bible_Black.jpg"/>
            <h1 class="name">Starless And Bible Black</h1>
            <h1 class="release-year">1974</h1>
        </a>

        <a href="https://open.spotify.com/album/13dGZzRzFoejmyVXAbTPAH?si=6zvsR7duTBCAabUrpgz5eQ" class="album">
            <span id="Red Album"></span>
            <img src="images/King Crimson/Red.jpg"/>
            <h1 class="name">Red</h1>
            <h1 class="release-year">1974</h1>
        </a>
        
        <a href="https://open.spotify.com/album/7KxUQCCvE0edGiqBS6ywEd?si=DYWNmhVqQHqZkutuqFNQqg" class="album">
            <span id="Discipline Album"></span>
            <img src="images/King Crimson/Discipline.jpg"/>
            <h1 class="name">Discipline</h1>
            <h1 class="release-year">1981</h1>
        </a>
    </div>
    
</asp:Content>

<%-- fun facts --%>
<asp:Content ID="Content7" ContentPlaceHolderID="factsp" Runat="Server">
    <ul>
        <li>
            King Crimson turned down both piano man Elton John and Roxy Music frontman Brian Ferry as lead singers before each man got famous. 
            Haskell was brought in instead of John, and Burrell (who was taught bass by Fripp upon joining the band) was chosen instead of Ferry.
        </li>
        <li>
            King Crimson lucked out with an early gig (only 3 months after their first gig) at the Rolling Stones' free concert at Hyde Park. 
            They played before 650,000 people.
        </li>
        <li>
            Fripp turned down offers from Yes and Blue Whale to finish the band's second album. He brought in old friend Peter Giles, his brother Mike, and other temporary musicians to complete the album.
        </li>
        <li>
            Like Frank Zappa, Fripp religiously taped King Crimson's live performances. He released some of these recordings throughout the 1990s.
        </li>
    </ul>
</asp:Content>

