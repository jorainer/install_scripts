echo "________________________________________________________________________________"
echo "Installing python:\n"
brew install python
brew unlink python && brew link python
## wget https://bootstrap.pypa.io/get-pip.py
pip install --upgrade setuptools
pip install --upgrade pip
pip install numpy
pip install pyserial
pip install pygments-style-solarized
echo "\n\nDone\n\n"
