export function toUpperFirst(text){
    return text.split(' ').map(word => {
            return word[0].toUpperCase()+word.slice(1)
    }).join(' ')

}
