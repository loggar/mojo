struct Logger:
    fn __init__(inout self):
        pass

    @staticmethod
    fn log_info(message: String):
        print("Info: ", message)


fn main():
    Logger.log_info("Static method called.")
    var l = Logger()
    l.log_info("Static method called from instance.")
