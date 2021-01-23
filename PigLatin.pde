
  public void setup() 
  {
    String[] lines = loadStrings("words.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i = 0 ; i < lines.length; i++) 
    {
      System.out.println(pigLatin(lines[i]));
    }
  }
  public void draw()
  {
          //not used
  }
  public int findFirstVowel(String word){
  for(int i = 0; i < word.length(); i++)  {
    if(word.charAt(i) == 'a' || word.charAt(i) == 'e'|| word.charAt(i) == 'i' || word.charAt(i) == 'o' || word.charAt(i) == 'u') return i;
  }
  return -1;
}

  public String pigLatin(String sWord)
  
  {
    if(findFirstVowel(sWord) == -1)
    {
      return sWord + "ay";
    }
    if(findFirstVowel(sWord)==0)
    return(sWord + "way");
    if(sWord.substring(0,2).equals("qu"))
    return(sWord.substring(2)+"qu"+"ay");
    if(findFirstVowel(sWord)>=1)
    return(sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+"ay");
    
    else
    {
      return "ERROR!";
    }
    
  }
