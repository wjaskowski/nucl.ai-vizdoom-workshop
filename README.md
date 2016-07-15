# nucl.ai 2016 Hands-On Deep Q-Learning in Doom Workshop 

## Prerequisites
 * Python 2.7
 * Numpy, 
 * Skimage (scikit-image)
 * [Theano](http://deeplearning.net/software/theano/install.html)
 * [Lasagne (the bleeding-edge version)](http://lasagne.readthedocs.io/en/latest/user/installation.html)
 * [ViZDoom](https://github.com/Marqt/ViZDoom)

## Task 1: Learn the capabilities of the environment
  1. Analyze and execute [examples/python/basic.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/basic.py).
  1. Play with the rendering options (hud, crosshair, resolution, etc.)
  1. Learn how to use [the modes](http://vizdoom.cs.put.edu.pl/tutorial#modes): ``SPECTATOR``, ``PLAYER``, ``ASYNC_SPECTATOR``, ``ASYNC_PLAYER``
  1. Play with the ``tics`` parameter of ``doom.make_action()``
  1. See the sample scenarios in ``ASYNC_SPECTATOR`` mode, observe the rewards on the console ([examples/python/scenarios.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/scenarios.py))
  1. Speed up the time in ``ASYNC_SPECTATOR`` mode ([examples/python/ticrate.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/ticrate.py)).
  1. Play with the other capabilities of ViZDoom:
    - Benchmark your ViZDoom offscreen ([examples/python/fps.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/fps.py))
    - See the depth buffer feature ([examples/python/format.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/format.py)) 
    - Execute multiple instances of Doom at once ([examples/python/multiple_instances.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/multiple_instances.py))
    - Record the game in low-resolution settings and replay it in high-resolution ([examples/python/record_episodes.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/record_episodes.py))
  1. Play the [examples/python/cig_bots.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/cig_bots.py) to get the feeling of the [CIG 2016 ViZDoom Competition](http://vizdoom.cs.put.edu.pl/competition-cig-2016)

## Task 2: Teach your agent to play a basic scenario
  1. Clone this repo
  1. Copy (or make symlinks), so that the system sees ``vizdoom.so`` and the ``vizdoom`` executable, e.g.:
```
ln -s ../ViZDoom/bin/vizdoom
ln -s ../ViZDoom/bin/python/vizdoom.so
```
  1. Execute the [``simple_dqn_task.py``](simple_dqn_task.py), which runs on ``simpler_basic`` scenario, by default. 
    * Note: see [run_cpu.sh](run_cpu.sh)
  1. Analyze the code. Most of the logic is already there. The only thing missing is the body of the ``perform_learning_step()`` function. It is your job to fill it up. Follow the instructions in the comments.  
  1. When your code produces competent agents (mean score of 70-80 points), you might want to see your agent in action in better resolution and color, for which you have two options:
    * Increase the Doom's resolution and set the screen format to ``RGB24`` in ``simpler_basic.cfg``. (You also need to uncomment the ``rgb2gray()`` call in ``preprocess()``). Note that, with higher resolution and color space conversion, the training will take 2-4 more time to complete.
    * Record your agent actions and replay it in rendering settings of your choice (consult [``record_episodes.py``](https://github.com/Marqt/ViZDoom/blob/master/examples/python/record_episodes.py) example). This option does not require retraining the agent.
  1. You might benchmark yourself on this scenario. Can you been your bot?
  1. Next, you can try your code on the ``rocket_basic`` scenario, which is slightly harder.
    * Hint: let the agent learn for 40-50 epochs.

## Notes
  * The scenarios and the code for learning have been prepared so that training your agent should take approximately 1-10 minutes on a CPU, depending on the scenario and rendering settings.
  * You might want to play with ``learning_rate`` and ``frames_repeat`` parameters
  * The solution to Task 2 is provided in [``simple_dqn_solution.py``](simple_dqn_solution.py). Just play with it, if you are not in the mood of a bit of coding.

## Documentation
Currently, ViZDoom documentation consists of a [tutorial](http://vizdoom.cs.put.edu.pl/tutorial) and [examples](https://github.com/Marqt/ViZDoom/tree/master/examples).

## Authors
* [Wojciech Jaśkowski](www.cs.put.poznan.pl/wjaskowski)
* Michał Kempka
