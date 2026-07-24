import CohortDetails from "./CohortDetails";
import cohorts from "./data";

function App() {

    return (

        <div>

            <h1>Cohorts Details</h1>

            {
                cohorts.map(cohort => (

                    <CohortDetails
                        key={cohort.id}
                        cohort={cohort}
                    />

                ))
            }

        </div>

    );

}

export default App;