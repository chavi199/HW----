#pragma once
using namespace std;
#include <string>
#include<iostream>
#include <vector>
#include "Product.h"
class Mishloach
{
	string SenderName;
	string RecipientName;
	string ShippingAddress;
	int ToolPrice;
	vector<Product>Vector;
	static int DesignPrice;
public:
	Mishloach();
	Mishloach(string , string , string );
	void AddProduct(Product);
	double CalPrice();
	





};

