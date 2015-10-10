## 用户信息


### 缓存用户信息

  使用git进行提交或克隆时repo时会有HTTPS和SSH两种方式，

  SSH方式通过公钥和密钥的方式(sk/ak)形式认证

  HTTPS方式得通过用户名和密码形式认证，为了避免每次都输入用户名和密码

  通过`git config --global credential.helper "cache --timeout=3600000000000"`

  可以将用户名和密码长时间缓存住

### 单独配置用户信息

  因为经常会用到多个git源, 每个git源的username和email都不一样，所以设置全局的信息不合适了

  `git config --global user.email "you@example.com"`

  `git config --global user.name "Your Name"`

  所以有必要为某个repo设置username和email

  可以编辑repos对应目录下的.git/config文件，在最后两行追加

    [user]
        username=example name
        email=example@domain.com
