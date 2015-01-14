public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String onlyLetters = new String();
  for(int i =0; i < word.length(); i++){
    if (Character.isLetter(word.charAt(i))){
       onlyLetters = onlyLetters+ word.charAt(i) ; 
    }
  }
  onlyLetters = onlyLetters.toLowerCase();
  
    for(int i=0; i<onlyLetters.length()/2; i++){
      if(onlyLetters.charAt(i) != onlyLetters.charAt(onlyLetters.length()-(i+1))){
        return false;
      }
    }
    return true;
}





