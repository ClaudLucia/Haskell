--Write a function to convert a string into Pig Latin.  
--Take advantage of the Data.Char module. 
--use both pattern matching and guards as appropriate
pigLatin s = s ++ "ay"

--isVowel :: Char -> Bool
--isVowel c | c == 'a'| c == 'e'| c == 'i'| c == 'o'| c == 'u'| c == 'A'| c == 'E'| c == 'I'| c == 'O'| c == 'U'


vowels:: [Char]
vowels="aeiou"
--isVowel :: Char -> Bool
--isVowel c=-toLower c `elem` vowels
--consonants =[c | c <- [minBound..], toLower c `notElem` vowels, isAlpha]


