# Homework 3.1

1. \-
2. \-
3. \-
4.
    ```
    michael@michael-pc:~/Documents/virtual-ubuntu-20.04$ vagrant up
    Bringing machine 'default' up with 'virtualbox' provider...
    ==> default: Checking if box 'bento/ubuntu-20.04' version '202010.24.0' is up to date...
    <...>
    ==> default: flag to force provisioning. Provisioners marked to run always will still run.  
    michael@michael-pc:~/Documents/virtual-ubuntu-20.04$ vagrant halt
    ==> default: Attempting graceful shutdown of VM.
    ```
5. По умолчанию выделены следующие ресурсы:
    - 1024 Мб оперативной памяти
    - 1 виртуальный процессор без ограничения ресурса
    - 8 Мб видеопамяти
    - 64 Гб места на жестком диске  
    
6. Конфигурация:
    ```   
    Vagrant.configure("2") do |config|
        <...>
        config.vm.provider "virtualbox" do |vb|  
            v.customize ["modifyvm", :id, "--memory", "2048"]  
            v.customize ["modifyvm", :id, "--cpus, "2"]  
            v.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]  
        end  
    end
    ```

7.  ```
    michael@michael-pc:~/Documents/virtual-ubuntu-20.04$ vagrant ssh
    Welcome to Ubuntu 20.04.1 LTS (GNU/Linux 5.4.0-52-generic x86_64)
    <...>
    vagrant@vagrant:~$ logout
    Connection to 127.0.0.1 closed.```

8. 1792 - переменная HISTSIZE 

   ignoreboth позволяет не записывать в историю команды начинающиеся с пробела и команды, совпадающие с предыдущими

9. 205 - список, выпонленный в фигурных скобках, выполняется в текущем shell. Все изменения останутся после завершения.

   727 - также используется в массивах для обращения к конкретному элементу массива

   791 - также используется в преобразованиях

10. touch {0..100000}
   
    300к не получается, так как:  
    -bash: /usr/bin/touch: Argument list too long  
   
    Потому что выполняется не 300к команд touch, а одна с аргументом:  
    touch 0 1 2 3 4 <...> 300000  
   
    А на длину аргумента, видимо, есть ограничение.  

11. Возвращает true, если /tmp существует и является каталогом

12. ```
    vagrant@vagrant:~$ mkdir /tmp/new_path_directory/
    vagrant@vagrant:~$ cp /usr/bin/bash /tmp/new_path_directory/bash
    vagrant@vagrant:~$ sudo cp /usr/bin/bash /usr/local/bin/bash
    vagrant@vagrant:~$ PATH=/tmp/new_path_directory:/usr/local/sbin:/usr/local/bin:/usr/sbin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
    vagrant@vagrant:~$ type -a bash
    bash is /tmp/new_path_directory/bash
    bash is /usr/local/bin/bash
    bash is /bin/bash
    ```

13. at выполнит задачу в указанное время, а batch когда загрузка системы упадет ниже 1.5

14. ```
    vagrant@vagrant:~$ logout
    Connection to 127.0.0.1 closed.
    michael@michael-pc:~/virtual-ubuntu-20.04$ vagrant destroy
    default: Are you sure you want to destroy the 'default' VM? [y/N] y
    ==> default: Forcing shutdown of VM...
    ==> default: Destroying VM and associated drives...
    ```