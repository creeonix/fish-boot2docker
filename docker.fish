function docker --description 'Exports boot 2 docker env'
  if [ "running" = (boot2docker status) ]
  else
    echo "VM is not running... booting up and initializing environment"
    command boot2docker up
  end

  for i in (boot2docker shellinit)
    eval $i
  end

  command docker $argv
end
