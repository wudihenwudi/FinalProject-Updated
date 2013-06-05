FinalProject-Updated
=================#1
def check(points):
    m = len(points)
    d = [points[1][0] - points[0][0], points[1][1] - points[0][1]]
    for p in points:
        if(d[0] == 0):
            if(p[0] != points[0][0]):
                return False
        elif(d[1] == 0):
           if(p[1] != points[0][1]):
                return False
        else:
            if(p[0] - points[0][0] != 0):
                if((p[1] - points[0][1]) * d[0] != d[1] *(p[0] - points[0][0])):
                    return False
            else:
                if p[1] != points[0][1]:
                    return False
    return True

check([[1,2,3],[-2,-4,-6],[1.5,3,4.5],[10,20,30]])
check([[1,2,3],[1,2,4],[2,4,6],[10,20,30]])


=======#2
import random
def gen_points(n, d, mu, sigma):
    points = []
    for i in range(0, n-1):
        p = [0] * d
        for j in range(0, d):
            p[j] = random.normalvariate(mu, sigma)
        points.append(p)
    return points
pointlist = gen_points(100,3,0,4)
def gen_list(points):
    valuelist = []
    for i in range(0,len(points)-1):
        p = pointlist[i]
        temp = p[0] + p[1] + p[2]
        if (temp < 0):
            temp = 10
        valuelist.append(temp)
    return valuelist
valuelist = gen_list(pointlist)
def median(values):
    values.sort()
    if(len(values)%2 == 0):
        median = (values[len(values)/2-1] + values[len(values)/2])/2
    else:
        median = (values[len(values)/2])
    return median
median = median(valuelist)
print median
    

gen_points(10,3,0,4)

