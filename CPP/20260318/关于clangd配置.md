前几天正常使用vscode发现配置好的clangd语言服务器突然崩溃了，反复试了几次找到了问题所在：
一般是打开C语言源文件的时候语言服务器就会崩溃，而我当前目录下的.clangd配置文件只包含了C++的CompileFlags。
解决方法也很简单。.clangd配置文件是yaml格式，可以用If判断源文件的拓展名，以适配C和C++源文件不同的编译设置。
```yaml
---
#C++文件设置
If:
    PathMatch: [.*\.cpp, .*\.cxx, .*\.cc, .*\.hpp, .*\.hxx, .*\.hh]
    PathExclude: [.*\.c]
#一些配置
---
#C文件设置
If:
    PathMatch: [.*\.c]
    PathExclude: [.*\.cpp, .*\.cxx, .*\.cc, .*\.hpp, .*\.hxx, .*\.hh]
#一些配置
```
通过在**If**里用**PathMatch**和**PathExclude**两个词语来包含和排除不想要的代码文件，并通过三个短横线来分割C/C++的语言服务器配置。
[]中为正则表达式，用于匹配不同文件的拓展名。这点在clangd文档里写的很清楚。
一番实验下来，就没有再发生过clangd崩溃的错误了。  

.clangd配置文件写法可以参考官方文档：[clangd配置文件文档](https://clangd.llvm.org/config)  

参考[.clangd](./.clangd)
