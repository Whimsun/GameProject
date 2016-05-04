/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package internetprogrammeren.gameprojectdomainnetbeans;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 *
 * @author Tim
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class Result {
    private String description;
    
    public String getDescription(){
        return description;
    }
    
    public void setDescription(String description){
        this.description=description;
    }
    
}
