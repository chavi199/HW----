package Lesson11;

public class MainThreads {

	
	public static void main(String[] args) {
      System.out.println("start");
    
     Thread.currentThread();
     MyTreads mt1=new MyTreads('m'); 
     MyTreads mt2=new MyTreads('o');
     Thread t=new Thread(mt1);
     Thread t1=new Thread(mt2);
     t.start();
     t1.start();
     try {
		t.join();
		t1.join();
	} catch (InterruptedException e) {
		e.printStackTrace();
	}
    System.out.println();
     System.out.println("finish");

     
    
	}

}
