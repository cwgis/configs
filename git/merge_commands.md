## git merge文件几种方法

### 合并单个指定文件

 假设主branch是master, 另一个分支是dev_branch; 现在需要把dev_branch的某个文件或
 修改合并到master上, 如果用git merge只能对所有diff进行merge， 没有直接的命令支持某
 几个指定文件的合并。

 但可以通过一些命令的简单组合实现; 例如: dev_branch分支上修改了a.js, 新增一个b.js
 需要合并到master分支上

<pre>
1. git checkout master //切换到maser分支
2. git checkout -p dev_branch a.js // 已经切换到master分支, 把a.js提交到master上
3. git checkout dev_branch b.js // 去掉-p参数, 在master分支上新增b.js\
4. git commit -m "xxx"
</pre>
