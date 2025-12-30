# 6502 is a Good Starting Point for Beginning Assembly Programming
# 6502是一个入门汇编语言的好起点
#### Why I believe 6502 instruction set is a good first assembly language
#### 为什么我认为初学汇编从6502指令集入门比较好
<!--原文链接：
https://nemanjatrifunovic.substack.com/p/6502-is-a-good-starting-point-for
-->
Deciding where to start is one of the hardest things about learning assembly programming. Unlike high-level languages, assembly is tightly connected to the hardware and deciding which CPU to use is an important first step.  
不知道从何入手是学习汇编语言中最困难的事之一。不像高级语言，汇编和硬件紧密联系，决定使用哪个CPU是一个重要的第一步。  

Here, I will explain why I believe 6502 is a good platform to start learning assembly.  
这里我想解释为什么我认为6502是一个入门汇编的好平台。  

To be clear, I am not saying 6502 assembly itself is a particularly useful skill nowadays, nor that it is particularly pleasant for writing real-life applications. In fact, I do not believe you should spend too much time with 6502 unless you are interested in retro programming as such.  
坦白来说，我并不是说6502汇编本身在当今是一个特别有用的技能，也不是说它特别适合编写实际应用程序。事实上，除非你对复古编程感兴趣，否则我并不认为你应该花太多时间在6502上。  

My arguments for starting with 6502 are in a nutshell:
- 6502 is simple; you can quickly learn assembly programming basic concepts with it;
- 6502 is real; there are plenty devices, emulators, books to help you learn.

我给出以6502入门的理由为以下几句话：
- 6502简单，你能很快靠他掌握汇编语言的基本概念
- 6502实在，有很多设备、模拟器、书籍可以帮助你学习
## Simplicity简单易学
To learn basic assembly programming concept, having a simple system is more important than having a powerful one.  
要学习基本的汇编语言编程概念，一个简单的系统比一个强大的系统更重要。  

