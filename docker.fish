function docker --description 'Exports boot 2 docker env'
  if [ "running" = (boot2docker status) ]
  else
    echo "VM is not running... booting up and initializing environment"
    command boot2docker up
  end

  eval (boot2docker shellinit)

  command docker $argv
end
