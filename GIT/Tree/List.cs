using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tree
{
    internal class List<T>
    {
        public Node<T> head { get; set; }
        public Node<T> tail { get; set; }
        public List()
        {
            this.head = null;
            this.tail = null;
        }
        public List(Node<T> head, Node<T> tail)
        {
            this.head = head;
            this.tail = tail;

        }
        public void ToString()
        {
            Node<T> node = head;

            while (node != null)
            {

                Console.WriteLine(" " + node.ToString());
                node = node.getNext();


            }

        }
        //public string ToString()
        //{
        //    Node<T> node = head;

        //    while (node != null)
        //    {
        //        return node.ToString();
        //        //Console.WriteLine(" " + node.ToString());
        //        node = node.getNext();


        //    }
        //    return "";
        //}
        //להכניס לתחילת הרשימה
        public void PushFront(T val)
        {
            Node<T> node = new Node<T>(val, head);
            head = node;
            if (tail == null)
                tail = head;
        }
        //מחיקת איבר מראש רשימה
        public void PopFront()
        {
            if (head == null)
                Console.WriteLine("empty project---error");
            head = head.getNext();
            if (head == null)
                tail = null;

        }
        //הוספת איבר לסוף רשימה       
        public void PushBack(T val)
        {
            if (head == null)
            {
                head = tail = new Node<T>(val, null);
            }
            else
            {
                tail.setNext(new Node<T>(val, null));
                tail = tail.getNext();
            }
        }
        //מחיקת איבר מסוף רשימה
        public void PopBack()
        {
            if (head == null)
                Console.WriteLine("empty list");
            if (head == tail)
                head = tail = null;
            else
            {
                Node<T> n = head;
                while (n.getNext() != tail)
                {
                    n = n.getNext();
                }
                tail = n;
                n.setNext(null);
            }
        }
        //הוספת איבר לאחר איבר נתון
        public void AddAfter(Node<T> n, T val)
        {
            Node<T> k = new Node<T>(val);
            k.setNext(n.getNext());
            n.setNext(k);

            if (tail == n)
                tail = k;
        }
        //להחזיר מי שנמצא בהתחלה//צריך להחזיר ולא לכתוב??
        public T Key_TopFront()
        {
            if (head == null)
                Console.WriteLine("empty list");
            //else
            //    Console.WriteLine(head.GetValue());
            return head.GetValue();
        }
        ////להחזיר מי שנמצא בסוף
        public T Key_TopBack()
        {
            if (tail == null)
                Console.WriteLine("empty list");
            //else
            //    Console.WriteLine(tail.GetValue());
            return tail.GetValue();

        }
        //האם קיים איבר עם הערך הנל
        public bool BoolianFind(T val)
        {
            Node<T> a = head;
            while (a != null)
            {
                //if(a.GetValue()==val)//??
                return true;


            }

            return false;

        }

        //מוחק את הערך הנל מהרשימה
        public void Erse(T val)
        {
            Node<T> a = head;
            while (!Object.Equals(a.getNext().GetValue(), val) && a.getNext() != null)
            {

                a = a.getNext();

            }
            a.setNext(a.getNext().getNext());
        }
        //האם הרשימה ריקה?
        public bool IsEmpty()
        {
            return head == null;
        }
        //להכניס לפני איבר מסוים ערך מסוים
        public void AddBefore(Node<T> n, T val)
        {

            Node<T> a = head;
            Node<T> k = new Node<T>(val);
            if (n == head)
            {
                k.setNext(head);
                head = k;
            }
            else
            {
                while (a.getNext() != n && a != null)
                {
                    a = a.getNext();
                }
                k.setNext(a.getNext());
                a.setNext(k);
            }
        }






    }
}
