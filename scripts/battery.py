#!/usr/bin/env python
# coding=UTF-8

# Originally by Steve Losh, j-wang adapted for Python 3 with charging status as well
import math, subprocess

p = subprocess.Popen(["ioreg", "-rc", "AppleSmartBattery"], stdout=subprocess.PIPE)
output = p.communicate()[0]

lines = output.splitlines()
o_con = [l for l in lines if b'ExternalConnected' in l][0]
o_max = [l for l in lines if b'MaxCapacity' in l][0]
o_cur = [l for l in lines if b'CurrentCapacity' in l][0]

b_con = 'Yes' in str(o_con)
b_max = float(str(o_max).rpartition('=')[-1].strip()[:-1])
b_cur = float(str(o_cur).rpartition('=')[-1].strip()[:-1])

charge = b_cur / b_max
charge_threshold = int(math.ceil(10 * charge))

# Output

total_slots, slots = 10, []
filled = int(math.ceil(charge_threshold * (total_slots / 10.0))) * u'▸'
empty = (total_slots - len(filled)) * u'▹'

out = (filled + empty).encode('utf-8')
import sys

color_green = '%{[32m%}'
color_yellow = '%{[1;33m%}'
color_red = '%{[31m%}'
color_reset = '%{[00m%}'
color_out = (
    color_green if len(filled) > 6
    else color_yellow if len(filled) > 4
    else color_red
)

if b_con:
    status = u'⚡'
else:
    status = '\U0001F50B'

out = "{}{}{}{} ".format(color_out, out.decode("utf-8"), status, color_reset)
sys.stdout.write(out)
