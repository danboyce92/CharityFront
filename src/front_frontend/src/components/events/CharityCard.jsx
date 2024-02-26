import React from 'react'

const CharityCard = ({ name, desc }) => {
  return (
    <div className='vote-card'>
        <div id="char-name">{name}</div>
        <div id="char-desc">{desc}</div>
        <div id="char-btn">Vote</div>
    </div>
  )
}

export default CharityCard