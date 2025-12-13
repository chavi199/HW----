package Lesson11;

public class MyTreads implements Runnable {
private char c;

public MyTreads(char c) {
	
	this.c=c;
}
	@Override
	public void run() {
      try {
    	  for (int i = 0; i < 50; i++) {
			System.out.print("  "+c+i+c+"  ");
			if(i%10==0)System.out.println();
//			Thread.sleep(10);
			
		}
    	  
	}
      catch (Exception e) {
	}

}
}