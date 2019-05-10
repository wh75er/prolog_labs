#!/bin/sh

set -e
set -x
set -u

ARGS_make_pdflatex="LATEX=pdflatex"
ARGS_make_xelatex=""
ARGS_cmake_pdflatex="-DPREFER_XELATEX=false"
ARGS_cmake_xelatex=""

RESDIR="/doc/results"

build() {
    local buildsystem=$1 ; shift
    local latex=$1 ; shift

    local tmpdir="/tmp/build"

    cp -r "$PWD" "$tmpdir"
    (
        cd "$tmpdir"

        succeeded=1

        if test $buildsystem = cmake ; then
            mkdir build
            (
                cd build
                eval 'cmake .. $ARGS_cmake_'$latex
                make
                cp rpz.pdf ..
            ) || succeeded=0
        else
            eval 'make $ARGS_make_'$latex || succeeded=0
        fi

        if test $succeeded -eq 1 ; then
            tgt_file="$RESDIR/rpz-${buildsystem}-${latex}.pdf"
            cp rpz.pdf "$tgt_file"
            chmod a=rwx "$tgt_file"
        fi
    )
    rm -rf "$tmpdir"
}

mkdir "$RESDIR"
chmod a=rwx "$RESDIR"

for buildsystem in make cmake ; do
    for latex in pdflatex xelatex ; do
        build ${buildsystem} ${latex}
    done
done