6502 contains only 6 registers: one accumulator, two index registers, a status register, a stack register and a program counter which is the only 16-bit register on 6502. Modern x86-x64 CPUs have so many registers that counting them is [almost a research project](https://blog.yossarian.net/2020/11/30/How-many-registers-does-an-x86-64-cpu-have). Small number of registers is constraining for real-life applications but is helpful for understanding what a register is and how it works.  
6502只有6个寄存器：一个累加器，两个索引寄存器，一个状态寄存器，一个堆栈寄存器和一个6502上唯一的16位寄存器——程序计数器。现代x86-64CPU有这么多寄存器，以至于数上面的寄存器[甚至也是个研究项目](https://blog.yossarian.net/2020/11/30/How-many-registers-does-an-x86-64-cpu-have)。寄存器数量少对于实际应用来说是不够的，但有助于理解寄存器是什么以及它是如何工作的。  

The original 6502 instruction set contains [only 56 instructions](http://www.6502.org/users/obelisk/6502/instructions.html). Again, [counting x86-x64 instructions is a non-trivial task](https://stefanheule.com/blog/how-many-x86-64-instructions-are-there-anyway/) and even modern RISC instructions sets like ARM are [far from being small and simple](https://developer.arm.com/documentation/ddi0596/2021-03/Base-Instructions?lang=en). Yet, with 6502 we can quickly learn about major instruction types, including loading/storing, logical and arithmetic, as well as branching. All of them are present in the modern CPUs in some form.  
最初的6502指令集[只有56条指令](http://www.6502.org/users/obelisk/6502/instructions.html)。再次说明，[数x86-64指令并非易事](https://stefanheule.com/blog/how-many-x86-64-instructions-are-there-anyway/)，甚至现代的精简指令集比如ARM[也不是那么简单](https://developer.arm.com/documentation/ddi0596/2021-03/Base-Instructions?lang=en)。然而，使用6502我们可以快速学习主要的指令类型，包括加载/存储、逻辑和算术以及分支。所有这些在现代CPU中都以某种形式存在。  
## Reality实在
6502 was introduced in mid-1970 by MOS technology, as a cheap simplified version of Motorola's 6800 CPU which was previously developed by the same team. The processor quickly became extremely popular and was used in some well-known microcomputers, like Apple II, Commodore VIC 20, Commodore 64 and BBC micro. It is easy to find emulators for all these machines, and even modern re-creations of some of them. Furthermore, successors of 6502 are still being produced at the time of this writing, and there are brand new machines that run it, like Neo6502 by Olimex.  
6502发明于20世纪70年代中期，是MOS技术的一种低成本简化版本，也是由相同的团队开发的Motorola6800CPU的前身。6502处理器很快风靡一时，被用于一些著名的微型计算机，如Apple II、Commodore VIC 20、Commodore 64和BBC micro。很容易找到所有这些机器的模拟器，甚至是一些现代的重构。此外，6502的后续产品仍在生产中，并且有新的机器在运行它，如Olimex的Neo6502。  

There is a plenty of learning material available for free on the internet: books, videos, tutorials. Most of these resources can be found and accessed via [6502.org](http://www.6502.org/) site.  
可以在网上获得很多开源的学习资料：书、视频、教程。在[6502网](http://www.6502.org/)可以找到大多数资料。  

With all that said, if you want to spend only half an hour learning 6502, the place to visit is [Easy 6502](https://skilldrick.github.io/easy6502/) ebook by Nick Morgan. The web page contains not only text and images, but a 6502 assembler and simulator written in JavaScript, so you can actually write some simple 6502 assembly code on the post!  
说了这么多，如果你只想花半个小时学习6502，那么你应该看Nick Morgan写的[Easy 6502](https://skilldrick.github.io/easy6502/)电子书。该网页不仅图文并茂，还有一个用JavaScript编写的6502汇编器和模拟器，所以你可以切实地在该网站上编写一些简单的6502汇编代码！  

Another fascinating resource I encourage you to check out is [Visual6502.org](http://visual6502.org/). Not so much as a tool for learning assembly programming, but an illustration of the simplicity of 6502.  
我推荐你查看的另一个迷人的资源是[Visual6502.org](http://visual6502.org/)。它并非一个学习汇编的工具，而是一个6502的简单说明。
## Alternatives备选
Of course, not everyone will agree that 6502 is a good choice for starting assembly programming. Some other opinions I have heard include:
当然，不是每个人都同意6502是入门汇编的好选择。我所听到的一些其他选项包括：
- Various imaginary CPUs created for teaching purposes; admittedly, some of them have very clean and “perfect” instruction set - in fact I was taught one in high school. However, even the most popular of them lack the wealth of resources for learning and the community of 6502
- 各种为教学目的而创建的虚拟CPU；不可否认，其中一些具有非常简洁和“完美”的指令集——事实上我在高中学过一个。然而，即使是它们中最流行的也缺乏丰富的学习资源和6502那样的社区  
- other “retro” CPUs like Z80, 6809 or 68000. They are all good choices, and in my opinion all three mentioned above are better for serious programming than 6502. But if we are talking about learning basic concepts, the simplicity of 6502 wins. As much as I like Z80 which powered my first computer, it has many more registers than 6502 (and even an “[alternate](https://www.righto.com/2014/10/how-z80s-registers-are-implemented-down.html)” set of registers) and is not as easy to get started with.
- 其他“原始”CPU像Z80、6809或68000。它们都挺好的，在我看来前面提到的这三个都比6502更适合严谨编程。但是如果我们要说学习基本概念，6502的简洁更胜一筹。我也同样喜欢赋能我第一台计算机的Z80，它比6502有更多寄存器（甚至有一组“[可替换的](https://www.righto.com/2014/10/how-z80s-registers-are-implemented-down.html)”的寄存器），但以它入门却并不简单。
- modern RISC architectures such as ARM, MIPS or RISC-V. At some point, a serious assembly programmer should definitely learn some of them. However, they are not ideal to start with: their perceived simplicity is more about internal implementation of the chips than the instruction set. Modern microprocessors are almost exclusively programmed with high-level languages and the direct usage of assembly instruction is not high on the list of priorities for CPU designers nowadays. To illustrate this point, loading a 64-bit constant to a register on ARM64 [can take 4 instructions with bit shifting](https://dinfuehr.github.io/blog/encoding-of-immediate-values-on-aarch64/). Loading a constant to a register with 6502 is trivial in comparison.
- 现代精简指令集架构比如ARM、MIPS或RISC-V。在某种意义上，一个高级汇编程序员应该对它们了然于胸。然而，它们不是理想的入门架构——它们易于理解，更多是因为芯片内部的实现而非其指令集。现代微处理器基本上完全接纳用高级语言编程，对如今的CPU设计者来说直接使用汇编指令没有占据很高的优先级。为了说明这一点，在ARM64的一个寄存器上装载一个64位的常量[需要4条移位指令](https://dinfuehr.github.io/blog/encoding-of-immediate-values-on-aarch64/)。相比之下，在6502上给一个寄存器装载一个常量不需要这么复杂。
- x86-x64. This is arguably the most popular instruction set on modern desktop and server computers, although ARM is catching up. In some respects, it is easier to code than with ARM, given the wealth of instructions that are not constrained by being 32-bit in size and can have variable number of operands; or at least that’s my impression after starting with Z80 which is compatible with x86 predecessor Intel 8080. However, it is still really complex for beginners and four decades of history does not make it any simpler.
- x86-64。尽管ARM后来居上，但它还是在现代桌面和服务器计算机上有争议的最受欢迎的指令集。在某些领域，得益于其大量不被32位所限制的、可变操作数的指令，用它编程比ARM更简单。或者至少，那是我以兼容x86前身——Intel8080的Z80为入门的印象。但是，四十多年过去了它没有任何化简，对新手来说依旧很难懂。
