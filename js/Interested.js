// import ReactDOM from 'react-dom';
// //import Babel from 'babel';
// import { useState } from 'react';

const { useState } = React;
'use strict';

const e = React.createElement;
//const userLikesEvent = localStorage.getItem("isLiked");
const userName = localStorage.getItem("username");    //null or the user's username.
const eventId = localStorage.getItem("event_id");
console.log(isLiked+ " " + userName); 

function Interested() {
    
    let userLikesEvent = localStorage.getItem("isLiked");  //"true" or "false"
    const [numInterested, setnumInterested] = useState(parseInt(localStorage.getItem("numInterested")));  //Ενδιαφερόμενοι

    let initialButtonClass = null;
    let initialButtonInnerHTML = null;
    if(userLikesEvent === "true"){
      initialButtonClass = "button-33-red";
      initialButtonInnerHTML ="Δεν ενδιαφέρομαι";
    } else {
      initialButtonClass = "button-33-green";
      initialButtonInnerHTML ="Ενδιαφέρομαι";
    }
    
    const [buttonClass, setbuttonClass] = useState(initialButtonClass);
    const [buttonInnerHTML, setbuttonInnerHTML] = useState(initialButtonInnerHTML);

    function updateInterest(event_id, username, is_interested) {
      // Create a data object to send as the body of the request
      const data = {
        event_id: event_id,
        username: username,
        is_interested: is_interested
      };
    
      // Make a fetch request to the server
      fetch('ismgroup68/updateEventLikes.jsp', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
      })
      .then(response => response.json())
      .then(data => console.log(data))
      .catch(error => console.error(error));
    }
    ///
    function handleClick() {
      if(userName === "null") {
        console.log("You have to log in to like this.");
        setbuttonClass("button-33-red");
        setbuttonInnerHTML("Login to like this event");
        //history.push('/login.jsp');
      } else {

        if (buttonClass === "button-33-green"){    //if the user has not liked the event
          //userLikesEvent = "true";
          setnumInterested(numInterested + 1);
          setbuttonClass("button-33-red");
          setbuttonInnerHTML("Δεν ενδιαφέρομαι");
          updateInterest(userName,eventId,"like");
  
        } else {
          //userLikesEvent = "false";
          setnumInterested(numInterested - 1);
          setbuttonClass("button-33-green");
          setbuttonInnerHTML("Ενδιαφέρομαι");
          updateInterest(userName,eventId,"unlike");          
        }      
      }
    }
    ///

    return (
          <div>
          <div className="card interested-card">
            <div className="card-content">
              <div className="card-body interested-card-body">
                <div className="media d-flex">
                  <div className="media-body text-left">
                    <h3 className="success">{numInterested}</h3>
                    <span>Ενδιαφερόμενοι</span>
                  </div>
                  <div className="align-self-center interested-icon">
                    <i className="icon-user success font-large-2 float-right"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br></br>
        
          <button className={buttonClass} onClick={handleClick}>{buttonInnerHTML}</button>
          </div> 
    );

}
const domContainer = document.querySelector('#interested');
const root = ReactDOM.createRoot(domContainer);
root.render(e(Interested));
