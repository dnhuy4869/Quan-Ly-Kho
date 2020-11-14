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
	public class NotifyWindowOkViewModel : BaseViewModel
	{
		public ICommand CloseWindowCommand { get; set; }

		public NotifyWindowOkViewModel()
		{
			CloseWindowCommand = new RelayCommand<Button>(p => { return p == null ? false : true; }, p =>
			{
				FrameworkElement window = Window.GetWindow(p);
				var temp = window as Window;
				temp.Close();
			});
		}
	}
}
