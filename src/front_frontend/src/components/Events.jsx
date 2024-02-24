import React from 'react'

const Events = () => {
  return (
    <div id="events">
      <div id="container">
        <div id="header">
          <div id="balance">Current Balance</div>
          <div id="deadline">Deadline</div>
          <div id="deposit">Deposit</div>
        </div>
        <div id="votes">
        Votes
          <div id="vote-cont">
            <div>Charity A - %</div>
            <div>Charity B - %</div>
            <div>Charity C - %</div>
            <div>Charity D - %</div>
          </div>
        </div>
        <div id="selection">
          <div id="vote-a">
            <div className='vote-card'>
              <div>Charity A</div>
              <div>Description & link to website</div>
              <div>Button</div>
            </div>
          </div>
          <div id="vote-b">
            <div className='vote-card'>
                <div>Charity B</div>
                <div>Description & link to website</div>
                <div>Button</div>
              </div>
          </div>
          <div id="vote-c">
            <div className='vote-card'>
              <div>Charity C</div>
              <div>Description & link to website</div>
              <div>Button</div>
            </div>
          </div>
          <div id="vote-d">
            <div className='vote-card'>
              <div>Charity D</div>
              <div>Description & link to website</div>
              <div>Button</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Events