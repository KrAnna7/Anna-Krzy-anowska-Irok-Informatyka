#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>

using namespace std;

class Villager
{
private:
	string imie;
	int wiek;
	unsigned int max_wiek;
	bool plec;

public:
	Villager()
	{
		srand(time(NULL));
		wiek = rand() % 100;
		int i;
		string tab[4] = { "Anna","Marek","Jan","Barbara" };
		i = rand()%4;
		imie = tab[i];
		cout << "Utworzono obiekt" << endl;
	}

	Villager(string imie, int wiek, int max_wiek)
	{
		this->imie = imie;
		this->wiek = wiek;
		this->max_wiek = max_wiek;
		cout << "Utworzono obiekt" << endl;
	}

	~Villager()
	{
		cout << imie << endl;
		cout << wiek << endl;
	}

	void zwieksz_wiek()
	{
		wiek++;
		if (wiek == max_wiek)
		{
			delete this;
		}
	}


};

int main()
{
	Villager *v=new Villager("Jan",20,21);
	v->zwieksz_wiek();
	


	cin.get();
	cin.get();
    return 0;
}
