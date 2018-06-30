# Opensees
## tcl 
面向过程，没有`类`！没有`函数`？但是有`过程`
### Variable
* 不需要提前声明类型
* 赋值`set`
* 变量都是字符串，当没有空格时可以省略`双引号`
``` tcl
set a 1
```
### 运算
* 执行运算 `expr`
* 变量置换 `$`
* 命令置换 `[]`
``` tcl
set sqt [expr sqrt($a)]
```
### list
* 创建`list`，求长度`llength`，求某个下标的值`lindex`，在某个下标后面增加`lappend`
* 列表下标从0开始
* 列表数据类型可以不同
```tcl
set lst [list $a $b]
puts [llength $lst]
puts [lindex $lst 0]
set e "Tom"
set index 3
lappend lst $e $index
```
### if
```tcl
if {$a>2} {
    puts True
    }else{
        puts False
    }
```
### foreach
```tcl
foreach name {Tom Jerry} {
    puts $name
}
```
### for
* `incr` 后面不用`$`
```tcl
for {set i 0} {$i < 5} {incr i} {
    puts $i
}
```
### while
```tcl
while {$a<4} {
    puts "Now a = $a"
    incr a
}
```
### 调用
```tcl
source abc.tcl
```
### 过程
```tcl
proc Porcedure {a b c} {
    ...
    return ...
}
```
* 传入参数用`空格`隔开
* 可以return吗？
* 调用
```tcl
Procedure a b c
```
* `upvar`是用来干吗的？？？
### 读写文件
* 读文件 
    * `open`, `read`, `split`, `close`, `llength`
```tcl
set filename a.txt
set inFileID [open $filename r]
set alltext [read $inFileID] 
foreach line [split $alltext \n] {
    if {[llength $line] == 0} {
        continue
    }
    foreach word [split $line]
    ...
}
close $inFileID
```
* 写文件
    * `open`, `puts`
```tcl
set filename a.txt
set outFileID [open $filename w]
puts $outFileID $line
close $outFileID
```




