
# Quizzler - Multiple Choice Quiz iOS Application

## Project Overview

Quizzler is a multiple-choice quiz iOS application developed using Swift and UIKit. The app presents a series of questions with multiple answers, allowing users to test their knowledge on various topics. The primary goal of this project was to practice implementing interactive user interfaces, managing data flow, and handling logic in a quiz application.

## Key Features

- **Multiple Choice Questions**: Offers a set of questions with multiple answer options.
- **Score Tracking**: Tracks the user's progress and provides a score at the end of the quiz.
- **Engaging User Interface**: Interactive and visually appealing design with animated feedback.
- **Learning-Focused**: Built as part of a learning journey in iOS development using Swift and focusing on game logic and UI interaction.

## Project Output

Here are some screenshots showcasing the app's features:

<h3>Quizzler</h3><img src="https://github.com/MalingaBandara/Quizzler_MultipleChoice-iosApp/blob/main/Readme%20items/Quizer.gif" width="25%" />
<h2>Screens</h2><img src="https://github.com/MalingaBandara/Quizzler_MultipleChoice-iosApp/blob/main/Readme%20items/Screen1.png" width="25%" /> 
<img src="https://github.com/MalingaBandara/Quizzler_MultipleChoice-iosApp/blob/main/Readme%20items/Screen2.png" width="25%" /> 

## Technologies Used

- **Swift**
- **UIKit**
- **MVC Architecture**
- **Xcode for Development**

## Project Structure and Code Explanation

1. **Quiz Logic**:
   - The core logic handles question selection, answer checking, and score tracking.
   ```swift
   struct QuizBrain {
       let quiz = [
           Question(q: "A slug's blood is green.", a: "True"),
           // Other questions
       ]
       // Methods for managing quiz flow
   }
   ```

2. **User Interface**:
   - Utilizes UIKit components like labels, buttons, and progress bars for a smooth quiz experience.
   ```swift
   @IBOutlet weak var questionLabel: UILabel!
   @IBOutlet weak var choice1Button: UIButton!
   @IBOutlet weak var choice2Button: UIButton!
   @IBOutlet weak var progressBar: UIProgressView!
   ```

3. **User Interaction**:
   - Handles user input and updates the UI based on quiz progress.
   ```swift
   @IBAction func answerPressed(_ sender: UIButton) {
       let userAnswer = sender.currentTitle!
       // Check answer and update score
   }
   ```

## Committing Strategy and Learning Insights

The repository follows a commit strategy focused on learning interactive quiz mechanics and UI design in iOS:
- **Initial Setup Commits**: Includes setting up the project, configuring UI elements, and integrating quiz logic.
- **Feature Implementation Commits**: Each commit adds new features, such as question handling, score tracking, and UI updates.
- **UI Enhancements and Bug Fixes**: Commits focus on refining the user interface, optimizing performance, and fixing any issues encountered.
- **Documentation and Commenting**: Commits provide detailed comments and documentation for better code clarity and understanding.

These commit strategies emphasize the learning process and the iterative development of a polished quiz experience.

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/MalingaBandara/Quizzler_MultipleChoice-iosApp.git
   ```
2. Open the project in Xcode.
3. Run the app on an iOS simulator or a connected device.

## Purpose and Future Enhancements

The Quizzler project was developed to practice Swift and UI design while creating an engaging quiz experience. Future enhancements could include adding more questions, customizable quiz categories, and integrating a leaderboard feature.
