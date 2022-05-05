#!/bin/bash

function build_cpp_proto() {
  if [ -d "./cpp_msg" ]; then
    rm -rf cpp_msg
  fi

  mkdir cpp_msg
  find . -name "*.proto" | xargs protoc --cpp_out=./cpp_msg
}

function build_py_proto() {
  if [ -d "./py_msg" ]; then
    rm -rf py_msg
  fi

  mkdir py_msg
  find . -name "*.proto" | xargs protoc --python_out=./py_msg
}

build_cpp_proto
build_py_proto
