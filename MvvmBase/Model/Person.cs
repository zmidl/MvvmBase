using MvvmBase.Model.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MvvmBase.Model
{
    public class Person : Notify
    {
        private int age;
        public int Age
        {
            get { return age; }
            set { age = value; }
        }
    }
}
