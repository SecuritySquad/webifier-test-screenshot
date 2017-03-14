import sys

def encode(prefix):
    with open(prefix+".png", "rb") as f:
        data = f.read()
        encoded = data.encode("base64")
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
