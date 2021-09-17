#### Disk size extension
```text
vagrant plugin install vagrant-disksize
```
example
```text
vagrant.configure('2') do |config|
    config.vm.box = 'ubuntu/xenial64'
    config.disksize.size = '50GB'
end
```