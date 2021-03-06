##################################################
# git

set git_dirty_color red
set git_not_dirty_color green

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $git_not_dirty_color)$branch(set_color normal)
  end
end

##################################################
# prompt

function fish_prompt
  if [ $status -eq 0 ]
    set status_face (set_color green)"(*'-') > "
  else
    set status_face (set_color blue)"(*;-;) > "
  end

  set -l git_dir (git rev-parse --git-dir 2> /dev/null)
  set prompt (printf '[%s] %s%s%s@%s%s%s: %s%s%s' (date "+%Y-%m-%d %H:%M:%S") (set_color yellow) (whoami) (set_color normal) (set_color cyan) (hostname|cut -d . -f 1) (set_color normal) (set_color $fish_color_cwd) (pwd) (set_color normal))

if test -n "$git_dir"
    echo $prompt "("(parse_git_branch)")"
    echo $status_face
  else
    echo $prompt
    echo $status_face
  end
end

