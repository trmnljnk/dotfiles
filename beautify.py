#! /usr/bin/env python3
import sys

def beautify():
    lines = sys.stdin.readlines()
    parts = []
    maxlen = 0
    for line in lines:
        line = line.rstrip()
        lst = line.split('\t')
        # print("lengte : {:d}".format(len(lst)))
        if maxlen < len(lst):
            maxlen = len(lst)
        parts.append(lst)

    widths = [0] * maxlen
    for partset in parts:
        if len(partset) == maxlen:
            for index, p in enumerate(partset):
                if len(p) > widths[index]:
                    widths[index] = len(p)
    for partset in parts:
        if len(partset) == maxlen:
            for index, p in enumerate(partset):
                frmt = "{{:<{:d}}}".format(widths[index])
                print(frmt.format(p), end=' ')
        print("")

if __name__ == "__main__":
    beautify()
