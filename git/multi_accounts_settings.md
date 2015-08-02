# Git 多账号设置

生产的代码经常会同时向Github,GitCafe或公司内部的Git托管服务PUSH, 于是就有了这个笔记

## 生成多个SSH KEY配置

生成多个SSH KEYS

        $ ssh-keygen -t rsa -C "example1@example.com"
        $ ssh-keygen -t rsa -C "example2@example.com"

在要求键入文件名保存公钥/秘钥, 输入不同的文件名就行:

        Enter file in which to save the key (/Users/baidu/.ssh/id_rsa):id_rsa_gitexample_1

举个例子, 会生成两对Keys

        ~/.ssh/id_rsa_gitexample1
        ~/.ssh/id_rsa_gitexample1.pub

        ~/.ssh/id_rsa_gitexample2
        ~/.ssh/id_rsa_gitexample2.pub

将秘钥加入Keychain

        $ ssh-add ~/.ssh/id_rsa_gitexample1
        $ ssh-add ~/.ssh/id_rsa_gitexample2

也可以删除缓存住的keys

        $ ssh-add -D

也可以检查缓存住的keys

        $ ssh-add -l

## 推送至多个Git代码托管服务仓库

同时向github,gitcafe或公司内部git平台push代码, 编辑`.git/config`文件

        $ vim .git/config

向`.git/config`中添加多个git源url

        $ [remote "origin"]
        $   url = git@github.com:cwgis/configs.git
        $   url = ssh://g@gitcafe.com/username/configs.git
        $   fetch = +refs/heads/*:refs/remotes/origin/*
