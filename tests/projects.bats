#!/usr/bin/env bats

@test "login" {
    cd tests/projects
    run bash -c "echo foobar | ../../bin/28 login w+test@28.io"
    [ $status -eq 0 ]
}

@test "list projects" {
    cd tests/projects
    run ../../bin/28 projects
    [ $status -eq 0 ]
}

@test "create project" {
    PROJECT_NAME="halfmoonbay"$RANDOM
    cd tests/projects
    run ../../bin/28 create-project $PROJECT_NAME
    run ../../bin/28 list-datasources $PROJECT_NAME
    run ../../bin/28 delete-project $PROJECT_NAME
    [ $status -eq 0 ]
}