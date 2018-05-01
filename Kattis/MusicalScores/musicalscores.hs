main :: IO ()
main = interact (showResult . doTheWork . parseInput) 

parseInput :: String -> a
parseInput = undefined

doTheWork :: a -> b
doTheWork = undefined

showResult :: b -> String
showResult = undefined


playableIn :: Song -> Scale -> Bool
playableIn s k = null (nub s \\ scale k)

scale :: Note -> [Note]
scale n = scanl (\x g -> g x) n [tone,tone,semitone,tone,tone,tone,semitone]

tone = semitone . semitone

semitone Gs = A
semitone n = succ n

type Song = [Note]
type Scale = Note --scale is a single note
data Note = A | As | B | C | Cs | D | Ds | E | F | Fs | G | Gs
    deriving Enum

instance Read Note where 
    readsPrec _ "A" = [(A,"")]
    readsPrec _ "As" = [(As,"")]
    readsPrec _ "B" = [(B,"")]
    readsPrec _ "C" = [(C,"")]
    readsPrec _ "Cs" = [(Cs,"")]
    readsPrec _ "D" = [(D,"")]
    readsPrec _ "Ds" = [(Ds,"")]
    readsPrec _ "E" = [(E,"")]
    readsPrec _ "F" = [(F,"")]
    readsPrec _ "Fs" = [(Fs,"")]
    readsPrec _ "G" = [(G,"")]
    readsPrec _ "Gs" = [(Gs,"")]

instance Show Note where
   show A = "A"
   show As = "A#"
   show B = "B"
   show C = "C"
   show Cs = "C#"
   show D = "D"
   show Ds = "D#"
   show E = "E"
   show F = "F"
   show Fs = "F#"
   show G = "G"
   show Gs = "G#"


-- data Note = Note Char Bool
-- data Note = Note String

-- type Note = String --type synonym, transparent type