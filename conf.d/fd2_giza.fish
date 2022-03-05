# bind \cg "vi ~/.config/fish/config.fish"

# set -l name (basename (status -f) .fish){_uninstall}

# function $name --on-event $name
    # bind --erase \cg
# end

# abbr --add to 'tm open'


# if not set -q $fd2_current_tmux_session
#   set -U fd2_current_tmux_session "$fish_projects_current_sn"
# end

fd2_define_command -p giza -d "Giza: Helper for running Cairo programs see (run)"

fd2_define_subcommand -p giza -c run -f __giza_run -d "giza run <file.cairo> -- extra options get passed to cairo-run"
