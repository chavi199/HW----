using System.Xml.Schema;

namespace Tree
{
    internal class Program
    {
        static void Main(string[] args)
        {

            //TreeNode<char> a = new TreeNode<char>('a');
            //TreeNode<char> b = new TreeNode<char>('b');
            //TreeNode<char> c = new TreeNode<char>('c');
            //TreeNode<char> d = new TreeNode<char>('d');
            //TreeNode<char> e = new TreeNode<char>('e');
            //BinTree<char> root = new BinTree<char>(a);
            //a.Left = b;
            //a.right = e;
            //b.Left = c;
            //b.right = d;
            //TreeNode<char> l = new TreeNode<char>('l');
            //TreeNode<char> c = new TreeNode<char>('c');
            //TreeNode<char> a = new TreeNode<char>('a');
            //TreeNode<char> f = new TreeNode<char>('f');
            //TreeNode<char> s = new TreeNode<char>('s');
            //TreeNode<char> n = new TreeNode<char>('n');
            //TreeNode<char> v = new TreeNode<char>('v');
            //TreeNode<char> t = new TreeNode<char>('t');
            //TreeNode<char> w = new TreeNode<char>('w');
            //l.Left = c;
            //l.right = s;
            //c.Left = a;
            //c.right = f;
            //s.Left = n;
            //s.right = v;
            //v.Left = t;
            //v.right = w;
            //BinTree<char> roott = new BinTree<char>(l);
            // TreeNode<int> a = new TreeNode<int>(3);
            //TreeNode<int> b = new TreeNode<int>(2);
            //TreeNode<int> c = new TreeNode<int>(10);
            //TreeNode<int> d = new TreeNode<int>(1);
            //BinTree<int> root = new BinTree<int>(a);
            //a.right = b;
            //a.Left = c;
            //c.right = d;
            TreeNode<char> l = new TreeNode<char>('b');
            TreeNode<char> c = new TreeNode<char>('w');
            TreeNode<char> a = new TreeNode<char>('b');
            TreeNode<char> f = new TreeNode<char>('b');
            TreeNode<char> s = new TreeNode<char>('w');
            TreeNode<char> n = new TreeNode<char>('b');
            TreeNode<char> v = new TreeNode<char>('w');
            TreeNode<char> t = new TreeNode<char>('b');               
            TreeNode<char> w = new TreeNode<char>('b');
            l.Left = c;
            l.right = s;
            c.Left = a;
            c.right = f;
            s.Left = n;
            s.right = v;
            v.Left = t;
            v.right = w;
            BinTree<char> root = new BinTree<char>(l);

            Console.WriteLine(root.PreOrderTraversal());
            Console.WriteLine(root.InOrderTraversal());
            Console.WriteLine(root.PostOrderTraversal());
            Console.WriteLine(root.LevelTraversal());
            Console.WriteLine("place i");
            //Console.WriteLine(root.Place_I_InLevelTraversal(a,3));
            Console.WriteLine("wB");
            Console.WriteLine(root.WB(l));
            //Console.WriteLine(root.sumall(a));
            //Console.WriteLine(root.sumleef(a));
            //Console.WriteLine("big");
            //root.big_than_x(a, 4);
            //Console.WriteLine("points:");
            //Console.WriteLine(root.sum_of_point(a));
            //Console.WriteLine(root.sum_of_even(a));
            Console.WriteLine("minnnnnn");
            //Console.WriteLine(root.min(a));
            //Console.WriteLine(root.(a));







        }
    }
}
