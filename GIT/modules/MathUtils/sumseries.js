export function sumseries(a1,q,n){
    let i,q2=q;
    for( i=0;i<n;i++) 
        q2*=q;
    return (a1*(q2-1))/(q-1);
}
