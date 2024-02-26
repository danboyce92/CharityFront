import React from 'react'
import CharityCard from './CharityCard'

const charityData = [
    {
        name: "Charity A",
        desc: "Description and link",
    },
    {
        name: "Charity B",
        desc: "Description and link",
    },
    {
        name: "Charity C",
        desc: "Description and link",
    },
    {
        name: "Charity D",
        desc: "Description and link",
    },

];

const Selection = () => {
  return (
    <div id="selection">
    <div id="vote-a">
        <CharityCard name={charityData[0].name} desc={charityData[0].desc} />
    </div>
    <div id="vote-b">
        <CharityCard name={charityData[1].name} desc={charityData[1].desc} />
    </div>
    <div id="vote-c">
        <CharityCard name={charityData[2].name} desc={charityData[2].desc} />
    </div>
    <div id="vote-d">
        <CharityCard name={charityData[3].name} desc={charityData[3].desc} />
    </div>
  </div>
  )
}

export default Selection