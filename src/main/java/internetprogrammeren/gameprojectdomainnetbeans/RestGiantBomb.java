/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package internetprogrammeren.gameprojectdomainnetbeans;

import java.util.Collections;
import org.springframework.web.client.RestTemplate;
import org.springframework.http.client.ClientHttpRequestInterceptor;

/**
 *
 * @author Tim
 */
public class RestGiantBomb {
    private String url;
    RestTemplate restTemplate;
    ClientHttpRequestInterceptor interceptor=new XUserAgentInterceptor();

    public RestGiantBomb(String url) {
     this.url=url;   
     restTemplate=new RestTemplate();
     restTemplate.setInterceptors(Collections.singletonList(interceptor));
     //200692c5077c419fa32d4e3f149648ade91d5f4c
    }
    
    public Result getData(){
        GiantBombGameEntry response=restTemplate.getForObject(url, GiantBombGameEntry.class);
        return response.getResults().get(0);
    }
    
}
