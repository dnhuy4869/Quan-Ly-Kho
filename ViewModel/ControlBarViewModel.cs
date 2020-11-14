using QuanLyKho.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
	public class ControlBarViewModel : BaseViewModel
	{
		#region Commands
		public ICommand CloseWindowCommand { get; set; }
		public ICommand MaximizeCommand { get; set; }
		public ICommand MinimizeCommand { get; set; }
		public ICommand MouseMoveWindowCommand { get; set; }
		#endregion

		public ControlBarViewModel()
		{
			CloseWindowCommand = new RelayCommand<UserControl>(p => { return p == null ? false : true; }, p => { FrameworkElement window = Window.GetWindow(p); (window as Window).Close(); });

			MaximizeCommand = new RelayCommand<UserControl>(p => { return p == null ? false : true; }, p =>
			{
				NotifyWindowOk notifyWindowOk = new NotifyWindowOk();
				FrameworkElement window = Window.GetWindow(p);
				var temp = window as Window;
				notifyWindowOk.Owner = temp;
				notifyWindowOk.ShowDialog();
			});

			MinimizeCommand = new RelayCommand<UserControl>(p => { return p == null ? false : true; }, p => { FrameworkElement window = Window.GetWindow(p); (window as Window).WindowState = WindowState.Minimized; });

			MouseMoveWindowCommand = new RelayCommand<UserControl>(p => { return p == null ? false : true; }, p =>
			{
				FrameworkElement window = Window.GetWindow(p);
				var temp = window as Window;
				temp.DragMove();
			});
		}
	}
}
