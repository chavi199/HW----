export function multiplication(arr)
{
    let sub=1;
    for(let i in arr)
    {
        sub*=arr[i];
    }
    return sub;
}
let arr=[1,2,3,4,5];
console.log(multiplication(arr));
