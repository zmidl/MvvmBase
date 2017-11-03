using MvvmBase.Model.Base;
using MvvmBase.ViewModel.Interface;
using System;
using System.ComponentModel;

namespace MvvmBase.ViewModel.Base
{
    public abstract class ViewModelBase : Notify, IViewSwitch
    {
        Action IViewSwitch.Leave { get; set; }

        public event EventHandler<object> ViewChanged;

        protected virtual void OnViewChanged(object obj)
        {
            this.ViewChanged?.Invoke(this, obj);
        }
    }
}
