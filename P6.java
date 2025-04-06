import java.util.*;

class P6
{
	public static void main(String arg[])
	{
		int no;
		
		Scanner sc=new Scanner(System.in);
		
		System.out.println("Enter NO:");
		no=sc.nextInt();
		
		if(no%2==0)
		{
			System.out.println("No Is Odd ");
		}	
		else
		{
			System.out.println("No Is Even ");
		}
	}
}