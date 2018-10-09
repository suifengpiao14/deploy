# gitlab-ci 部署
------------------
## 安装方法
 composer require --dev suifengpiao14/deploy:dev-master .
## 配置
部署分3个环境dev、test和prod 本别对应gitlab上dev、master 2个分支和  tag 名以v打头的标签
1. 在gitlab-ci-multi-runner 运行机上安装ansible，并配置开发、测试、正式 主机组名为 dev、test、prod
2. 利用命令 gitlab-ci-multi-runner register 注册一个共享runner

## 使用方法
 安装好后，当有push到dev分支时，自动部署到开发机上，当有push（merge）到master分支时，自动部署到测试机上，当打tag出release版本时，自动部署到正式环境
 
## 文件说明
 .gitlab-ci.yml 触发gitlab-ci runner，分3个阶段，build（压缩并发包到目标服务器） test（执行自动化测试） deploy（修改软连、重启php-fpm）
 .playbook-build.yml build阶段使用的ansible-playbook 配置文件
 .build.sh 项目自身在发布后需要执行的命令，可自行补充


