import asyncio
import uvicorn

async def serve():
    config = uvicorn.Config("knfunc.func:app", port=8080, log_level="info")
    server = uvicorn.Server(config)
    await server.serve()

def run():
    asyncio.run(serve())
