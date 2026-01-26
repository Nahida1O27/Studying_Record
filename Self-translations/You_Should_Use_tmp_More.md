# You Should Use /tmp/ More
# 你应该更频繁地使用/tmp/目录
<!--原文链接：
https://atthis.link/blog/2025/58671.html
-->
Digging around your file system is probably not many's idea of fun, content to live in your `/home/` directory and that be that. But there can be benefit in doing some exploring, seeing what other functionality your machine offers, and trying to think about them in your contexts.  
在你电脑的文件系统中探索不是大多数人取乐的主意，多数人仅满足于使用`/home/`目录。但是做点探索也是有好处的，去寻找你的机器提供的其他功能，然后尝试在你的日常中思考利用它们。  

One directory that I think should really get more attention and one that I think I keep finding new use-cases for is the [<u>/tmp/</u>](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch03s18.html) directory. Intended for temporary files, `/tmp/` is typically where 'stuff' that a program doesn't need in the long-term goes: temporary backups of files you're working on, your browser caching some content, a holding place for inprogress updates. `/tmp/` also has the unique benefit that it is cleared whenever your machine is reset - it is temporary after all.  
一个我觉得真的更值得关注的、不断寻找新使用场景的目录就是[<u>/tmp/</u>](https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch03s18.html)。`/tmp/`目录是典型的程序“事务”不需要长期使用的地方，它为了临时文件——你正在处理的文件的临时备份、你浏览器缓存的内容、你正在进行的更新的暂存区域，都可以找到它们的家在 `/tmp/` 中。`/tmp/`目录也有独特的优点：每当你的机器重置时，它会被清理——毕竟这是临时的。  

`/tmp/` is largely intended as a space for software to do 'stuff' like those operations already mentioned, but there's nothing to stop you using it for your own purposes. And so, over the past few years, I've really integrated `/tmp/` into regular use to surprising effect.  
`/tmp/`目录主要是为软件提供一个“事务”空间来进行上述操作，但没有什么能阻止你将它用于你自己的目的。因此，在过去的几年里，我已经将 `/tmp/` 目录融入到日常使用中，并取得了令人惊讶的效果。  

One of the most powerful uses I've found is setting my downloads folder to `/tmp/`. It's largely been my experience and from seeing others that the default 'Downloads' folder seems to act as a rubbish bin that never gets emptied. Gigabytes of stuff just sitting in a folder entirely fotgotten about: Why do I still have an ISO file fot Ubuntu 12.04 from over a decade ago? Why are projects that finished years ago still sitting here? `.exes` that seemed to have lingered despite me using Linux for over a decade at this point.  
其中一个我发现的最实用的用法是把`/tmp/`目录设置为我的下载文件夹。它主要源于我的经验，我看到别人的默认“下载”文件夹似乎充当着一个从不会被清理的垃圾桶。数GB被遗忘的数据就这样存放在一个文件夹：为什么我仍然存着一个十年前的Ubuntu12.04的ISO文件？为什么几年前早就结束的清朝老项目仍然在那里？这些看似保留的`.exe`文件在这个时间点嘲讽、激怒了使用Linux超过十年的我。  

It's fascinating time capsule to dig through your own downloads folder but you probably should not have to stumble across files like it's an excavation. `/tmp/` makes for an excellent place to send your downloads instead.  
翻阅你下载的文件夹真是段迷人的时光，但你不应该像考古发掘一样，四处翻找散落的文件。`/tmp/`目录就是一个极好的替换下载文件夹的位置。  

