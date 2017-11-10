using MvvmBase.Model;
using MvvmBase.ViewModel.Base;
using MvvmBase.ViewModel.Interface;
using System.Collections.ObjectModel;

namespace MvvmBase.ViewModel
{
    public class TableViewModel : ViewModelBase
    {
        public ObservableCollection<Group> Groups { get; set; } = new ObservableCollection<Group>();

        public RelayCommand Leave { get; private set; }
        public RelayCommand Leave2 { get; private set; }
        public TableViewModel()
        {
            this.Leave = new RelayCommand(() => ((IViewSwitch)this).Leave());
            for (int i = 0; i < 3; i++)
            {
                var items = new ObservableCollection<Item>();
                for (int j = 0; j < 5; j++)
                {
                    items.Add(new Item { Name = $"aa-{j}", IsChecked = j % 2 == 0 ? true : false });
                }
                this.Groups.Add(new Group { Name = $"AA:{i}", Items = items });
            }
        }
    }
}
