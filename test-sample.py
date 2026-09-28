import sys
def main():
    print("Hello from imported code!")
    for i in range(3):
        print(f"line {i}")
    return 0
if __name__ == "__main__":
    sys.exit(main())
