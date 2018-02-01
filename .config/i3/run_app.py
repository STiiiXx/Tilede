#!/usr/bin/python3
import subprocess

x = 0

with subprocess.Popen(["i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name'"], shell=True, stdout=subprocess.PIPE) as proc:
    x = proc.stdout.read().strip()

print("string: %s" % x)
if len(x) > 1 and int(chr(x[1]).isdigit()):
    print("True")
    x = int(chr(x[0]) + chr(x[1]))
else:
    x = int(chr(x[0]))
print("int:", x)

if x == 1:
    subprocess.run("termite&", shell=True)
elif x == 2:
    subprocess.run("firefox&", shell=True)
elif x == 3:
    subprocess.run("termite -e ranger&", shell=True)
elif x == 4:
    subprocess.run("spotify&", shell=True)
elif x == 5:
    subprocess.run("atom&", shell=True)
#elif x == 6:
#    subprocess.run("&", shell=True)
#elif x == 7:
#    subprocess.run("&", shell=True)
#elif x == 8:
#    subprocess.run("&", shell=True)
elif x == 9:
    subprocess.run("libreoffice&", shell=True)
elif x == 10:
    subprocess.run("gimp&", shell=True)
