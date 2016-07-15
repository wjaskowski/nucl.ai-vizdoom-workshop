# Nucl.AI Workshop 

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
  1. Play with ``tics`` parameter of ``doom.make_action()``
  1. See the sample scenarios in ``ASYNC_SPECTATOR`` mode, observe the rewards on the console ([examples/python/scenarios.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/scenarios.py))
  1. Speed up the time in ``ASYNC_SPECTATOR`` mode ([examples/python/ticrate.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/ticrate.py)).
  1. Play with the other capabilities of ViZDoom:
    - Benchmark your ViZDoom offscreen ([examples/python/fps.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/fps.py))
    - See the depth buffer feature ([examples/python/format.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/format.py)) 
    - Execute multiple instances of Doom at once ([examples/python/multiple_instances.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/multiple_instances.py))
    - Record the game in low-resolution settings and replay it in high-resolution ([examples/python/record_episodes.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/record_episodes.py))
  1. Play the [examples/python/cig_bots.py](https://github.com/Marqt/ViZDoom/blob/master/examples/python/cig_bots.py) to get the feeling of the [CIG 2016 ViZDoom Competition](http://vizdoom.cs.put.edu.pl/competition-cig-2016)

## Task 2: Teach your agent to play a basic scenario. 
  1. Clone this repo
  1. Analyze and execute the ``simple_dqn_task.py``. 
Most of the code is already there. The only thing that is missing is the body of the ``perform_learning_step()`` function. It is your job to fill it up. Follow the instructions in the comments.
  1. Benchmark yourself on this scenario. Can't you been the bot?  1. When your learning code produces competent agents (mean score of 70-80 points), you might want to see your agent in action in better resolution and color, for which you have two options:
    * Simply, increase the Doom resolution and set ``ScreenFormat`` to ``RGB24`` in (``simpler_basic.cfg``). Then, you need also to uncomment the ``rgb2gray()`` call in ``preprocess()``. With higher resolution
 and color space conversion, the learning will take 2-4 more time to complete.
    * Record how your agent works, and replay it in any resolution (see record_episodes.py). This does not require retraining the agent.
  1. Next, you can try you code on ``rocket_basic`` scenario, which is slightly harder.
    * Hint: let the agent learn for 40-50 epochs.

## Notes
  * The scenarios and the learning code have been prepared so that training your agent should take approximately 1-10 minutes on a CPU depending on the scenario and rendering settings
  * You might want to play with ``learning_rate`` and ``frames_repeat`` parameters
  * The solution to Task 2 is provided in ``simple_dqn_solution.py``. Just play with it, if you are not in the mood of a bit of coding.

## Documentation
Currently, ViZDoom documentation consists of a [tutorial](http://vizdoom.cs.put.edu.pl/tutorial) and [examples](https://github.com/Marqt/ViZDoom/tree/master/examples)