# Intro

This is my attempt to learn ruby on rails. I will be making sample apps by following tutorials. 


# Section 1

### General commands
```
rvm list # List down the ruby versions
rvm use [version ] # Switch the ruby version
rails -v # Current rails version
```

### Generate rails project
```
rails _5.3.4_ new [project_name] # Generate new project 
```

### Run rails project
```
rails s -p [port] # Run rails by specifying a port
rais s --binding=0.0.0.0 -p [port] # Start with with host name and port
```

### Rails console
```
rails c # Open the console
```

### Run a ruby file
```
ruby [filename]
```

# Section 2

### What is Ruby? 

It's a dynamic, OO, Open source programming language developed by Matz using the principles of Zen(minimalistic and productive). It has been for 20+ years. With rails, the popularity of Ruby increased.

However, JRuby and Rubinius, which are popular implementations of ruby are compiled
1. Rubinius -COMPILES(Rubinius compiler(C++))-> BYTECODE -COMPILES(Rubinius JIT Compiler (C++)) @ Runtime-> MACHINE CODE
`rbx compile simple.rb -o simple.bytecode`
2. JRuby - -COMPILES(JRuby compiler(Java)-> BYTECODE -COMPILES(Execute bytecode using JVM (JAVA JIT Compiler)) @ Runtime-> MACHINE CODE

##### Using
```
rvm jruby-head
ruby simple.rb
```

##### Running
```
jrubyc simple.rb
ls
# simple.class simple.rb
javap -c simple.class > simple.bytecode
```
[MORE](https://dzone.com/articles/ruby-inquiry-it-interpreted-or)






 