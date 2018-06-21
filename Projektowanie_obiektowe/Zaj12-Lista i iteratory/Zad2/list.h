#pragma once
#include <iostream>

using namespace std;

template<typename T>
class List
{
	class part
	{
	public:
		T value;
		part *next;
	};
	part *head;
	part *tail;

public:
	List();
	~List();
	void push_front(T e);
	void push_back(T e);
	void pop_back();
	void pop_front();
	List(const List&) = delete;
	List(const List&&) = delete;
	List &operator=(const List&) = delete;

	void Show() const;
};

template<typename T>
List<T>::List()
{
	head = nullptr;
	tail = nullptr;
}

template<typename T>
List<T>::~List()
{
	part *temp = head;
	part *temp2 = nullptr;
	while (temp)
	{
		temp2 = temp->next;
		delete temp;
		temp = temp2;
	}
}

template<typename T>
void List<T>::push_front(T e)
{
	if (head == nullptr)
	{
		part *newpart = new part{ e,nullptr };
		head = newpart;
		tail = newpart;
	}
	else
	{
		part *newpart = new part{ e,head };
		head = newpart;
	}
}

template<typename T>
void List<T>::push_back(T e)
{
	if (tail == nullptr)
	{
		part *newpart = new part{ e,nullptr };
		head = newpart;
		tail = newpart;
	}
	else
	{
		part *newpart = new part{ e,nullptr };
		tail->next = newpart;
		tail = newpart;
	}
}

template<typename T>
void List<T>::pop_front()
{
	if (head == nullptr)
		return;
	else if (head == tail)
	{
		delete head;
		head = nullptr;
		tail = nullptr;
	}
	else
	{
		part *temp = head;
		head = head->next;
		delete temp;
	}
}

template<typename T>
void List<T>::pop_back()
{
	if (tail == nullptr)
		return;
	else if (tail == head)
	{
		delete tail;
		head = nullptr;
		tail = nullptr;
	}
	else
	{
		part *temp = head;
		while (temp->next != tail)
		{
			temp = temp->next;
		}
		temp->next = nullptr;
		delete tail;
		tail = temp;
	}
}

template<typename T>
void List<T>::Show() const
{
	part *temp = head;
	while (temp != nullptr)
	{
		cout << temp->value << endl;
		temp = temp->next;
	}
}
