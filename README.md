Readme
======

Mlhamel base docker image:

    $ mkvirtualenv mlhamel.base

    $ python setup.py develop

    $ make
    ....
    Installing collected packages: pip, setuptools, wheel
    Successfully installed pip-7.1.0 setuptools-18.0.1 wheel-0.24.0
    ---> e650478aceb8
    Removing intermediate container 6d7bb6f43816
    Successfully built e650478aceb8

    $ make tag revision=e650478aceb8
    $ make push
