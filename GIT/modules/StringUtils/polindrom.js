export function pol(string){
    let j,i
    let strin=string
    for( i=0,j=String(string).length-1;i< String(string).length/2;i++,j--){
        if(string[i]!=string[j])
            return false
}
return true
}
console.log(pol('156'))