package encryption;

public class Encryption {

	public String encrypt(String e)
	{
		int length=e.length();
		String pass=" ";
		int ascii=175,stringtoint;
		char[] orginalkey=e.toCharArray();
		char encryptkey[]=new char[length];
		for (int i=0;i<length;i++)
		{
			stringtoint=orginalkey[i];
			stringtoint=(ascii)-stringtoint;
			encryptkey[i]=(char)stringtoint;
		}
		pass=String.valueOf(encryptkey);
		return pass;
	}
	public String dencrypt(String password)
	{
		int length=password.length();
		String pass=" ";
		int ascii=175,inttostring;
		char[] orginalkey=password.toCharArray();
		char dencryptkey[]=new char[length];
		for (int i=0;i<length;i++)
		{
			inttostring=orginalkey[i];
			inttostring=(ascii)-inttostring;
			dencryptkey[i]=(char)inttostring;
			System.out.print(dencryptkey[i]+" ");

		}
		pass=String.valueOf(dencryptkey);
		return pass;
	}
}
