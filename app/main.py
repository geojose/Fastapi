from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health_check(email: str, password:str):
    """
    Health check endpoint.
    - Returns "status": "OK" if the server is running.
    - Provides "uptime fo me" in seconds since the server started.
    """ 
    return {"message": "Hello World"}


@app.get("/")
def read_root():
    return {"message": "Welcome to the FastAPI Demo!"}