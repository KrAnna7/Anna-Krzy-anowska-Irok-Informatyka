#include <iostream>
#include "List.h"

using namespace std;

int main()
{
	List<int> lista;
	lista.push_back(5);
	lista.push_back(10);
	lista.push_front(15);
	lista.Show();
	endl(cout);


	lista.push_back(120);
	lista.push_back(160);
	lista.push_back(200);

	lista.pop_front();

	system("PAUSE");
	return 0;
}
