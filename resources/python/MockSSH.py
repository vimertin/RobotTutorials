class MockSSH:
    def open_connection(self, host, port):
        print(f"SSH: Opened connection to {host}:{port}")

    def login(self, username, password):
        print(f"SSH: Logged in with username {username} and password {password}")

    def read_until_prompt(self):
        return "SSH: Read until prompt"

    def close_connection(self):
        print("SSH: Closed connection")