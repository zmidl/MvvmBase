using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MvvmBase.ViewModel.Base;
using System.ComponentModel;
using MvvmBase.Global.Common;
using MvvmBase.ViewModel.Enumeration;

namespace MvvmBase.ViewModel
{
    public class MainWindowViewModel : ViewModelBase, IDataErrorInfo
    {
        public TableViewModel TableViewModel { get; private set; }

        private string text;
        public string Text
        {
            get { return text; }
            set { text = value; this.RaisePropertyChanged(nameof(this.Text)); }
        }

        private int count;
        public int Count
        {
            get { return count; }
            set
            {
                count = value;
                this.RaisePropertyChanged(nameof(Count));
            }
        }

        private string message;//General.FindStringResource("MouseTest");
        public string Message
        {
            get { return message; }
            private set
            {
                message = value;
                this.RaisePropertyChanged(nameof(this.Message));
            }
        }

        public RelayCommand ChangeText { get; private set; }

        public RelayCommand MouseUp { get; private set; }

        public RelayCommand ConverterTest { get; private set; }

        public RelayCommand SwitchView { get; private set; }

        public RelayCommand ChangeLanguage { get; private set; }

        public RelayCommand KeyInput { get; private set; }

        public MainWindowViewModel()
        {
            General.ChangeLanguage("zh-CN");

            this.Message= General.FindStringResource("MouseTest");

            this.TableViewModel = new TableViewModel();

            this.ChangeLanguage = new RelayCommand(this.ExecuteChangeLanguage);

            this.ChangeText = new RelayCommand(() => this.Text = "当前温度-18");

            this.MouseUp = new RelayCommand(this.ExecuteMouseUp);

            this.ConverterTest = new RelayCommand(() => this.Count++);

            this.SwitchView = new RelayCommand(()=>General.SwitchView(0,1));

            this.KeyInput = new RelayCommand(this.ExecuteKeyInput);
        }

        public void MouseDown()
        {
            this.Message = General.FindStringResource("MouseDown");
        }

        public void ExecuteMouseUp(object obj)
        {
            this.Message = General.FindStringResource(obj.ToString());
        }

        public void ExecuteChangeLanguage(object obj)
        {
            General.ChangeLanguage(obj.ToString());
            this.Message = General.FindStringResource("MouseTest");
        }

        public void ExecuteKeyInput()
        {
            System.Windows.MessageBox.Show("Ctrl+Q");
        }

        public int Add(int a,int b)
        {
            return a + b;
        }

        string IDataErrorInfo.Error
        {
            get
            {
                return null;
                //throw new NotImplementedException();
            }
        }

        string IDataErrorInfo.this[string columnName]
        {
            get
            {
                string result = string.Empty;

                switch (columnName)
                {
                    case nameof(this.Text):
                    {
                        if (string.IsNullOrEmpty(this.Text)) result = "can not empty";
                        break;
                    }
                }

                return result;

                //throw new NotImplementedException();
            }
        }
    }
}
