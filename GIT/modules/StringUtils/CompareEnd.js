export function CompareEnd(LongString, ShortString) {
    let i = String(ShortString).length - 1;
    let j = String(LongString).length - 1;
    while (i >= 0 && j >= 0 && ShortString[i] == LongString[j]) {
        i--;
        j--;
    }
    return i == -1;
}