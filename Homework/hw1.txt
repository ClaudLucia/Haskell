We'll give you a lambda expression. 
Keeping in mind both alpha equivalence and how multiple heads are nested, 
choose an answer that is equivalent to the listed lambda term.

1. λxy.xz 
Correct answer: λmn.mz

2. λxy.xxy 
Correct answer: λa.(λb.aab)

3. λxyz.zx 
Correct answer: λtos.st


Chapter Exercises
We're going to do the following exercises a bit differently than what 
you'll see in the rest of the book, as we will be providing some answers and 
explanations for the questions below. Combinators or not. 
Determine if each of the following are combinators:

1. λx.xxx 
Combinator? Yes, because x is bound 

2. λxy.zx 
Combinator? No because z is not bound 

3. λxyz.xy(zx) 
Combinator? Yes, they are all bound 

4. λxyz.xy(zxy) 
Combinator? Yes, because all the variables are bound 

5. λxy.xy(zxy) 
Combinator? No, because the x and y are bound but z is free 


Normal form or diverge? 
Determine if each of the following can be 
reduced to a normal form or if they diverge.

1. λx.xxx 
Normal or Divergent? Normal because it is not being replaced by another argument 

2. (λz.zz)(λy.yy) 
Normal or Divergent? Divergent because if we replace every instance of z with
λy.yy then the result would become circular, or divergent.

3. (λx.xxx)z 
Normal or Divergent? Normal because after x is replaced we would be left with zzz. 


Beta reduce Evaluate (that is, beta reduce) 
each of the following expressions to normal form. 
We strongly recommend writing out the steps on paper with a pencil or pen.

1. (λabc.cba)zz(λwv.w) 
Beta normal form: z 
Derivation: (λa.λb.λc.cba)(z)(z)(λw.λv.w)
			(λb.λc.cbz)(z)(λw.λv.w)
			(λc.czz)(λw.λv.w)
			(λw.λv.w)(z)z
			(λv.z)z
			z

2. (λx.λy.xyy)(λa.a)b 
Beta normal form: bb 
Derivation: (λy.(λa.a)yy)(b)
			(λa.a)(b)b
			bb

3. (λy.y)(λx.xx)(λz.zq) 
Beta normal form: qq 
Derivation: (λx.xx)(λz.zq)
			(λz.zq)(λz.zq)
			(λz.zq)(q)
			qq
			
4. (λz.z)(λz.zz)(λz.zy) 
Hint: alpha equivalence. 
Beta normal form: yy 
Derivation: (λz.zz)(λz.zy)
			(λz.zy)(λz.zy)
			(λz.zy)(y)
			yy

5. (λx.λy.xyy)(λy.y)y 
Beta normal form: yy 
Derivation: (λy.(λy.y)yy)y
			(λy.y)(y)y
			yy

6. (λa.aa)(λb.ba)c 
Beta normal form: aac 
Derivation: (λb.ba)(λb.ba)c
			(λb.ba)(a)c
			aac

7. (λxyz.xz(yz))(λx.z)(λx.a) 
Beta normal form: λz*.za 
Derivation: (λx.λy.λz.xz(yz))(λx.z)(λx.a)
			(λy.λz*.(λx.z)z*(yz*)(λx.a)
			(λz*.(λx.z)z*((λx.a)z*)
			(λz*.z((λx.a)z*)
			λz*.za 
			
			
			