#include "Mishloach.h"

Mishloach::Mishloach()
{
	this->ToolPrice = 15;
}

Mishloach::Mishloach(string SenderName, string RecipientName, string ShippingAddress)
{
	this->SenderName = SenderName;
	this->RecipientName = RecipientName;
	this->ShippingAddress = ShippingAddress;

}

void Mishloach::AddProduct(Product p)
{
	Vector.push_back(p);
}

double Mishloach::CalPrice()
{
	double sum = 0;
	for(Product item : Vector)
	{
		sum += item.Sum();
	}
	sum += ToolPrice;
	sum += DesignPrice;
	return sum;
}


