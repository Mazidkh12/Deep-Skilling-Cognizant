import { useState } from "react";

function CurrencyConvertor() {

    const [amount, setAmount] = useState("");
    const [currency, setCurrency] = useState("");

    function handleSubmit(e) {

        e.preventDefault();

        const euro = parseFloat(amount);

        const rupees = euro * 80;

        alert(
            `Converting to Rupees Amount is ${rupees}`
        );

    }

    return (

        <div>

            <h1 style={{ color: "green" }}>
                Currency Convertor!!!
            </h1>

            <form onSubmit={handleSubmit}>

                <label>

                    Amount :

                    <input
                        type="number"
                        value={amount}
                        onChange={(e) =>
                            setAmount(e.target.value)
                        }
                    />

                </label>

                <br /><br />

                <label>

                    Currency :

                    <input
                        type="text"
                        value={currency}
                        onChange={(e) =>
                            setCurrency(e.target.value)
                        }
                    />

                </label>

                <br /><br />

                <button type="submit">
                    Submit
                </button>

            </form>

        </div>

    );

}

export default CurrencyConvertor;