function fish_prompt --description 'Write out the prompt'
    printf '\n%s \n%s' (set_color 366578)(__current_path) (set_color white)(printf '\xf0\x9f\x8d\xb5\x04< ')
end

function __current_path
  set pwd_result (pwd)
  if test (string length $pwd_result) -gt (math $COLUMNS - 10)
	  echo -n (set_color --bold 366578) (prompt_pwd) (set_color normal)
  else
	  echo -n (set_color --bold 366578) $pwd_result (set_color normal)
  end
end
