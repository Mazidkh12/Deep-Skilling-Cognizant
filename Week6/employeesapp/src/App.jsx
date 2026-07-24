import { useState } from "react";

import ThemeContext from "./ThemeContext";

import EmployeeList from "./components/EmployeeList";

import { employees } from "./employeeData";

function App() {

    const [theme,setTheme]=useState("light");

    return(

        <ThemeContext.Provider value={theme}>

            <div className="container">

                <h1>Employee Management</h1>

                <button
                    onClick={()=>

                        setTheme(

                            theme==="light"

                            ?

                            "dark"

                            :

                            "light"

                        )

                    }
                >

                    Change Theme

                </button>

                <EmployeeList employees={employees}/>

            </div>

        </ThemeContext.Provider>

    );

}

export default App;