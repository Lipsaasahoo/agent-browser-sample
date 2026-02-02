import subprocess
import sys

commands = [
    ["npx","agent-browser", "open", "https://sauce-demo.myshopify.com/"],
    ["agent-browser", "click", "@e1"],
    ["agent-browser", "click", "@e5"],
    ["agent-browser", "click", "@e8"],
]

for cmd in commands:
    print("Running:", " ".join(cmd))
    try:
        subprocess.run(cmd, check=True, shell=False)
    except FileNotFoundError:
        print(f"Error: {cmd[0]} not found. Make sure agent-browser is installed and in PATH")
        sys.exit(1)
