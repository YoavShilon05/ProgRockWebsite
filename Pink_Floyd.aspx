<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/BandPages.master" AutoEventWireup="true" CodeFile="Pink_Floyd.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Pink Floyd
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
    Pink Floyd
</asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="subtitle" Runat="Server">
    1965 – 1994
</asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="wiki" Runat="Server">
    <a href="https://en.wikipedia.org/wiki/Pink_Floyd">wikipedia</a>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="membersp" Runat="Server">
    <ul>
        <li id="Roger Waters">
            <b>Roger Waters</b> (born 6 September 1943) was the lead singer and bassist of Pink Floyd. 
            He was considered by many to be the brain behind Floyd's Most powerful and popular songs, as well as the brain behind
            The Wall. He was fired from the band in 1985, right after the release of their album "The Final Cut".
            Roger has a solo Career and is still preforming pink floyd materials to this day.
        </li>
        <li id="David Gilmour">
            <b>David Gilmour</b> (born 6 March 1946) was the lead guitarist and sometimes vocalist of Pink Floyd.
            He joined as guitarist and co-lead vocalist in 1967, shortly before the departure of founder member Syd Barrett.
            Gilmour is known for his emotional guitar playing style, some of his guitar solos are considered among the top of all times.
            Following the departure of Roger Waters in 1985, Pink Floyd continued under Gilmour's leadership and released three more studio albums.

        </li>
        <li id="Richard Wright">
            <b>Richard Wright</b> (28 July 1943 – 15 September 2008) was the keyboard player anc background singer of Pink Floyd.
            Initially contributing more as a singer/songwriter, Wright later acted mainly as an arranger on compositions by Waters and Gilmour. 
            He began to contribute less towards the end of the 1970s and left the band after touring The Wall in 1981. Mainly because of pressure from Waters.
            He rejoined later for 2 more studio Albums. Wright passed away from lung cancer in 2008. Not long after playing a show with Gilmour.
        </li>
        <li id="Nick Mason">
            <b>Nick Mason</b> (born 27 January 1944) was the drummer of Pink Floyd.
            He is the only member to feature on every Pink Floyd album, and the only constant member since its formation in 1965
            In 2018, he formed a new band, Nick Mason's Saucerful of Secrets, to perform music from Pink Floyd's early years.
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="albumsp" Runat="Server">

    <div class="album-grid">
        <a href="https://open.spotify.com/album/468ZwCchVtzEbt9BHmXopb?si=smVj92aCQMWoJAjvO8JRtA" class="album">
            <span id="Meddle Album"></span>
            <img src="images/Pink Floyd/Meddle.jpeg"/>
            <h1 class="name">Meddle</h1>
            <h1 class="release-year">1971</h1>
        </a>
        
        <a href="https://open.spotify.com/album/4LH4d3cOWNNsVw41Gqt2kv?si=Z3Xz1mSET8SVImT37T5hYQ" class="album">
            <span id="The Dark Side of the Moon Album"></span>
            <img src="images/Pink Floyd/The_Dark_Side_of_the_Moon.jpg"/>
            <h1 class="name">The Dark Side of the Moon</h1>
            <h1 class="release-year">1973</h1>
        </a>

        <a href="https://open.spotify.com/album/0bCAjiUamIFqKJsekOYuRw?si=ngfhAV-YRuK3805qn6vMKQ" class="album">
            <span id="Wish You Were Here Album"></span>
            <img src="images/Pink Floyd/Wish_You_Were_Here.png"/>
            <h1 class="name">Wish You Were Here</h1>
            <h1 class="release-year">1975</h1>
        </a>

        <a href="https://open.spotify.com/album/3b4E89rxzZQ9zkhgKpj8N4?si=_OKBq5ZmQpuH_6BykIQZ_A" class="album">
            <span id="Animals Album"></span>
            <img src="images/Pink Floyd/Animals.jpg"/>
            <h1 class="name">Animals</h1>
            <h1 class="release-year">1977</h1>
        </a>

        <a href="https://open.spotify.com/album/5Dbax7G8SWrP9xyzkOvy2F?si=yZhXSxCVSpaz8lvFy0SXCQ" class="album">
            <span id="The Wall Album"></span>
            <img src="images/Pink Floyd/The_Wall.png"/>
            <h1 class="name">The Wall</h1>
            <h1 class="release-year">1979</h1>
        </a>
        
        <a href="https://open.spotify.com/album/5F0IQXuHfTV7SBvZVnXERl?si=0d9LIKFJTQq9LRNTJRj9Jg" class="album">
            <span id="The Division Bell Album"></span>
            <img src="images/Pink Floyd/The_Division_Bell.png"/>
            <h1 class="name">The Division Bell</h1>
            <h1 class="release-year">1994</h1>
        </a>
    </div>
    <hr/>
    
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="factsp" Runat="Server">
    <ul>
        <li>
            ‘The Dark Side of the Moon’ was the best selling album in the world for a while (it is still third best seller ever), 
            shifting so many units that one in 12 people is said to own a copy.
        </li>
        <li>
            Dark Side of the Moon is said to sync perfectly with The Wizard of Oz and led to conspiracy theories that the band had written 
            it with that purpose in mind. To quell the rumours, Nick Mason said they’d intended to soundtrack The Sound of Music instead.
        </li>
        <li>
            One of Pink Floyd’s most iconic covers is ‘Animals’ – Pink Floyd’s 10th studio album – featuring Battersea Power Station and in the distance a flying pig. 
            The porcine balloon and the title were both in reference to George Orwell’s Animal Farm which informed much of the lyrical content.
        </li>
        <li>
            The last Pink Floyd album Roger Waters appeared on was ‘The Final Cut’ – a work he conceived and wrote with no help from the others 
            (David Gilmour expressed misgivings about the record later).
        </li>
        <li>
            Waters took the other members of Pink Floyd to court in the mid-80s in the hope of barring them from continuing with the name.
            He recently admitted regretting the litigation.
        </li>
        <li>
            The album ‘The Division Bell’ was named by Hitchhiker’s Guide to the Galaxy author Douglas Adams.
        </li>
    </ul>
</asp:Content>

