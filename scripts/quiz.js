function checkQuiz() {
    
    // correct answers count
    let correct = 0;

    // dictionary of correct answers
    let answers = {
        1: "c",
        2: "a",
        3: "d",
        4: "a",
        5: "d"
    };

    // get length of answers
    let aCount = Object.keys(answers).length;

    // checks if answer is correct
    for (let i = 1; i <= aCount; i++) {
        // get user answer
        let a = document.querySelector(`input[name="q${i}"]:checked`).value;
        // if answer is correct add +1 to correct answers count
        if (a === answers[i])
            correct++;
    }

    // alert how many questions you got right
    alert(`Score: ${correct} / ${aCount} (${Math.floor(correct / aCount * 100)}%)`);
}