class MockTelnet:
    def __init__(self, newline='LF', encoding='ISO-8859-1'):
        self.newline = newline
        self.encoding = encoding

    def open_connection(self, host):
        print(f"MockTelnet: Opened connection to {host} with newline={self.newline} and encoding={self.encoding}")

    def login(self, username, password):
        print(f"Telnet: Logged in with username {username} and password {password}")

    def read_until_prompt(self):
        return "Telnet: Read until prompt"

    def close_connection(self):
        print("Telnet: Closed connection")