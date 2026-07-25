import "./index.css";

function App() {

  const officeSpaces = [
    {
      id: 1,
      name: "Tech Park Office",
      rent: 45000,
      address: "Bangalore",
      image: "https://images.unsplash.com/photo-1497366754035-f200968a6e72?w=600"
    },
    {
      id: 2,
      name: "Business Hub",
      rent: 75000,
      address: "Hyderabad",
      image: "https://images.unsplash.com/photo-1497366412874-3415097a27e7?w=600"
    },
    {
      id: 3,
      name: "Corporate Space",
      rent: 95000,
      address: "Mumbai",
      image: "https://images.unsplash.com/photo-1497366811353-6870744d04b2?w=600"
    }
  ];

  return (
    <div className="container">

      <h1>Office Space Rental App</h1>

      {officeSpaces.map((office) => (

        <div className="card" key={office.id}>

          <img
            src={office.image}
            alt={office.name}
          />

          <h2>{office.name}</h2>

          <p>
            <strong>Address:</strong> {office.address}
          </p>

          <p
            style={{
              color: office.rent < 60000 ? "red" : "green",
              fontWeight: "bold"
            }}
          >
            Rent: ₹{office.rent}
          </p>

        </div>

      ))}

    </div>
  );
}

export default App;