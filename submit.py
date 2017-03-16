import sys
import base64

def encode(prefix):
    with open(prefix + ".png", "rb") as image_file:
        encoded = 'data:image/png;base64,' + base64.b64encode(image_file.read()).decode("utf-8")
    return encoded

def printresult(encoded, result):
     print prefix + ": {\"result\":\"" + result + "\", \"info\": {\"base64img\": \""+encoded+"\"}}"



if __name__ == "__main__":
    if len(sys.argv) == 2:
        prefix = sys.argv[1]
        encoded = encode(prefix)
        printresult(encoded,"CLEAN")
    else:
        print "ID is missing!"
