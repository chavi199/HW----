namespace Graphs
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<int>[] arr=new List<int>[10];
            for (int i = 0; i < arr.Length; i++)
            { arr[i] = new List<int>(); }
            arr[1].Add(10);
            arr[1].Add(11); 
            arr[1].Add(12);
            arr[4].Add(10);
            arr[3].Add(11);
            arr[6].Add(12);


            for (int i = 0; i < arr.Length; i++)
            {
                foreach (var item in arr[i])
                {
                    Console.WriteLine("There are Edge from: " + i + "to :" + item);
                }
            }
        }
    }
}
