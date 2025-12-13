using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tree
{
    internal class Queue<T>
    {
        public List<T> quene { get; set; }
        public Queue()
        {
            quene = new List<T>();
        }
        //מכניס לתור
        public void Enqueue(T item)
        {
            quene.PushBack(item);
        }
        //מוציא מהתור
        public T Dequeue()
        {
            T temp = quene.Key_TopFront();
            quene.PopFront();
            return temp;

        }
        //האם התור ריק
        public bool IsEmpty() { return quene.IsEmpty(); }
        //הדפסה
        public void ToString() { quene.ToString(); }

    }
}
