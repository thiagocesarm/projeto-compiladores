# How to run the parser

## 1. Installing the Antlr lib
### OSX

```sh
$ cd /usr/local/lib
$ sudo curl -O https://www.antlr.org/download/antlr-4.7.1-complete.jar
$ export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
$ alias antlr4='java -jar /usr/local/lib/antlr-4.7.1-complete.jar'
$ alias grun='java org.antlr.v4.gui.TestRig'
```

### Linux

```sh
$ cd /usr/local/lib
$ wget https://www.antlr.org/download/antlr-4.7.1-complete.jar
$ export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
$ alias antlr4='java -jar /usr/local/lib/antlr-4.7.1-complete.jar'
$ alias grun='java org.antlr.v4.gui.TestRig'
```

### Windows 

1. Download https://antlr.org/download/antlr-4.7.1-complete.jar.
2. Add antlr4-complete.jar to CLASSPATH, either:
    1. Permanently: Using System Properties dialog > Environment variables > Create or append to CLASSPATH variable
    2. Temporarily, at command line:
        ```sh
        SET CLASSPATH=.;C:\Javalib\antlr4-complete.jar;%CLASSPATH%
        ```
3. Create batch commands for ANTLR Tool, TestRig in dir in PATH
    ```sh
    antlr4.bat: java org.antlr.v4.Tool %*
    grun.bat:   java org.antlr.v4.gui.TestRig %*
    ```

## 2. Running

```sh
$ antlr4 miniJava.g4
$ javac miniJava*.java
$ grun miniJava program -gui < filename.mini
```
    
