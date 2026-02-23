export function sumOfValues(arr){
let sum=0;
arr.forEach(value => {
 sum+=value; 
});
return sum;
}
let arr=[4,5];
console.log(sumOfValues(arr))