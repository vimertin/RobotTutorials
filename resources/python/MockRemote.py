class MockRemote:
    def __init__(self, uri):
        self.uri = uri

    def open_connection(self, host, port):
        print(f"Remote: Opened connection to {host} on port {port} with uri={self.uri}")

    def login(self, username, password):
        print(f"Remote: Logged in with username {username} and password {password}")

    def read_until_prompt(self):
        return "Remote: Read until prompt"

    def close_connection(self):
        print("Remote: Closed connection")