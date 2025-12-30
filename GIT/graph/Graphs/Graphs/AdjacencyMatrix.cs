using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Graphs
{
    internal class AdjacencyMatrix //מטריצת סמיכויות
    {
        int[,] matrix;
        public AdjacencyMatrix(int x)
        {
            matrix=new int[x,x];

        }


    }
}
