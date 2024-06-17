import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import com.example.client 1.0

ApplicationWindow {
    id: main
    visible: true
    width: 640
    height: 480
    title: qsTr("Pretty Calculator")
    Material.theme: Material.Dark
    Material.primary: Material.Indigo

    SwipeView {
        anchors.fill: parent

        Page1Form {
            id: page1
            //visible: true
        }

        Page2Form {
            id: page2
            //visible: true
        }

        Page3Form {
            id: page3
            //visible: true
        }
    }

    Component.onCompleted: {
            console.log("Component loaded, initializing...")

            // Page 1 Logic
            console.log("Setting up Page 1...")
            if (page1.button1) {
                page1.button1.onClicked.connect(button1Clicked)
                console.log("Connected button1")
            } else {
                console.log("button1 not found")
            }

            if (page1.button2) {
                page1.button2.onClicked.connect(button2Clicked)
                console.log("Connected button2")
            } else {
                console.log("button2 not found")
            }

            // Page 2 Logic
            console.log("Setting up Page 2...")
            if (page2) {
                console.log("Page 2 loaded")
            } else {
                console.log("Page 2 not loaded")
            }

            if (page2.button7) {
                page2.button7.onClicked.connect(function() { appendNumber("7") })
                console.log("Connected button7")
            } else {
                console.log("button7 not found")
            }

            if (page2.button8) {
                page2.button8.onClicked.connect(function() { appendNumber("8") })
                console.log("Connected button8")
            } else {
                console.log("button8 not found")
            }

            if (page2.button9) {
                page2.button9.onClicked.connect(function() { appendNumber("9") })
                console.log("Connected button9")
            } else {
                console.log("button9 not found")
            }

            if (page2.buttonAdd) {
                page2.buttonAdd.onClicked.connect(function() { appendOperation("+") })
                console.log("Connected buttonAdd")
            } else {
                console.log("buttonAdd not found")
            }

            if (page2.button4) {
                page2.button4.onClicked.connect(function() { appendNumber("4") })
                console.log("Connected button4")
            } else {
                console.log("button4 not found")
            }

            if (page2.button5) {
                page2.button5.onClicked.connect(function() { appendNumber("5") })
                console.log("Connected button5")
            } else {
                console.log("button5 not found")
            }

            if (page2.button6) {
                page2.button6.onClicked.connect(function() { appendNumber("6") })
                console.log("Connected button6")
            } else {
                console.log("button6 not found")
            }

            if (page2.buttonSubtract) {
                page2.buttonSubtract.onClicked.connect(function() { appendOperation("-") })
                console.log("Connected buttonSubtract")
            } else {
                console.log("buttonSubtract not found")
            }

            if (page2.button1) {
                page2.button1.onClicked.connect(function() { appendNumber("1") })
                console.log("Connected button1")
            } else {
                console.log("button1 not found")
            }

            if (page2.button2) {
                page2.button2.onClicked.connect(function() { appendNumber("2") })
                console.log("Connected button2")
            } else {
                console.log("button2 not found")
            }

            if (page2.button3) {
                page2.button3.onClicked.connect(function() { appendNumber("3") })
                console.log("Connected button3")
            } else {
                console.log("button3 not found")
            }

            if (page2.buttonMultiply) {
                page2.buttonMultiply.onClicked.connect(function() { appendOperation("*") })
                console.log("Connected buttonMultiply")
            } else {
                console.log("buttonMultiply not found")
            }

            if (page2.button0) {
                page2.button0.onClicked.connect(function() { appendNumber("0") })
                console.log("Connected button0")
            } else {
                console.log("button0 not found")
            }

            if (page2.buttonDot) {
                page2.buttonDot.onClicked.connect(function() { appendNumber(".") })
                console.log("Connected buttonDot")
            } else {
                console.log("buttonDot not found")
            }

            if (page2.buttonEqual) {
                page2.buttonEqual.onClicked.connect(function() { calculateResult() })
                console.log("Connected buttonEqual")
            } else {
                console.log("buttonEqual not found")
            }

            if (page2.buttonDivide) {
                page2.buttonDivide.onClicked.connect(function() { appendOperation("/") })
                console.log("Connected buttonDivide")
            } else {
                console.log("buttonDivide not found")
            }

            if (page2.buttonBackspace) {
                page2.buttonBackspace.onClicked.connect(function() { backspace() })
                console.log("Connected buttonBackspace")
            } else {
                console.log("buttonBackspace not found")
            }

            if (page2.buttonClear) {
                page2.buttonClear.onClicked.connect(function() { clearInput() })
                console.log("Connected buttonClear")
            } else {
                console.log("buttonClear not found")
            }

            // Page 3 Logic
            console.log("Setting up Page 3...")
            if (page3) {
                console.log("Page 3 loaded")
            } else {
                console.log("Page 3 not loaded")
            }

            if (page3.fetchDataButton) {
                page3.fetchDataButton.onClicked.connect(function() {
                    if (client) {
                        page3.resultText.text = client.fetchData(page3.personalNumber.text)
                    } else {
                        console.log("client not found")
                    }
                })
                console.log("Connected fetchDataButton")
            } else {
                console.log("fetchDataButton not found")
            }
        }

        // Page 1 Logic
        function button1Clicked() {
            console.log("Button 1 clicked")
            page1.textField1.text = "Button 1 was clicked"
        }

        function button2Clicked() {
            console.log("Button 2 clicked")
            page1.image1.source = "qrc:/images/linux.png"
            page1.image1.visible = true
        }

        // Page 2 Logic
        property string currentInput: "0"
        property string operation: ""
        property string displayOperation: ""
        property bool resultShown: false

        function appendNumber(number) {
            console.log("appendNumber called with:", number)
            if (resultShown) {
                clearInput() // clear the previous result if a new number is being entered
                resultShown = false
            }
            if (number === "." && currentInput.includes(".")) return
            if (currentInput === "0" && number !== ".") {
                currentInput = number
            } else {
                currentInput += number
            }
            updateDisplay()
        }

        function appendOperation(op) {
            console.log("appendOperation called with:", op)
            if (resultShown) {
                resultShown = false
                displayOperation = currentInput // use the result as the first operand for the next operation
            } else if (currentInput === "") {
                operation = ""
                return
            } else if (operation !== "") {
                calculateIntermediateResult()
            } else {
                displayOperation = currentInput
            }
            operation = op
            displayOperation = currentInput + " " + op
            currentInput = ""
            updateDisplay()
        }

        function calculateResult() {
            console.log("calculateResult called")
            if (operation === "" || currentInput === "") {
                return
            }
            let previousInput = currentInput
            calculateIntermediateResult()
            displayOperation = displayOperation + " " + previousInput + " = " + currentInput
            operation = ""
            resultShown = true
            updateDisplay()
        }

        function calculateIntermediateResult() {
            console.log("calculateIntermediateResult called")
            var result = 0
            var firstNumber = parseFloat(displayOperation.split(" ")[0])
            var secondNumber = parseFloat(currentInput)
            switch (operation) {
            case "+":
                result = firstNumber + secondNumber
                break
            case "-":
                result = firstNumber - secondNumber
                break
            case "*":
                result = firstNumber * secondNumber
                break
            case "/":
                if (secondNumber === 0) {
                    currentInput = "Cannot divide by zero"
                    updateDisplay()
                    return
                }
                result = firstNumber / secondNumber
                break
            }
            currentInput = result.toString()
        }

        function updateDisplay() {
            console.log("updateDisplay called")
            if (resultShown) {
                page2.displayText.text = displayOperation
            } else if (operation !== "") {
                page2.displayText.text = displayOperation + " " + currentInput
            } else {
                page2.displayText.text = currentInput
            }
        }

        function backspace() {
            console.log("backspace called")
            if (resultShown) {
                clearInput()
            } else if (currentInput.length > 1) {
                currentInput = currentInput.slice(0, -1)
            } else {
                currentInput = "0"
            }
            updateDisplay()
        }

        function clearInput() {
            console.log("clearInput called")
            currentInput = "0"
            operation = ""
            displayOperation = ""
            resultShown = false
            updateDisplay()
        }

    }
