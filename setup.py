import os

from setuptools import setup, find_packages

here = os.path.abspath(os.path.dirname(__file__))
README = open(os.path.join(here, "README.md")).read()

install_requires = [
    "bumpversion",
]

setup(
    name="mlhamel.base",
    version="0.2.0",
    description="mlhamel.base image for docker",
    long_description=README + "\n\n",
    author="Mathieu Leduc-Hamel",
    author_email="mlhamel.org",
    url="http://mlhamel.org",
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
    install_requires=install_requires)
