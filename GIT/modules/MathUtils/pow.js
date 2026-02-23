
export function pow(num,pow1)
{
    let sum=1;
 for(let i=0;i<pow1;i++)
 {
    sum*=num;
 }
 return sum;

}
console.log(pow(3,3));