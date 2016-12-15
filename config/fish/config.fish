
#Command aliases. Because lazy
#debian 
alias ag "apt-get"
alias ap "aptitude"

#arch linux
alias p "sudo pacman"
alias ya "yaourt"
function fish_greeting
end
#slightly forked from l theme 
#based off my bash PS1
function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end
function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
    set -l cyan (set_color cyan)
    set -l blue (set_color blue)
    set -l uzr $cyan(whoami)
    set -l cwd $blue(prompt_pwd)
    set -l white (set_color white)
    set -l green (set_color green)
    set -l host $green(cat /etc/hostname)
    if [ (_git_branch_name) ]
    	set git_info $green(_git_branch_name)
    	set git_info ":$git_info"
    if [ (_is_git_dirty) ]
      	set -l dirty "*"
      	set git_info "$git_info$dirty"
      	end
     end
    echo -n -s $white'['$uzr$white'@'$host$white'['$cwd $git_info $white']'$white'$'
end


#Nvidia Jetson TK1 cuda stuff for fish
#set -gx PATH /usr/local/cuda-6.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#set -gx LD_LIBRARY_PATH /usr/local/cuda-6.5/lib:
#set -gx  __GL_PERFMON_MODE 1

#ARM cross compiler for fish (testing)
#set -gx PATH ${PATH}:/root/arm-stuff/gcc-arm-linux-gnueabihf-4.7/bin
