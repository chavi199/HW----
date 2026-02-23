export function findMax(arr){
    let max=arr[0];
    arr.forEach(element => {
        if(element>max)
            max=element;
    });
    return max;
}

let arr=[5,9,40,7,8,];
console.log(findMax(arr))

