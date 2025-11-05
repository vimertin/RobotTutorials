class Coordinates:
    def __init__(self, x: int = 0, y: int = 0):
        """Initializes the Coordinates class with default x and y values.
        
        :param x: The initial x-coordinate (integer).
        :param y: The initial y-coordinate (integer).
        """
        self.x = x
        self.y = y

    def _set_coordinates(self, x: int, y: int) -> None:
        """Sets the coordinate values after clicking them on the screen

        :param x: The x-coordinate (integer).
        :param y: The y-coordinate (integer).
        """
        self.x = x
        self.y = y

    def click_on_coordinates(self, x: int, y: int):
        """Clicks on the specified coordinates on the screen.
        
        :param x: The x-coordinate (integer).
        :param y: The y-coordinate (integer).
        """
        self._set_coordinates(x, y)
        return f"Clicking on coordinates: {x}, {y}"
    
    def get_coordinates(self) -> tuple:
        """Returns the coordinates as a tuple of integers.
        
        :return: A tuple containing the x and y coordinates (integers).
        """
        return (self.x, self.y)

    def add_to_coordinates(self, x: int, y: int) -> tuple:
        """Adds the given x and y values to the existing coordinates and returns the new coordinates as a tuple.
        
        :param x: The x-coordinate to add (integer).
        :param y: The y-coordinate to add (integer).
        :return: A tuple containing the new x and y coordinates (integers).
        """
        self.x += x
        self.y += y
        return (self.x, self.y)