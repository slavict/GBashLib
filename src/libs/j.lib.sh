# this library emulate j command
. $(gbl log)
function j(){
    local alias="$1"
    local where=$(v get -t path $alias)
    [ "x$where" == "x" ] && fatal "j could not find path with alias=$alias"
    cd $where
}

function jget(){
    local alias="$1"
    J_GET=$(v get -t path $alias)
    [ "x$J_GET" == "x" ] && fatal "j could not find path with alias=$alias"
}