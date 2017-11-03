using MvvmBase.Model.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MvvmBase.Model
{
    public class Item : Notify
    {
        public string Name { get; set; }

        public bool IsChecked { get; set; }

    }
}
