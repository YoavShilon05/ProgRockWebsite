<%@ Page Title="" Language="C#" MasterPageFile="~/master pages/ContentPages.master" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" Runat="Server">
    Quiz
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
    Progressive Rock Trivia!
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="subtitle" Runat="Server">
    Are you a true prog rock expert?
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="text" Runat="Server">

    <script type="text/javascript" src="scripts/quiz.js"></script>

    <!-- question #1 -->
    <h1>1. which of the following is a real prog rock band?</h1>
    <label class="container">Peacock
        <input type="radio" value="a" name="q1" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Turtle
        <input type="radio" value="b" name="q1" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Camel
        <input type="radio" value="c" name="q1" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Squirrel
        <input type="radio" value="d" name="q1" />
        <span class="checkmark"></span>
    </label>
    <hr />

    <!-- question #2 -->
    <h1>2. Which of the following was Mike Oldfields debut album?</h1>
    <label class="container">Tubular Bells
        <input type="radio" value="a" name="q2" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Crisis
        <input type="radio" value="b" name="q2" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Ommadawn
        <input type="radio" value="c" name="q2" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Moonlight Shadow
        <input type="radio" value="d" name="q2" />
        <span class="checkmark"></span>
    </label>
    <hr />

    <!-- question #3 -->
    <h1>3. Who is the lead singer of Genesis?</h1>
    <label class="container">Greg Lake
        <input type="radio" value="a" name="q3" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Nick Mason
        <input type="radio" value="b" name="q3" />
        <span class="checkmark"></span>
    </label>
    <label class="container">John Anderson
        <input type="radio" value="c" name="q3" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Peter Gabriel
        <input type="radio" value="d" name="q3" />
        <span class="checkmark"></span>
    </label>
    <hr />

    <!-- question #4 -->
    <h1>4. Which of the following is not a 20 minute musical artwork by Yes?</h1>
    <label class="container">Amarok
        <input type="radio" value="a" name="q4" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Close To The Edge
        <input type="radio" value="b" name="q4" />
        <span class="checkmark"></span>
    </label>
    <label class="container">The Gates of Delirium
        <input type="radio" value="c" name="q4" />
        <span class="checkmark"></span>
    </label>
    <label class="container">The Revealing Science of God
        <input type="radio" value="d" name="q4" />
        <span class="checkmark"></span>
    </label>
    <hr />

    <!-- question #5 -->
    <h1>5. Who was supposed to be the lead guitarist of ELP?</h1>
    <label class="container">Mark Knofler
        <input type="radio" value="a" name="q5" />
        <span class="checkmark"></span>
    </label>
    <label class="container">David Gilmour
        <input type="radio" value="b" name="q5" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Robert Fripp
        <input type="radio" value="c" name="q5" />
        <span class="checkmark"></span>
    </label>
    <label class="container">Jimi Hendrix
        <input type="radio" value="d" name="q5" />
        <span class="checkmark"></span>
    </label>
    <hr />

    <button class="button" onclick="checkQuiz()" runat='server'>Submit</button>
    
</asp:Content>

