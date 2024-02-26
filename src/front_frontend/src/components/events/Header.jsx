import React from 'react'

const Header = () => {
  return (
    <div id="header">
        <div id="balance">
            <div id="bal-title">Current Balance</div>
            <div id="bal">0 ICP</div>
        </div>
        <div id="deadline">
            <div id="dead-title">Deadline</div>
            <div id="dead">59:59:30</div>
            
        </div>
        <div id="deposit">
            <div id="dep-btn">Deposit</div>
        </div>
    </div>
  )
}

export default Header