#!/usr/bin/env bash
THEANO_FLAGS=mode=FAST_RUN,device=gpu,allow_gc=False,floatX=float32 python simple_dqn_task.py