Simple stuff - Printing a packing label? Send it to `/tmp/`, print it, and then forget it rather than it lingering in your downloads. Got an image you want to use in a quick project in [<u>GIMP</u>](https://www.gimp.org/)? Throw it in `/tmp/` rather than wondering why I have a seemingly random JPEG years from now.  
做个简单的事情——打印一段压缩文本？发送到`/tmp/`并打印它，然后忘掉它而非保留在你的下载中。能想象一下，你想要使用一个[<u>GIMP</u>](https://www.gimp.org/)的快速项目吗？把它扔到`/tmp/`目录下而不是去琢磨为什么多年前我能有一个看似随意的JPEG图片。  

Making use of `/tmp/` has also been surprisingly good as part of my general workflow for more 'serious' work. Particularly when doing research, I might need to dig through hundreds of PDFs of research papers, I can just have all of them download to my `/tmp/` folder and just start working through them. There's no risk of them getting dumped in a folder and forgotten and no risk of them taking up space after they're done. Working on a dataset for a project? Put it in `/tmp/`. You can just download the latest version when you come back to it. No steadily accumulating 'v1','v2','v2_final' etc.  
在我更“严肃”的项目里，作为常规工作流的一部分，使用`/tmp/`目录也出乎意料地好。特别是在做研究时，我可能需要翻阅数百篇研究论文的PDF文件，我可以让它们全部下载到我的`/tmp/`文件夹中，然后开始处理它们。这样就没有风险：把它们丢进一个文件夹然后忘掉，也没有在完成后占用空间的风险。正在为一个项目处理数据集？把它放在`/tmp/`目录下。当你回来时，你可以只下载最新版本。没有不断积累的“v1”、“v2”、“v2_final”等等。  

Quick TODOs and other scratchpad-like content is also a perfect fit for `/tmp/`. I used to just throw a note in my home directory like 'monday.md' or '2023-03-05.txt' wtih whatever needed done on that day. `/tmp/` continues to be a good fit for this. I can start the day by putting a text life in `/tmp/`, filling it up with what needs done, and then have it cleared away when I shut down my machine.  
快速待办和其他的类便签内容也完美地适合存放到`/tmp/`目录。我过去只是扔一个笔记到我的home目录下，例如“星期一.md”或者“2023-03-05.txt”，上面写着那天需要做的事。`/tmp/`仍然很适合干这个。我把一个文本文件放入`/tmp/`开始新的一天，写上哪些需要去做，然后当我关闭机器时把它清理掉。  

I use LaTeX a lot which produces a lot of files when compiling documents: a file for your table of contents, a file for your bibliography, an intermediary DVI file on the way to PDF, the resultant PDF etc. These are fine and keeping them readily available can speed up future compilations but more often than not I really don't need them. So, I can add the following to `pdflatex` and just put all the temporary files where they belong:  
我是LaTeX的重度使用者，当它编译文档时会产生一大堆文件：一个目录表文件、一个日志文件、一个PDF中间产物DVI文件、最终产物PDF等等。这些很好，让它们随时可用，能加速未来编译。但大多数情况下我并不真的需要它们。所以，我给`pdflatex`加了如下参数，单单把所有临时文件放到它们该待在的位置：  
```shell
pdflatex -output-directory=/tmp/
```
This does put the finished PDF into `/tmp/` as well but usually I only want to retain the source code and will just compile the document as needed - saving on space.  
同样，这把最终PDF放入`/tmp/`，但是我通常只想要保留源码，需要时就编译成文档——保存在磁盘上。  

While just about any of the ideas I've suggested here _could_ be done in a regular file system with decent organisation, when working in `/tmp/` it is hard to ignore the gentle nudge that everything not saved will be lost. Making heavy use of `/tmp/` forces you to make decisions surrounding what actually matters on your machine: keeping a copy of everything that's ever happened on your machine or keeping what you actually need in long-term storage while treating everything else as disposable? It's a self-tidying workspace without the annoyance of a random file that just ends up sitting around.  
虽然我在这建议的任何想法_都能够_在一个常规文件系统靠精细地组织做到，但当工作在`/tmp/`目录下时，一个很难忽视的是没有保存的都将会丢失。重度使用`/tmp/`强制你去决定切实影响你机器的环境：保存每件发生在你机器上的事物的复制品，还是只保存你长期需要存储的并把其他一切当做一次性用品丢掉？这是一个自我整理的空间，没有随机产生闲置文件的烦恼。  

`/tmp/` offers a lot of surprising applications that stem purely from the fact that it's temporary. It lets you make better decisions surrounding what actually needs stored longer term and what can be discarded. It helps keep check of your storage usage by automatically deleting files that you don't need. It keeps your overall file system tidy by inherently getting rid of stuff you don't need.  
`/tmp/`提供了很多出乎意料的用法，这纯粹因为它是临时的事实。它让你更好地决定哪些是真正需要长期存储的，哪些可以丢弃。它通过自动删除你不需要的文件来帮助你检查存储使用情况。它通过切实地清理掉你不需要的东西来保持你整体文件系统的整洁。  

So consider trying `/tmp/`, if it isn't for you, you can start fresh after the next reboot.  
所以请考虑尝试用`/tmp/`，如果它不适合你，你能在下次启动后仍然能看到崭新的它。  