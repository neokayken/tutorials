using System;
using System.Windows;

using System.Diagnostics;
using System.Windows.Threading;

namespace dotnet
{
    public partial class MainWindow : Window
    {
        Stopwatch sw = new Stopwatch();

        public MainWindow()
        {
            InitializeComponent();

            DispatcherTimer dt = new DispatcherTimer();
            dt.Interval = TimeSpan.FromMilliseconds(10);
            dt.Tick += dtTicker;
            dt.Start();
            
        }
        private void dtTicker(object sender, EventArgs e)
        {
            if(tb != null){
                tb.Text = string.Format("{0:hh\\:mm\\:ss\\:ff}", sw.Elapsed);
            }
        }
         private void Button_Start(object sender, RoutedEventArgs e)
        {
            sw.Start();
        }
        private void Button_Stop(object sender, RoutedEventArgs e)
        {
            sw.Stop();
        }
        private void Button_Reset(object sender, RoutedEventArgs e)
        {
            sw.Reset();
        }
    }
}
