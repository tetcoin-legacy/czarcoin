#!/usr/bin/python

def prob(n, m):
    p = 1.0
    for i in xrange(n):
        p *= (m-i) / (2016.-i)
    return p if p > 0 else 0

def print_prob(n, m):
    print "%d are right, check %d, p = %e" % (m, n, prob(n, m))

import sys
maxm = int(sys.argv[1])
if (len(sys.argv) > 2):
    n = int(sys.argv[2])
    print_prob(n, maxm)
    sys.exit()

for m in xrange(1, maxm):
    for n in xrange(1, 6):
        print_prob(n, m)
    print
