using QuanLyKho.EntityFramework;
using QuanLyKho.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
	public class LoginWindowViewModel : BaseViewModel
	{
		public ICommand LoadMainWindowCommand { get; set; }
		public ICommand ExitLoginWindowCommand { get; set; }
		public ICommand PasswordChangedCommand { get; set; }
		private string _UserName;
		private string _Password;

		public string Password
		{
			get { return _Password; }
			set { _Password = value; OnPropertyChanged(value); }
		}

		public string UserName
		{
			get { return _UserName; }
			set { _UserName = value; OnPropertyChanged(value); }
		}

		public LoginWindowViewModel()
		{
			LoadMainWindowCommand = new RelayCommand<Button>(p => { return p == null ? false : true; }, p =>
			{
				MainWindow mainWindow = new MainWindow();
				FrameworkElement window = Window.GetWindow(p);
				var loginWindow = window as Window;

				if (UserName == null || Password == null)
				{
					NotifyWindowOk notifyWindowOk = new NotifyWindowOk();
					notifyWindowOk.Owner = loginWindow;
					notifyWindowOk.Height = 135;
					notifyWindowOk.txtNotify.Width = 250;
					notifyWindowOk.txtNotify.Margin = new Thickness(0, 30, 0, 0);
					notifyWindowOk.txtNotify.Text = "Login failed. Make sure that you type username and password correctly.";
					notifyWindowOk.Show();
				}
				else
				{
					string passEncode = MD5Hash(Base64Encode(Password));
					int count = DataProvider.DB.Users.Where(x => x.UserName == UserName && x.Password == passEncode).Count();
					if (count > 0)
					{
						loginWindow.Hide();
						mainWindow.ShowDialog();
						loginWindow.Show();
						loginWindow.Show();
					}
					else
					{
						NotifyWindowOk notifyWindowOk = new NotifyWindowOk();
						notifyWindowOk.Owner = loginWindow;
						notifyWindowOk.Height = 135;
						notifyWindowOk.txtNotify.Width = 250;
						notifyWindowOk.txtNotify.Margin = new Thickness(0, 30, 0, 0);
						notifyWindowOk.txtNotify.Text = "Login failed. Make sure that you type username and password correctly.";
						notifyWindowOk.Show();
					}
				}
				
			});

			PasswordChangedCommand = new RelayCommand<PasswordBox>(p => { return p == null ? false : true; }, p => { Password = p.Password; });

			ExitLoginWindowCommand = new RelayCommand<Button>(p => { return p == null ? false : true; }, p =>
			{
				FrameworkElement window = Window.GetWindow(p);
				var temp = window as Window;
				temp.Close();
			});
		}

		private static string Base64Encode(string plainText)
		{
			var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
			return System.Convert.ToBase64String(plainTextBytes);
		}

		private static string MD5Hash(string input)
		{
			StringBuilder hash = new StringBuilder();
			MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
			byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

			for (int i = 0; i < bytes.Length; i++)
			{
				hash.Append(bytes[i].ToString("x2"));
			}
			return hash.ToString();
		}
	}
}
