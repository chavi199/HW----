import { useReducer } from "react"

const Reducer = () => {

    
    const myReducer = (state, action) => {

    }
    const [count, dispatch] = useReducer(myReducer, 0)
    const [name, dispatch1] = useReducer(myReducer, 0)

    const Add = () => {
        dispatch({type:"Add", by: 1})
    }

    return(
        <>
        <p>{count}</p>
        <button onClick={Add}>+</button>
        </>
    )
}

export default Reducer