import React, { Component } from 'react';
import RecipesList from './RecipesList'
class App extends Component {
    constructor(props) {
      super(props);
      this.state = {
        recipes: {}

      }
    }
    render() {
      return(
        <div className="main-wrapper">
        <h1>hello from App.js</h1>
        </div>
      )
    }
  }

export default App;
