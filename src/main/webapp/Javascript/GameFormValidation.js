/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

    var errorname;
    var errorgenre;
function validateForm(){
    var errorcount=0;
    var errors=document.getElementById("errorjs");
    var namefield=document.getElementById("name");
    var name= namefield.value;
    var genrefield=document.getElementById("genre");
    var genre=genrefield.value;
    if(name===null||name===""){
        errors.innerHTML=errorname+"<br>";
        errorcount++;
    }
    if(genre===null||genre===""){
        errors.innerHTML+=errorgenre;
        errorcount++;
    }
    if(errorcount>0){
        errors.style="display:block";
        return false;
    }
    
    return true;
    
    
}

