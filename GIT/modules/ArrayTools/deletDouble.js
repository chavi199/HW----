export function Delete(arr) {
   let count = 0;
   for (let index = 0; index < arr.length - 1; index++) {
      if (arr[index] == arr[index + 1])
      // count++;
      {
         for (let i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1]
         }
      }
       arr.length=arr.length-1

   }
   arr.length=arr.length+1;
   console.log(count)
}
let arr = [1, 2, 3, 3, 4 ,6];
Delete(arr)
console.log(arr);
// arr=arr.slice(0,a  9 rr.length-count)