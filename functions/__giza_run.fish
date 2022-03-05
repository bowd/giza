function __giza_run
  set src $argv[1]
  if test -z "$src"
    __giza_run_usage
    return
  end

  if not type -q cairo-compile
    echo "cairo-compile not in scope; install cairo or enter the venv"
    return
  end

  if not type -q cairo-run
    echo "cairo-run not in scope; install cairo or enter the venv"
    return
  end

  set dest $src.o.json
  cairo-compile $src --output $dest
  cairo-run --program $dest --print_output --print_info --print_memory --layout=small $argv[2..-1]
end

function __giza_run_usage
  echo 'Usage: giza run <file.cairo>'
end
