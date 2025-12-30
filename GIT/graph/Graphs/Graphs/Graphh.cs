using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Graphs
{
    internal class Graphh
    {
        List<Vertex>[] arr;
        public Graphh(int size)
        {
            arr = new List<Vertex>[size];
            for (int i = 0; i < arr.Length; i++)
            { arr[i] = new List<Vertex>(); }
        }

        public bool IsEdge(int a, int b)
        { return arr[a].Contains(b); }
        //public List<int> ListEdge()
        //{
        //   for (int i = 0; i < length; i++)
        //     {}
        //}
        public void ListEdge()
        {
            //for (int i = 0; i < arr.Length; i++) {
            //    while (arr[i] != null) {
            //    Console.WriteLine("there are Edge from:"+i+"to :" + arr[i]);
            //    }
            //}
            for (int i = 0; i < arr.Length; i++)
            {
                foreach (var item in arr[i])
                {
                    Console.WriteLine("There are Edge from: " + i + "to :" + item);
                }
            }

        }

        public void ListNeighbors(int a)
        {
            for (int i = 0; i < arr.Length; i++)
            {
                foreach (var item in arr[i])
                {
                    if (i == a || item == a)
                        Console.WriteLine("There are Neghebor from: " + i + "to :" + item);
                }
            }
        }
        public void Explore(bool[] Visited, int a, int Counter, int[] cc)
        {
            Visited[a] = true;
            cc[a] = Counter;
            foreach (var item in arr[a])
            {
                if (Visited[item] != true)
                {
                    Explore(Visited, item, Counter, cc);

                }
            }
        }
        //הסיבוכיות היא V+E
        public void DFS()
        {
            bool[] Visited = new bool[arr.Length];
            int[] cc = new int[arr.Length];
            int Counter = 0;

            for (int i = 0; i < arr.Length; i++)
            {
                if (!Visited[i])
                {
                    Explore(Visited, i, Counter, cc);
                    Counter++;
                }
            }

        }





    }
}
}
