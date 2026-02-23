export function toSnakeCase(str) {
    return str.split(' ').map((word, index) => {
        if (!(index === 0)) {
            return '_' + word.toLowerCase()
        }
        return word.toLowerCase()
    }).join('');
}
