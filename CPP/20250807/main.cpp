#include <iostream>
#include <cmath>
#include <windows.h>
using namespace std;

class Point{
private:
    int x,y;
public:
    Point(int xx=0,int yy=0){
        x=xx;
        y=yy;
    }
    Point(Point &p);
    ~Point();
    int getX(){return x;}
    int getY(){return y;}
};
Point::Point(Point &p){
    x=p.x;
    y=p.y;
    cout<<"召唤Point类的复制构造函数"<<endl;
}
Point::~Point(){
    cout<<"召唤Point类的析构函数"<<endl;
}

class Line{
public:
    Line(Point xp1,Point xp2);
    Line(Line &l);
    double getLen(){return len;}
private:
    Point p1,p2;
    double len;
};
Line::Line(Point xp1,Point xp2):p1(xp1),p2(xp2){
    cout<<"召唤Line类的构造函数"<<endl;
    double x=static_cast<double>(p1.getX()-p2.getX());
    double y=static_cast<double>(p1.getY()-p2.getY());
    len=sqrt(x*x+y*y);
}
Line::Line(Line &l):p1(l.p1),p2(l.p2){
    cout<<"召唤Line类的复制构造函数"<<endl;
    len=l.len;
}

int main(int argc, char const *argv[]){
    SetConsoleCP(65001);       // 设置控制台输入为UTF-8编码
    SetConsoleOutputCP(65001); // 设置控制台输出为UTF-8编码
    Point myp1(1,1),myp2(4,5);
    Line line(myp1,myp2);
    Line line2(line);
    cout<<"line的长度为:"<<line.getLen()<<endl<<"line2的长度为:"<<line2.getLen()<<endl;
    system("pause");
    return 0;
}