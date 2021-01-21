import threading

class Thread(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        
        isAlive = getattr(self, "is_alive", None)
        if callable(isAlive):
            self.isAlive = isAlive

Event = threading.Event
