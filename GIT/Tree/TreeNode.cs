using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tree
{
    internal class TreeNode<T>
    {
        
        public T key { get; set; }
        public TreeNode<T> Left { get; set; }
        public TreeNode<T> right { get; set; }
        public TreeNode<T> parent { get; set; }
        public TreeNode()
        {
            
        }
        public TreeNode(T key, TreeNode<T> Left, TreeNode<T> right, TreeNode<T> parent)
        {
            this.key = key;
            this.Left = Left;
            this.right=right;
            this.parent = parent;
        }
        public TreeNode(T key, TreeNode<T> parent)
        {
            this.key = key;
            this.Left = null;
            this.right = null;
            this.parent = parent;
        }
        public TreeNode(T key)
        {
            this.key = key;
            this.Left = null;
            this.right = null;
            this.parent = null;
        }

    }
}
