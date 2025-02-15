pipeline {
    agent any

    parameters {
        choice(name: 'Option', choices: ['Option 1', 'Option 2', 'Option 3'], description: 'Select an option')
    }

    stages {
        stage('User Input') {
            steps {
                script {
                    def userInput = params.Option

                    // Condition based on selected option
                    if (userInput == 'Option 1') {
                        echo "Option 1 selected. Performing action 1..."
                        // Perform action 1
                    } else if (userInput == 'Option 2') {
                        echo "Option 2 selected. Performing action 2..."
                        // Perform action 2
                    } else if (userInput == 'Option 3') {
                        echo "Option 3 selected. Performing action 3..."
                        // Perform action 3
                    } else {
                        error("Invalid option selected.")
                    }
                }
            }
        }
    }
}