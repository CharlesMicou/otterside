# otterside
Aren't otters great?


## Server

Python 3.8+ (we'll rewrite this in something sane I promise). Instructions for unix.
```
cd game_server
python3 -m venv env
source env/bin/activate
python3 -m pip install -r requirements.txt
python3 run_game_server.py
```
Leave this running.

## Client

Open `client/project.godot` in [Godot 3.3.3](https://downloads.tuxfamily.org/godotengine/3.3.3/)

Run the game (`F5` on Linux/Windows, `cmd + B` on OSX; or the play button at the top right).

Observe your client exchange some messages with the server.

## Auto-deploying client

Any pushes to the main branch will build the client for html5 and deploy it to the github page for this project. Push to main with caution, friends!
