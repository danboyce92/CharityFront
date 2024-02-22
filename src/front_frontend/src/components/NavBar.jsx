import React from 'react'
import { Link } from "react-router-dom";

const NavBar = () => {
  return (
    <div id="nav-bar">
        <div id="logo">
          <Link to="/"><div>LEMBAS</div></Link>
            
        </div>
        <div id="nav-list">
          <ul>
            <li><Link to="/events">Events</Link></li>
            <li>About us</li>
            <li>FAQ</li>
            <li>Login</li>
          </ul>
        </div>
    </div>
  )
}

export default NavBar