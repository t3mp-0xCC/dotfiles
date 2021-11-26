function __current_path
  set pwd_result (pwd)
  if test (string length $pwd_result) -gt (math $COLUMNS - 10)
	  echo -n (set_color --bold blue) (prompt_pwd) (set_color normal)
  else
	  echo -n (set_color --bold blue) $pwd_result (set_color normal)
  end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function __git_status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info '<'$git_branch"*"'>'
    else
      set git_info '<'$git_branch'>'
    end

    echo -n (set_color yellow) $git_info (set_color normal) 
  end
end

function fish_prompt --description 'Write out the prompt'
	set -g fish_prompt_git_status_staged "o"
	set -g fish_prompt_git_status_conflicted 'x'
	set -g fish_prompt_git_status_changed '+'
	set -g fish_prompt_git_status_untracked "?"
	set -g fish_prompt_git_status_clean "✔"

if [ $status -eq 0 ]
	set __return (set_color green)"[+]"
else
	set __return (set_color red)"[-]"
end
	echo -e ""
	echo -n (set_color white)"╭─"(set_color normal)
	echo -n (__current_path)
	echo -e ""
	echo -n (set_color white)"╰─"
	echo -n " "
	echo -n  $__return
	echo -n (set_color white)
	echo -n  (__informative_git_prompt)
	echo -n (set_color white)
  echo -e ""
  echo -e "\xf0\x9f\x8d\xb5\x04<"
end