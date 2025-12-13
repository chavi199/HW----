using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tree
{
    internal class BinTree<T>
    {
        public TreeNode<T> root { get; set; }
        public BinTree()
        {
            
        }
        public BinTree(TreeNode<T> root)
        {
            this.root = root;
        }
        public int height(TreeNode<T> node) 
        {         
        if (node == null) return 0;
            return 1 + Math.Max(height(node.Left), height(node.right));
        }
        public int sise(TreeNode<T> tree) 
        { 
        if (tree == null) return 0;
        return 1+sise(tree.Left)+sise(tree.right);
        }
        //תחילית-שמאל
        public string PreOrderTraversal() 
        {
             return PreOrderTraversal(root);
        }
        public string PreOrderTraversal(TreeNode<T> root)
        {
            
            if (root == null) return "";
            return root.key + " " + PreOrderTraversal(root.Left) + PreOrderTraversal(root.right);

            //string s = " ";
            //s += root.key+" ";
            //PreOrderTraversal(root.Left);
            //PreOrderTraversal(root.right);
            //return s;
        }
        //תוכית-אמצע
        public string InOrderTraversal()
        {
            return InOrderTraversal(root);
        }
         

        public string InOrderTraversal(TreeNode<T> root)
        {

            if (root == null) return "";
             return InOrderTraversal(root.Left) + root.key + " " + InOrderTraversal(root.right);
        }
        //public string InOrderTraversal(TreeNode<T> root)
        //{

        //    if (root == null) return "";
        //    string s = " ";
        //    InOrderTraversal(root.Left);
        //    s += root.key + " ";
        //    InOrderTraversal(root.right);
        //    return s;
        //}
        //סופית-ימין
        public string PostOrderTraversal()
        {
            return PostOrderTraversal(root);
        }
        public string PostOrderTraversal(TreeNode<T> root)
        {

            if (root == null) return "";
            return PostOrderTraversal(root.Left) + PostOrderTraversal(root.right) + root.key + " ";

            //string s = " ";
            //PostOrderTraversal(root.Left);
            //s += " "+root.key;
            //PostOrderTraversal(root.right);
            //return s;
        }
        public string LevelTraversal()
        {
            return LevelTraversal(root);
        }
        public string LevelTraversal(TreeNode<T> root)
        {
            string s = "";
            if (root == null) return "";
            Queue<TreeNode<T>> q =new Queue<TreeNode<T>>();
            TreeNode<T> node = new TreeNode<T>();
            q.Enqueue(root);
            while (!q.IsEmpty()) 
            { 
                 node = q.Dequeue();
                s += node.key+" ";  
                if(node.Left!=null)
                    q.Enqueue(node.Left);                          
                if (node.right != null)
                    q.Enqueue(node.right);
            }
            return s;
        }
        public int sumall(TreeNode<int> tree)
        {
            if (tree == null) return 0;
            int summ=tree.key;
            return summ + sumall(tree.Left) + sumall(tree.right);
        }
        //public int sumzomet(TreeNode<int> tree)
        //{
        //    if (tree == null) return 0;
        //    int summ = tree.key;
        //    summ += sumzomet(tree.Left);
        //    summ+= sumzomet(tree.right);
        //    return summ;
        //}
        public int sumleef(TreeNode<int> tree)
        {
            if (tree == null) return 0;
            int summ =0;
            if (tree.Left == null && tree.right == null)
            {
                return tree.key;
            }
            summ += sumleef(tree.Left);
            summ += sumleef(tree.right);
            return summ;
        }
        public void big_than_x(TreeNode<int> tree,int x)
        {
            if (tree == null) return ;
            if(tree.key >x) Console.WriteLine(tree.key);            
            big_than_x(tree.Left,x);
            big_than_x(tree.right, x);
        }
        public int sum_of_point(TreeNode<int> tree)
        {    
            if (tree == null) return 1;           
           int summ = 0;      
            summ += sum_of_point(tree.Left);
            summ += sum_of_point(tree.right);
            return summ;
        }
        public int sum_of_even(TreeNode<int> tree)
        {
            if (tree == null) return 0;
            int sum = 0;
            if (tree.key % 2 == 0) sum=1;
            
            sum += sum_of_even(tree.Left);
            sum+= sum_of_even(tree.right);
            return sum;
        }
        //min
        public int min(TreeNode<int> tree)
        {   
            if (tree == null) return int.MaxValue;
           
            int x = min(tree.Left);
            int y = min(tree.right);
            return Math.Min(tree.key,Math.Min(x,y));
           
            
        }
        //
        //לא עובד משן::(
        public int Place_I_InLevelTraversal(TreeNode<int> root,int y)
        {
            int i=0;
            if (root == null) return i;
            Queue<TreeNode<int>> q = new Queue<TreeNode<int>>();
            TreeNode<int> node = new TreeNode<int>();
            q.Enqueue(root);
            int keep=0;
            while (!q.IsEmpty()&&i<y)
            {
                node = q.Dequeue();                
                if (node.Left != null)
                {
                    q.Enqueue(node.Left);
                    i++;
                    keep=root.key;
                }
                if (node.right != null)
                { q.Enqueue(node.right); i++; keep = root.key; }

            }
            return keep;
        }
        public bool IsLeaf(TreeNode<char> tree) 
        {
            return tree.Left == null && tree.right == null;
        
        }
        //עץ שחור לבן
        public bool WB(TreeNode<char> tree) 
        {if(tree == null) return true;
        if(tree.key!='b'&&tree.key!='w') return false;
        if(IsLeaf(tree)) return tree.key=='b';
            if (tree.key == 'b' && !(tree.Left != null && tree.Left.key == 'w' && tree.right.key == 'w'))
                return false;
            return WB(tree.Left)&&WB(tree.right);
        }
        public void insert() { }
        //וגם את זה


        public TreeNode<int> Find(TreeNode<int> R,int k)
        {
            if (R.key == k)
                return R;
            else if (R.key > k&&R.Left!=null)
                return Find(R.Left, k);
            else if(R.key < k && R.right != null) 
                return Find(R.right, k);
            return R;

        }
        public TreeNode<int> LeftDescendant(TreeNode<int> T)
        {
           if(T.Left == null) return T;
           else return LeftDescendant(T.Left);

        }
        public TreeNode<int> RightAncestor(TreeNode<int> T)
        {
            if (T.key<T.parent.key) return T.parent;
            else return RightAncestor(T.parent);
            
        }
        public TreeNode<int> Next(TreeNode<int> T)
        {
            if(T.right!=null)
                return LeftDescendant(T.right);
            else return RightAncestor(T);
        }
        public List<TreeNode<int>> RangeSearch(int start, int end, TreeNode<int> T)
        {
            List<TreeNode<int>> l=new List<TreeNode<int>>();
            TreeNode<int> N = Find(T, start);
            while (N.key <= end)
            {
                if(N.key >= start)
                    l.PushFront(N);
                N = Next(N);
            }
            return l;

        }
        //לבדוק האם זה נכון
        public void Insert(TreeNode<int> T,int k)
        {
            if (T == null)
            {
                T = new TreeNode<int>(k);
                return;
            }

            TreeNode<int> P=Find(T, k);
            if(P==null)
            {
                return;
            }
            TreeNode<int> T2=new TreeNode<int>(k);
            if(P.key> k)
                P.Left = T2;
            else if(P.key < k)
                P.right = T2;
            T2.parent = P;
        }
        public void Delete(TreeNode<int> T) 
        {
            if(T.right==null)


        
        }


    }
}
