class Time:
    def __init__(self, hh, mm):
        self.hh = hh
        self.mm = mm
    
    def addTime(t1, t2):
        h = t1.hh + t2.hh
        m = t1.mm + t2.mm
        if m >= 60:
            h = h + (m // 60)
            m = (m % 60)
        return Time(h, m)
    
    def displayTime(self):
        print(f"{self.hh}:{self.mm}")

    def displayMinute(self):
        print(f"{(self.hh * 60) + self.mm} minutes")


t1 = Time(1, 20)
t2 = Time(2, 50)
t1.displayTime()
t2.displayTime()
Time.addTime(t1, t2).displayTime()
t1.displayMinute()
t2.displayMinute()
