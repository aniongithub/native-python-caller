# cython: language_level=3
import sys
sys.path.insert(0, '')

from quacker import quack

cdef public void call_quack():
    quack()