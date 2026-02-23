export function median(arr){
    let newArr=arr.slice();
    newArr.sort((a, b) => a - b);
    if(arr.length%2>0)
        return newArr[Math.floor(arr.length/2)];
    else{
        return (newArr[arr.length/2]+ newArr[arr.length/2+1])/2;
    }
}