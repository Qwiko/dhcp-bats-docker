#!/bin/bash

function setup_suite() {
    run docker compose -f test/test-docker-compose.yaml up -d
}

function teardown_suite() {
    run docker compose -f test/test-docker-compose.yaml down
}