function docker_exec() {
    docker compose -f test/test-docker-compose.yaml exec -it busybox $@
}

@test "test vendor: ciscopnp" {
    run docker_exec udhcpc -V ciscopnp -q -B -v -O bootfile
    echo ${output}
    [ "$status" -eq 0 ]
    [ "${lines[-1]}" = "http://10.10.10.10/ios/ztp.py" ]
}

@test "test vendor: Arista" {
    run docker_exec udhcpc -V Arista -q -B -v -O bootfile
    echo ${output}
    [ "$status" -eq 0 ]
    [ "${lines[-1]}" = "http://10.10.10.10/eos/ztp.j2" ]
}