import { useState } from 'react';
import { front_backend } from 'declarations/front_backend';
import NavBar from './components/NavBar';
import Landing from './components/Landing';

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
    <main>
      <NavBar />
      <Landing />
    </main>
  );
}

export default App;
