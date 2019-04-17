#!/usr/bin/python

class Point:
    def __init__(self,x,y):
        self.x = x
        self.y = y

def main():
    p1 = Point(5,7)
    p2 = p1
    print (p2.x, p2.y)
    p1.x = 211
    print (p2.x, p2.y)

if __name__ == "__main__":
    main()