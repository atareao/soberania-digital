document := "soberania-digital"

default:
    @just --list
clean:
    @find -type f -iname "*.pdf" -delete
build:
    #!/bin/bash
    if [[ ! -d ./build ]]; then
        mkdir ./build
    fi
    typst compile --root . ./{{document}}.typ ./build/{{document}}.pdf
watch:
    @just build
    typst watch --root . \
        --format pdf \
        --open build/{{document}}.pdf \
        {{document}}.typ \
        build/{{document}}.pdf &
    @zathura build/{{document}}.pdf
view:
    @just build
    @zathura ./build/{{document}}.pdf
