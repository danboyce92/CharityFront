import React from 'react'
import Header from './Header';
import Votes from './Votes';
import Selection from './Selection';

const Events = () => {
  return (
    <div id="events">
      <div id="container">
        <Header />
        <Votes />
        <Selection />
      </div>
    </div>
  )
}

export default Events