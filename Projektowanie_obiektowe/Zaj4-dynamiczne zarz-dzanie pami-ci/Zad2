#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>

using namespace std;

class Villager
{
	string imie;
	int wiek;
	unsigned int max_wiek;
	bool plec; //1-f, 0-m

public:
	Villager()
	{
		string tabf[4] = { "Anna","Barbara", "Beata", "Genowefa" };
		string tabm[4] = { "Janusz","Zbychu", "Grzegorz", "Andrzej" };
		srand(time(NULL));
		wiek = rand() % 100;
		max_wiek = rand() % 100;
		int i, p;
		p = rand() % 2;
		i = rand() % 4;
		if (p ==1)
		{
			imie = tabf[i];
		}
		else
		{
			imie = tabm[i];
		}
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
	bool getplec()
	{
		return plec;
	}

	int getwiek()
	{
		return wiek;
	}

	string getimie()
	{
		return imie;
	}


};

class Household
{
	Villager **villagers;
	unsigned max, liczba;

public:

	Household(unsigned max, unsigned init)
	{
		this->max = max;
		liczba = init;
		villagers = new Villager*[this->max];
		for (unsigned i = 0; i < this->liczba; i++)
		{
			villagers[i] = new Villager();
		}
	}

	void nastepnyrok()
	{
		for (unsigned i = 0; i < liczba; i++)
		{
			villagers[i]->zwieksz_wiek();
		}
	}

	void fun()
	{
		bool jest_men = false;
		bool jest_kobieta = false;
		bool dziecko = false;
		for (unsigned int i = 0; i < liczba; i++)
		{
			if (villagers[i] != nullptr)
			{

				if (villagers[i]->getwiek() >= 18 && villagers[i]->getwiek() <= 40)
				{
					if (villagers[i]->getplec() == false)
					{
						jest_men = true;
					}
					else
					{
						jest_kobieta = true;
					}
				}
				if (villagers[i]->getwiek()
					<= 5)
				{
					dziecko = true;
				}

			}
			if (jest_men == true && jest_kobieta == true && dziecko == false)
			{
				villagers[liczba] = new Villager;
				liczba++;
			}
		}
		}

	void wypisz()
	{
		for (unsigned int i = 0; i <= liczba; i++)
		{
			cout << "Imie: " << villagers[i]->getimie()<<endl << "Wiek: " << villagers[i]->getplec()<<endl << "Plec: " << villagers[i]->getplec()<<endl;
		}
	}

};

int main()
{
	Household h = Household(5, 10);
	h.wypisz();
	h.nastepnyrok();
	h.wypisz();



	cin.get();
	cin.get();
	return 0;
}
