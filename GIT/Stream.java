package Lesson15;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class Stream {

	public static void main(String[] args) {
    		ArrayList<Integer> num =new ArrayList<>(Arrays.asList(1, 2, 3, 4,2));
    		
    		List<Integer> sq =num.stream().map(x->x*x).distinct().collect(Collectors.toList());
    		System.out.println(sq);
//    		2.	עבור אוסף של איברים מסוג מחרוזת לספור את האיברים המכילים מחרוזת ריקה.
    		List<String>l= Arrays.asList("yakov","chavi","st","","");
    	    long c=l.stream().filter(x->x.isEmpty()).count();
    	    System.out.println(c);
    	   
    	    List<String>l1= Arrays.asList("yakov","chavi","sttttt1","","");
    	    long c1=l1.stream().filter(x->x.length()>3).count();
    	    System.out.println(c1);
    	   
    	    List<Integer>l2=Arrays.asList(1,2,1,2);
    	     double c2=l2.stream().mapToDouble(x->x*x).average().orElse(0);
    	    System.out.println(c2);
    	   
    	    List<String>l3= Arrays.asList("yakov","chavi","sttttt1");
    	    System.out.println(l3.stream().sorted().findFirst().orElse("ki"));
    	   
    	    
    	    List<String>l4= Arrays.asList("sakov","shavi","sttttt1");
    	    l4.stream().filter(x->x.startsWith("s")||x.startsWith("S")).sorted().forEach(System.out::println);
    	    
    	    List<String>l5= Arrays.asList("sakov","ahavi","sttttt1");
    	    l5.stream().filter(x->x.startsWith("a")).sorted().forEach(System.out::println);
    	    //////
    //	    Product []p= {new Product(1,"aa",9),new Product(2,"ghg",9876),new Product(3,"dfhuvjh",45)};
    	    Product[] p = {
    	            new Product(1, "aa", 9),
    	            new Product(2, "ghg", 9876),
    	            new Product(3, "dfhuvjh", 45)
    	        };
    	
    	    
    	    List<Product> prl = Arrays.asList(p);

    	    List<Integer> O50 = prl.stream()    
    	            .filter(prod -> prod.getPrice() > 50)
    	            .map(prod -> prod.getId())  
    	            .collect(Collectors.toList());
    	    System.out.println(O50);
    	    
    	  //  List<Integer> a2 = prl.stream()
    	   // 		.forEach(prod -> prod.DIscount(10)).    // משתמשים ברשימה, לא במערך
    	            
    	   // System.out.println(a2);
    	    
    	    List<Product> products = Arrays.asList(new Product(1, "fdbfd", 50),new Product(2, "dbb", 70),
    	    	     new Product(3, "gbf", 30));   	    	    
    	    	String result = products.stream()
    	    	    .map(pt -> "product:" + pt.getName()) 
    	    	    .collect(Collectors.joining(", ")); // מחבר את כל המחרוזות עם פסיקים

    	    	System.out.println(result);
    	    	
    	  List<Product> discounted = products.stream() .peek(pr -> pr.DIscount(-10)) 
    	   .collect(Collectors.toList());

    	    		discounted.forEach(System.out::println); 
    	    		
 //?  Map<Integer, Product> productMap = products.stream()
  // .collect(Collectors.toMap(Product::getId, py -> py));

 // System.out.println(productMap);
    	    		//לבדוק למה זה עדיין לא עובד...
    	    		//..אפילו שזה
    	    		
    	    		
	

    	    

    	    
    	   
    	    
    	    
    	    
 
	}

}
