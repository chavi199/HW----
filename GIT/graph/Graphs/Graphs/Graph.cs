using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Graphs
{
    internal class Graph
    {
        List<int>[] arr;
        public Graph(int size)
        {
            arr = new List<int>[size];
            for (int i = 0; i < arr.Length; i++)
            { arr[i] = new List<int>(); }
        }

        public bool IsEdge(int a, int b)
        { return arr[a].Contains(b); }
        //public List<int> ListEdge()
        //{
        //   for (int i = 0; i < length; i++)
        //     {}
        //}
        public void AddEdge(int a, int b)
        {
            arr[a].Add(b);
            arr[b].Add(a);
        }
        public void ListEdgeNeighborsPrint()
        {
            for (int i = 0; i < arr.Length; i++)
            {
                foreach (var item in arr[i])
                {
                    Console.WriteLine("There are Edge from: " + i + "to :" + item);
                }
            }
        }
        public List<int> ListEdgeNeighbors(int a)
        {
            List<int> list = new List<int>();
            foreach (var item in arr[a])
            {
                list.Add(item);
            }
            return list;
        }
        public static int[] post;
        public static int[] pre;
        public static int clock = 1;


        public void ListNeighbors(int a)
        {


            foreach (var item in arr[a])
            {

                Console.WriteLine("There are Neghebor from: " + a + "to :" + item);
            }

        }
        public void Explore(bool[] Visited, int a, int Counter, int[] cc)
        {
            Visited[a] = true;
            cc[a] = Counter;

            pre[a] = clock;
            clock++;


            foreach (var item in arr[a])
            {
                if (Visited[item] != true)
                {
                    Explore(Visited, item, Counter, cc);
                }
            }
            post[a] = clock;
            clock++;
        }



        //הסיבוכיות היא V+E
        public void DFS()
        {
            clock = 0;
            pre = new int[arr.Length];
            post = new int[arr.Length];
            bool[] Visited = new bool[arr.Length];
            int[] cc = new int[arr.Length];
            int Counter = 0;

            for (int i = 0; i < arr.Length; i++)
            {
                if (!Visited[i])
                {
                    Counter++;
                    Explore(Visited, i, Counter, cc);

                }
            }

        }





    }
}
