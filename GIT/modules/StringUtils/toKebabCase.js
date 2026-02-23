export function toKebabCase(str) {
    return str.split(' ').map((word, index) => {
        if (!(index === 0)) {
            return '-' + word.toLowerCase()
        }
        return word.toLowerCase()
    }).join('');
}

