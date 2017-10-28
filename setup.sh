# link dotfiles/.* files to $HOME/.*

# except refs name
except=(".git" "gitignore")

path=$(cd $(dirname $0);pwd)

for f in $HOME/dotfiles/.??* ;  do
  flag=0
  filename=${f#$path\/}

  for e in "${except[@]}" ; do
    if [ $filename = $e ] ; then
      flag=1
      break
    fi
  done
  
  if [ $flag = 1 ] ; then
    continue
  fi

  cmd="ln -snf $f $HOME/$filename"
  echo $cmd
  $cmd
done
