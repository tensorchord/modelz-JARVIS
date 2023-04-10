#!/bin/bash

function start_server() {
  # non blocking
  python models_server.py --config config.gradio.yaml
}

function start_gradio_app() {
  # blocking
  python run_gradio_demo.py --config config.gradio.yaml
}

start_server
start_gradio_app
