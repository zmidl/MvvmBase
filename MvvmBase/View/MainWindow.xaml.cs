using MvvmBase.Global.Common;
using MvvmBase.ViewModel;
using System.Windows;

namespace MvvmBase.View
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            General.GetAllViews(new System.Collections.Generic.List<System.Windows.Controls.ContentControl>
            {
                this,
                new TableView()
            });
        }

        private void ViewModel_ViewChanged(object sender, object e)
        {
        }
    }
}
