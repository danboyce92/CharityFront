import { useState } from 'react';
import { front_backend } from 'declarations/front_backend';
import { Route, Routes, BrowserRouter  } from 'react-router-dom';
import NavBar from './components/NavBar';
import Landing from './components/Landing';
import Events from './components/events/Events';

function App() {
  const [greeting, setGreeting] = useState('');

  function handleSubmit(event) {
    event.preventDefault();
    const name = event.target.elements.name.value;
    front_backend.greet(name).then((greeting) => {
      setGreeting(greeting);
    });
    return false;
  }

  return (
    <main className="App">
      <BrowserRouter>
      <NavBar />
      <Routes>
        <Route path='/' element={<Landing />} />
        <Route path='events' element={<Events />} />
      </Routes>
      </BrowserRouter>
    </main>
  );
}

export default App;
