import { useState } from "react";

function EventExample() {

    const [count, setCount] = useState(0);

    function increment() {
        setCount(count + 1);
    }

    function sayHello() {
        alert("Hello! Member!");
    }

    function handleIncrement() {
        increment();
        sayHello();
    }

    function decrement() {
        setCount(count - 1);
    }

    function welcome(message) {
        alert(message);
    }

    function handleClick() {
        alert("I was clicked");
    }

    return (

        <div>

            <h2>{count}</h2>

            <button onClick={handleIncrement}>
                Increment
            </button>

            <br /><br />

            <button onClick={decrement}>
                Decrement
            </button>

            <br /><br />

            <button onClick={() => welcome("Welcome")}>
                Say Welcome
            </button>

            <br /><br />

            <button onClick={handleClick}>
                Click on me
            </button>

        </div>

    );

}

export default EventExample;