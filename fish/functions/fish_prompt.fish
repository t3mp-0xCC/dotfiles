

function __current_path
  set pwd_result (pwd)
  if test (string length $pwd_result) -gt (math $COLUMNS - 10)
	  echo -n (set_color --bold blue) (prompt_pwd) (set_color normal)
  else
	  echo -n (set_color --bold blue) $pwd_result (set_color normal)
  end
end


function fish_prompt --description 'Write out the prompt'
    echo -n (__current_path)
    echo -e ""
    echo -e "\xf0\x9f\x8d\xb5\x04<"
end

