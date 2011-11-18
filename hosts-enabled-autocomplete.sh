have rmhosts.sh &&
_rmhosts_show()
{
        local cur

        COMPREPLY=()
        cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=($( compgen -W "$(for x in /etc/.hosts/hosts-enabled/*; do echo $(basename ${x}); done)" -- $cur ) )
}
complete -F _rmhosts_show rmhosts.sh