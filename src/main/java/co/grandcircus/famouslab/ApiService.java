package co.grandcircus.famouslab;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.famouslab.model.Complete;
import co.grandcircus.famouslab.model.Response;
import co.grandcircus.famouslab.model.Tiny;

@Component
public class ApiService {
	
	private RestTemplate restTemplate;
	
	{
	    // This configures the restTemplateWithUserAgent to include a User-Agent header with every HTTP
		// request. Some of the APIs in this demo have a bug where User-Agent is required.
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
	        request.getHeaders().add(HttpHeaders.USER_AGENT, "Spring");
	        return execution.execute(request, body);
	    };
	    restTemplate = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}
	
	public List<Tiny> showTiny(){
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		
		Response response = restTemplate.getForObject(url, Response.class);
		List<Tiny> sorted = response.getTiny();
		sorted.sort(Comparator.comparing(Tiny::getYear));
		
		return sorted;
	}
	
	public List<Complete> showComplete(){
		String url = "https://dwolverton.github.io/fe-demo/data/computer-science-hall-of-fame.json";
		
		Response response = restTemplate.getForObject(url, Response.class);
		
		List<Complete> sorted = response.getComplete();
		sorted.sort(Comparator.comparing(Complete::getYear));
		
		return sorted;
	}
	
}
