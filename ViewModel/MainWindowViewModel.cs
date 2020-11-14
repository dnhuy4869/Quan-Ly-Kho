using QuanLyKho.ChildWindows;
using QuanLyKho.EntityFramework;
using QuanLyKho.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
	public class MainWindowViewModel : BaseViewModel
	{
		public ICommand LoadMainWindowCommand { get; set; }
		public ICommand LoadChildWindowCommand { get; set; }
		private ObservableCollection<StockInTrade> _StockInTradeList;

		public ObservableCollection<StockInTrade> StockInTradeList
		{
			get { return _StockInTradeList; }
			set { _StockInTradeList = value; OnPropertyChanged(); }
		}


		public MainWindowViewModel()
		{
			LoadMainWindowCommand = new RelayCommand<Window>(p => { return p == null ? false : true; }, p => 
			{
				LoadStockInTradeData();
			});

			LoadChildWindowCommand = new RelayCommand<Button>(p => { return p == null ? false : true; }, p =>
			{
				switch (p.Name)
				{
					case "btnStockin":
						InputWindow inputWindow = new InputWindow();
						FrameworkElement window1 = Window.GetWindow(p);
						var temp1 = window1 as Window;
						inputWindow.Owner = temp1;
						inputWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Import;
						inputWindow.ShowDialog();
						break;
					case "btnStockout":
						OutputWindow outputWindow = new OutputWindow();
						FrameworkElement window2 = Window.GetWindow(p);
						var temp2 = window2 as Window;
						outputWindow.Owner = temp2;
						outputWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Export;
						outputWindow.ShowDialog();
						break;
					case "btnSupplies":
						SuppliesWindow suppliesWindow = new SuppliesWindow();
						FrameworkElement window3 = Window.GetWindow(p);
						var temp3 = window3 as Window;
						suppliesWindow.Owner = temp3;
						suppliesWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.PackageVariantClosed;
						suppliesWindow.ShowDialog();
						break;
					case "btnUnit":
						UnitWindow unitWindow = new UnitWindow();
						FrameworkElement window4 = Window.GetWindow(p);
						var temp4 = window4 as Window;
						unitWindow.Owner = temp4;
						unitWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.ChartScatterPlotHexbin;
						unitWindow.ShowDialog();
						break;
					case "btnSupplier":
						SupplierWindow supplierWindow = new SupplierWindow();
						FrameworkElement window5 = Window.GetWindow(p);
						var temp5 = window5 as Window;
						supplierWindow.Owner = temp5;
						supplierWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Factory;
						supplierWindow.ShowDialog();
						break;
					case "btnCustomer":
						CustomerWindow customerWindow = new CustomerWindow();
						FrameworkElement window6 = Window.GetWindow(p);
						var temp6 = window6 as Window;
						customerWindow.Owner = temp6;
						customerWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.AccountMultiple;
						customerWindow.ShowDialog();
						break;
					case "btnUser":
						UserWindow userWindow = new UserWindow();
						FrameworkElement window7 = Window.GetWindow(p);
						var temp7 = window7 as Window;
						userWindow.Owner = temp7;
						userWindow.controlBar.packIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.AccountEdit;
						userWindow.ShowDialog();
						break;
				}
			});
		}

		private void LoadStockInTradeData()
		{
			StockInTradeList = new ObservableCollection<StockInTrade>();
			var objectList = DataProvider.DB.Objects;
			int i = 1;

			foreach (var item in objectList)
			{
				var inputList = DataProvider.DB.InputInfoes.Where(p => p.IdObject == item.Id);
				var outputList = DataProvider.DB.OutputInfoes.Where(p => p.IdObject == item.Id);

				Nullable<int> sumInput = 0;
				Nullable<int> sumOutput = 0;

				if(inputList != null)
				{
					sumInput = inputList.Sum(p => p.Count);
				}
				if (outputList != null)
				{
					sumOutput = outputList.Sum(p => p.Count);
				}

				StockInTrade stockInTrade = new StockInTrade();
				stockInTrade.STT = i;
				stockInTrade.Count = Convert.ToInt32(sumInput - sumOutput);
				stockInTrade.Object = item;

				StockInTradeList.Add(stockInTrade);
				i++;
			}
		}
	}
}
