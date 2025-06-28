def run():
    questions = [
        {
            "question": "Capital of France?",
            "answers": {
                "A": "Berlin",
                "B": "Washington DC",
                "C": "Paris",
                "D": "Madrid"
            },
            "correct": "C"
        },
        {
            "question": "Largest planet in our solar system?",
            "answers": {
                "A": "Earth",
                "B": "Jupiter",
                "C": "Mars",
                "D": "Venus"
            },
            "correct": "B"
        },
        {
            "question": "What is the boiling point of water (Celsius)?",
            "answers": {
                "A": "100",
                "B": "0",
                "C": "50",
                "D": "212"
            },
            "correct": "A"
        },
        {
            "question": "Who wrote 'Romeo and Juliet'?",
            "answers": {
                "A": "Charles Dickens",
                "B": "William Shakespeare",
                "C": "Jane Austen",
                "D": "Mark Twain"
            },
            "correct": "B"
        },
        {
            "question": "What is the chemical symbol for gold?",
            "answers": {
                "A": "Au",
                "B": "Ag",
                "C": "Gd",
                "D": "Go"
            },
            "correct": "A"
        },
        {
            "question": "Which continent is the Sahara Desert located in?",
            "answers": {
                "A": "Asia",
                "B": "Africa",
                "C": "Australia",
                "D": "Europe"
            },
            "correct": "B"
        },
        {
            "question": "What is the largest mammal?",
            "answers": {
                "A": "Elephant",
                "B": "Blue Whale",
                "C": "Giraffe",
                "D": "Hippopotamus"
            },
            "correct": "B"
        },
        {
            "question": "Which language is primarily spoken in Brazil?",
            "answers": {
                "A": "Spanish",
                "B": "Portuguese",
                "C": "French",
                "D": "English"
            },
            "correct": "B"
        },
        {
            "question": "How many continents are there?",
            "answers": {
                "A": "5",
                "B": "6",
                "C": "7",
                "D": "8"
            },
            "correct": "C"
        },
        {
            "question": "What is the square root of 64?",
            "answers": {
                "A": "6",
                "B": "7",
                "C": "8",
                "D": "9"
            },
            "correct": "C"
        },
        {
            "question": "Which ocean is the largest?",
            "answers": {
                "A": "Atlantic",
                "B": "Indian",
                "C": "Arctic",
                "D": "Pacific"
            },
            "correct": "D"
        },
        {
            "question": "Who painted the Mona Lisa?",
            "answers": {
                "A": "Vincent van Gogh",
                "B": "Pablo Picasso",
                "C": "Leonardo da Vinci",
                "D": "Claude Monet"
            },
            "correct": "C"
        },
        {
            "question": "What is the freezing point of water (Celsius)?",
            "answers": {
                "A": "0",
                "B": "32",
                "C": "100",
                "D": "-1"
            },
            "correct": "A"
        },
        {
            "question": "Which country is known as the Land of the Rising Sun?",
            "answers": {
                "A": "China",
                "B": "Japan",
                "C": "Thailand",
                "D": "South Korea"
            },
            "correct": "B"
        },
        {
            "question": "What is the fastest land animal?",
            "answers": {
                "A": "Lion",
                "B": "Cheetah",
                "C": "Horse",
                "D": "Gazelle"
            },
            "correct": "B"
        }
    ]

    score = 0

    for i, q in enumerate(questions, 1):
        print(f"Question {i}: {q['question']}")
        for key, value in q["answers"].items():
            print(f"{key}: {value}")
        answer = input("Your answer: ").strip().upper()
        if answer == q["correct"]:
            print("Correct\n")
            score += 1
        else:
            print("Incorrect\n")

    print(f"Your score: {score}/{len(questions)}")
    again = input("Play again: yes/no ")
    again_1 = True if again == "yes" else False
    if again_1 == True:
        run()
run()
