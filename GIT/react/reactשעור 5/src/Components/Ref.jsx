import { useRef, useState } from "react"

const Ref = () => {

    const [name, setName] = useState("")
    const refInput = useRef(null)
    const refName = useRef("")
let cnt = 0
    const refCounter = useRef(0)




    const handleFocus = () => {
        debugger
        refInput.current.focus()
        console.log(refName);
    }

    const Add = () => {
        debugger
        refCounter.current++
    }

    return (
        <>
            {/* Ex1 */}
            <h3>refInput</h3>
            <input ref={refInput} /><br />
            <h3>onChange</h3>
            <input onChange={(e) => setName(e.target.value)} />
            <h3>refName</h3>
            <input ref={refName} />
            <button onClick={handleFocus}>click me</button>
            {/* Ex2 */}
            <h1>Ex2</h1>
            <p>{refCounter.current}</p>
            <button onClick={Add}>+</button>
        </>
    )
}

export default Ref