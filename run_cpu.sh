#!/usr/bin/env bash
OMP_NUM_THREADS=4 THEANO_FLAGS=mode=FAST_RUN,device=cpu,allow_gc=False,floatX=float32,openmp=True python simple_dqn_task.py
#THEANO_FLAGS=mode=FAST_RUN,device=cpu,allow_gc=False,floatX=float32 python simple_dqn_task.py
