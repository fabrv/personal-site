# The Tron Nightmare 
![Tron 1982 Movie Still](./static/Tron1982.jpg)

10 years ago I discovered Brainfuck. It was my last year of high-school and I stumbled upon a cryptic looking website about a supposedly hard language to master. I don't know how I got there but it was Cristofani's [brainfuck.org](https://brainfuck.org) website (although back then it had a different URL), I went through all the links, looked at every file and then I discovered the [esolangs wiki](https://esolangs.org/wiki/Main_Page).

For the next few months Brainfuck was the only thing I could focus on, I read all the legends of the early 2000s esolangs scene and checked every compiler and interpreter I could and of course made my own language; all the basic things that you **HAVE** to do once you discover the world of esolangs.

Eventually university started and forgot about it until the 2018-2019 winter break when I had a Brainfuck relapse and this time I went all in, I was writing *everything* in Brainfuck by hand, even university homework. 

## The inception
The original compiler by Urban Muller came with the challenge "Who can program anything useful with it? :)", a challenge that surprisingly isn't that hard, a simple glance through the esolangs wiki is enough to see how easy it is to achieve but I wanted to do much more, I wanted to do something ✨**i m p r e s s i v e** ✨. 

That's when the idea came up. What if I made a full ANSI C to Brainfuck compiler? I looked all over the internet and I couldn't find a single person that had succeeded, many had tried and failed, some went halfway. 

I knew of Palailogos' [asm2bf](https://github.com/iczelia/asmbf) project, the ultimate Brainfuck Assembly, that was the closest there was. In fact that project is so good I could have tried to write a C front-end for it and leave the rest to `asm2bf`. But that was boring! ¿A C to Assembly compiler? That has been done a million times. That was not *impressive* enough. 

I NEEDED TO MAKE THE WHOLE STACK MYSELF. Preferably written by hand in Brainfuck.

## The first attempt
![The Dragon Book on a white table](./static/dragonBook.jpg)

Writing code in Brainfuck is actually not that hard but it's a serious test of patience. It is one of those things that is more tedious than hard. The real problem was that I knew very little about compilers. But with the confidence that only ignorance can provide I embarked on the first layer of the abstraction cake; an assembly-like language written entirely in BF. 

And that's how [brasic](https://github.com/fabrv/brasic/blob/master/brasm.bf), the buggiest compiler ever written was born. Just to have an idea on how bad it is, this is a quote from the README:
```
  [...] practically anything will break the compiler.
  So here are some things to have in mind to make it work:
  - Every command has to be written exactly as in the commands section.
  - Your text editor must do "Return Carriage, New Line".
  - Every line has to have code.
  - Tabs must be double-spaces.
  - No trailing spaces after each line.
  - Every command has to have a parameter.
  - No trailing line after code.
  - Strings (STR) must have opening and closing ""
```

Coincidentally that year I took Compilers 101 and like most other CS students we read through the [Dragon Book](https://en.wikipedia.org/wiki/Compilers:_Principles,_Techniques,_and_Tools) and had a semester long project of building a [Decaf to Assembly compiler](https://github.com/fabrv/js-brasm).

All semester I tried to steer the project so I could reuse it for my Brainfuck compiler. While my classmates used C# or Java; I used JavaScript. When they targeted 64bit MIPS; I targeted 16bit x86. Even the repo was named `js-brasm`, with the expectation that I would later target my Brainfuck Assembler. 

But that "later" never happened.

## The Nightmare
I did a couple of half-assed attempts throughout the years, certainly I learned something at every try but I never fully committed. And life went on, work, family, friends and other hobbies were always ahead of the C-to-Brainfuck project. 

That was until October of last year, when I had a nightmare about being inside a Brainfuck Machine, Tron (1982) style, and I had to write a C program to return to the real world. After successfully making it I woke up agitated, it's stupid, I know, but it *felt* scary. More importantly I had come up with a new way of making a BF compiler, an idea so ingenious I wrote it down and went back to bed.

![drawing of an architeture I dreamt](./static/notes.jpg)

The following morning I tried to make the program from the notes, unsurprisingly it didn't work. However I got the Brainfuck-mania again, and this time I was determined to commit. 

-----
If you are interested in a more technical deep dive [read the next entry >>](#)
