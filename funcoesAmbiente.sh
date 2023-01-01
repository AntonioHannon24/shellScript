#!/usr/bin/env bash

paramentros(){

    [[ -z "$1" ]] && echo "Váriavel nula" || echo "Váriavel não e nula"

}
paramentros "$@"