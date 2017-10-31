function n {
    $EDITOR "${@[@]/#/"$HOME/syncthing/smalldocs/quicknotes/"}"
}

function nrm {
    rm -v "${@[@]/#/"$HOME/syncthing/smalldocs/quicknotes/"}"
}

function nmv {
    mv -v "${@[@]/#/"$HOME/doc/note/"}"
}
