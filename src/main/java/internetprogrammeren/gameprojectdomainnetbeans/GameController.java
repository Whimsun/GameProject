/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package internetprogrammeren.gameprojectdomainnetbeans;

import domain.DomainException;
import domain.Game;
import domain.Review;
import domain.ServiceFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Tim
 */
@Controller
@RequestMapping(value = "/game")
public class GameController {

    @Autowired
    public ServiceFacade service;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getGames() {
        return new ModelAndView("games", "games", service.getAllGames());
    }
    
    @RequestMapping(value="/new" ,method=RequestMethod.GET)
    public ModelAndView getNewForm(){
        return new ModelAndView("newgame");
    }
    
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView addGame(@RequestParam("name") String name, @RequestParam("genre")String genre){
        try{
            Game game=new Game(name,genre);
            service.addGame(game);
            return getGames();
        }catch(DomainException exc){
            String error =exc.getMessage()+" And you disabled JavaScript";
            return new ModelAndView("newgame","error",error);
        }
    }
    
    @RequestMapping(value="/detailed/{id}",method=RequestMethod.GET)
    public ModelAndView showReviews(@PathVariable int id){
        Game game=service.getGame(id);
        Double score=game.getAverageScore();
        ModelAndView mav=new ModelAndView("gamereviews");
        mav.addObject("game",game);
        mav.addObject("score",score);
        return mav;
    }
    
    @RequestMapping(value="/detailed/info/{id}",method=RequestMethod.GET)
    public ModelAndView externalInfo(@PathVariable int id){
        Game game=service.getGame(id);
        String URL="http://www.giantbomb.com/api/games?api_key=200692c5077c419fa32d4e3f149648ade91d5f4c&format=json&limit=1&field_list=description&filter=name:";
        URL+=game.getName();
        RestGiantBomb giantBombGame=new RestGiantBomb(URL);
        // GIANTBOMB API KEY    200692c5077c419fa32d4e3f149648ade91d5f4c
        ModelAndView mav=new ModelAndView("gameinfo","result",giantBombGame.getData());
        mav.addObject(game);
        return mav;
    }
    
    @RequestMapping(value="/detailed/{id}",method=RequestMethod.POST)
    public ModelAndView submitReview(@ModelAttribute ("review") Review review ,@PathVariable int id){
        review.setGame(service.getGame(id));
        service.addReview(review);
        return new ModelAndView("gamereviews","game",service.getGame(id));
    }
    
    @RequestMapping(value="/addreview/{id}",method=RequestMethod.GET)
    public ModelAndView addReview(@PathVariable int id){
        return new ModelAndView("addreview","game",service.getGame(id));
    }
    
    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editGame(@PathVariable int id){
        return new ModelAndView("editgame","game",service.getGame(id));
    }
    
    @RequestMapping(value = "/remove/{id}" , method=RequestMethod.GET)
    public ModelAndView removeGame(@PathVariable int id){
        return new ModelAndView("removegame","game",service.getGame(id));
    }
    
    @RequestMapping(value="/remove", method=RequestMethod.POST)
    public String removeConfirmed(@RequestParam ("id") int id){
        Game game=service.getGame(id);
        service.removeGame(game);
        return "redirect:/game.htm";
    }
    
    @RequestMapping(value="confirmedit", method=RequestMethod.POST)
    public String editConfirm(@ModelAttribute ("game") Game game){
        service.updateGame(game);
        return "redirect:/game.htm";
    }
    
    @RequestMapping(value="/detailed/{id}/{revid}")
    public ModelAndView removeReview(@PathVariable int id,@PathVariable int revid){
        Game game=service.getGame(id);
        Review review=service.getReview(revid);
        game.removeReview(review);
        return new ModelAndView("gamereviews","game",service.getGame(id));
    }
    
}
