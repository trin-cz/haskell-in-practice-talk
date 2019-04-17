#!/usr/bin/python

class State:
    def __init__(self,value):
        self._value = value

    def add(self, valueDiff):
        self._value += valueDiff

    @property
    def value(self):
        print "Value was read!"
        return self._value

def main():
    s = State(7)
    s.add(3)
    print s.value

if __name__ == "__main__":
    main()