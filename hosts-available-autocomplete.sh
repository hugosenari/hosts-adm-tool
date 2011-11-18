have addhosts.sh &&
_addhosts_show()
{
        local cur

        COMPREPLY=()
        cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=($( compgen -W "$(for x in /etc/.hosts/hosts-available/*; do echo $(basename ${x}); done)" -- $cur ) )
}
complete -F _addhosts_show addhosts.sh