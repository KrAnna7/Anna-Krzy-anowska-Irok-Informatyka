#include <iostream>

using namespace std;

struct Point
{
	float x;
	float y;

	friend istream &operator >> (istream&, Point&);
};

istream &operator >> (istream& wejscie, Point& ex)
{
	wejscie >> ex.x >> ex.y;
	return wejscie;
}

class Points
{
public:
	Point **tab;
	int n;

	friend ostream& operator<<(ostream&, Points const&);
	Points(){}
	Points(int size)
	{
		tab = new Point*[size];
		for (int i = 0; i < size; i++)
		{
			tab[i] = new Point;
			tab[i]->x = i;
			tab[i]->y = i;
			cout << tab[i]->x << " " << tab[i]->y << endl;
		}
	}

	Point *operator[](int n)
	{
		if (n >= this->n)
		{
			string s = "Nie ma takiego inedexu";
			throw out_of_range(s);
		}
		return tab[n];
	}
};

ostream& operator<<(ostream& wyjscie, Points const& ex)
{
	for (int i = 0; i < ex.n; i++)
	{
		wyjscie << ex.tab[i]->x << endl << ex.tab[i]->y << endl;
	}
	return wyjscie;
}

class PointsOperations
{
public:
	friend class Points;
	static Point *closestToTheCenter(const Points &p)
	{
		float s1 = 0, s2 = 0;
		for (int i = 0; i<p.n; i++) {
			s1 += p.tab[i]->x;
			s2 += p.tab[i]->y;
		}
		s1 /= p.n;
		s2 /= p.n;

		Point *result = new Point;
		float x = sqrt(pow(s1 - p.tab[0]->x, 2) + pow(s2 - p.tab[0]->y, 2));
		result = p.tab[0];
		for (int i = 1; i<p.n; i++) {
			if (x > sqrt(pow(s1 - p.tab[i]->x, 2) + pow(s2 - p.tab[i]->y, 2))) {
				x = sqrt(pow(s1 - p.tab[i]->x, 2) + pow(s2 - p.tab[i]->y, 2));
				result = p.tab[i];
			}
		}
		return result;
	}
};

int main()
{
	Point p;
	p.x = 10;
	p.y = 11;
	Point p2;
	p.x = 10;
	p.y = 11;
	Point p3;
	p.x = 10;
	p.y = 11;
	cout << p.x << endl << p.y << endl;
	Points pp(5);
	cout << pp;
	Point **tab = new Point *[3];
	tab[0] = &p;
	tab[1] = &p2;
	tab[2] = &p3;
	Points ptab;
	ptab.n = 3;
	ptab.tab = tab;
	PointsOperations po;
	cout << po.closestToTheCenter(ptab)->x << " " << po.closestToTheCenter(ptab)->y << endl;

	try {
		cout << ptab[5]->x << endl;
	}
	catch (out_of_range s) {
		cout << s.what() << endl;
	}

	system("PAUSE");
	return 0;
}
