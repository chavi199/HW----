 export function StartsWith(str1,str2)
{
    if(String(str1).length<String(str2).length)
        return false
    for(i=0;i<String(str2).length;i++){
        if(str1[i]!=str2[i])
            return false
    }
    return true   
}

//תמיד ידעתי שבסוף אני אהיה ספרנית בספריה