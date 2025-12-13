using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tree
{
    internal class Node<T>
    {
        private T value;
        private Node<T> next;
        public Node(T value)
        {
            this.value = value;
            this.next = null;
        }
        public Node(T value, Node<T> next)
        {
            this.value = value;
            this.next = next;
        }
        public T GetValue() { return value; }
        public Node<T> getNext() { return next; }
        public void setValue(T value) { this.value = value; }
        public void setNext(Node<T> next) { this.next = next; }
        //public void toString() { Console.WriteLine(value); } 
        public virtual string ToString()
        {
            return "" + value;
        }
    }
}
