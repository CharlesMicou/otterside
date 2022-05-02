import asyncio
import websockets

async def echo(websocket):
    async for message in websocket:
        print(f"Received {message} from a client")
        to_send = "Here's some data"
        await websocket.send(to_send)

async def main():
    async with websockets.serve(echo, "localhost", 7777):
        await asyncio.Future()  # run forever

asyncio.run(main())
