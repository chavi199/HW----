function root(num){

    for(let i=1; i<=(num/2); i++)
    {
        if((i*i<=num) && ((i+1)*(i+1)>num))
            return i;
    }
    return 0;
}

