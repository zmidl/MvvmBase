using MvvmBase.ViewModel.Base;
using MvvmBase.ViewModel.Interface;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace MvvmBase.Global.Common
{
    static class General
    {
        private static List<ContentControl> allViews;

        private static ResourceDictionary currentLanguageResource;

        private static void SwitchView(ContentControl currentView, ContentControl newView)
        {
            var oldContent = currentView.Content;
            ((IViewSwitch)(ViewModelBase)newView.DataContext).Leave = new Action(() => { currentView.Content = oldContent; });
            currentView.Content = newView;
        }

        public static void SwitchView(int oldIndex, int newIndex)
        {
            General.SwitchView(allViews[oldIndex], allViews[newIndex]);
        }

        public static void GetAllViews(List<ContentControl> views)
        {
            General.allViews = views;
        }

        public static void ChangeLanguage(string languageName)
        {
            if (General.currentLanguageResource != null) App.Current.Resources.MergedDictionaries.Remove(General.currentLanguageResource);
            var languageFilePath = string.Format(Properties.Resources.LanguageFilePath, languageName);
            General.currentLanguageResource = Application.LoadComponent(new Uri(languageFilePath, UriKind.Relative)) as ResourceDictionary;
            if (General.currentLanguageResource != null) App.Current.Resources.MergedDictionaries.Add(General.currentLanguageResource);
        }

        public static string FindStringResource(string resourceKey)
        {
            return General.FindResource(resourceKey).ToString();
        }

        public static object FindResource(string resourceKey)
        {
            return App.Current.FindResource(resourceKey);
        }
    }
}
