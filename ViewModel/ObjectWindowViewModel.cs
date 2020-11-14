using QuanLyKho.EntityFramework;
using QuanLyKho.Model;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;
using Object = QuanLyKho.Model.Object;

namespace QuanLyKho.ViewModel
{
	public class ObjectWindowViewModel : BaseViewModel
	{
		private string _BarCode;

		private string _DisplayName;

		private ObservableCollection<Object> _List;

		private string _QRCode;

		private Object _SelectedItem;

		private ObservableCollection<Supplier> _Supplier;

		private ObservableCollection<Unit> _Unit;

		public ICommand AddCommand { get; set; }

		public string BarCode
		{
			get { return _BarCode; }
			set { _BarCode = value; OnPropertyChanged(); }
		}

		public string DisplayName
		{
			get { return _DisplayName; }
			set { _DisplayName = value; OnPropertyChanged(); }
		}

		public ICommand EditCommand { get; set; }

		public ObservableCollection<Object> List
		{
			get { return _List; }
			set { _List = value; OnPropertyChanged(); }
		}

		public string QRCode
		{
			get { return _QRCode; }
			set { _QRCode = value; OnPropertyChanged(); }
		}

		public Object SelectedItem
		{
			get { return _SelectedItem; }
			set
			{
				_SelectedItem = value;
				OnPropertyChanged();
				if (SelectedItem != null)
				{
					DisplayName = SelectedItem.DisplayName;
					QRCode = SelectedItem.QRCode;
					BarCode = SelectedItem.BarCode;
					SelectedUnit = SelectedItem.Unit;
					SelectedSupplier = SelectedItem.Supplier;
				}
			}
		}

		private Unit _SelectedUnit;
		public Unit SelectedUnit
		{
			get { return _SelectedUnit; }
			set
			{
				_SelectedUnit = value;
				OnPropertyChanged();
			}
		}

		private Supplier _SelectedSupplier;
		public Supplier SelectedSupplier
		{
			get { return _SelectedSupplier; }
			set
			{
				_SelectedSupplier = value;
				OnPropertyChanged();
			}
		}

		public ObservableCollection<Supplier> Supplier
		{
			get { return _Supplier; }
			set { _Supplier = value; OnPropertyChanged(); }
		}

		public ObservableCollection<Unit> Unit
		{
			get { return _Unit; }
			set { _Unit = value; OnPropertyChanged(); }
		}

		public ObjectWindowViewModel()
		{
			List = new ObservableCollection<Object>(DataProvider.DB.Objects);
			Unit = new ObservableCollection<Unit>(DataProvider.DB.Units);
			Supplier = new ObservableCollection<Supplier>(DataProvider.DB.Suppliers);

			AddCommand = new RelayCommand<object>(p =>
			{
				if (SelectedSupplier == null || SelectedUnit == null)
				{
					return false;
				}
				var displayList = DataProvider.DB.Objects.Where(x => x.DisplayName == DisplayName);
				if (displayList.Count() > 0)
				{
					return false;
				}
				else
				{
					return true;
				}
			},
			p =>
			{
				var Object = new Object() { DisplayName = DisplayName, QRCode = QRCode, BarCode = BarCode, IdSupplier = SelectedSupplier.Id, IdUnit = SelectedUnit.Id, Id = Guid.NewGuid().ToString()};
				DataProvider.DB.Objects.Add(Object);
				DataProvider.DB.SaveChanges();
				List.Add(Object);
			});

			EditCommand = new RelayCommand<object>(p =>
			{
				if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null)
				{
					return false;
				}
				var displayList = DataProvider.DB.Objects.Where(x => x.DisplayName == DisplayName);
				if (displayList.Count() > 0)
				{
					return false;
				}
				else
				{
					return true;
				}
			},
			p =>
			{
				var Object = DataProvider.DB.Objects.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
				Object.DisplayName = DisplayName;
				Object.BarCode = BarCode;
				Object.QRCode = QRCode;
				Object.IdSupplier = SelectedSupplier.Id;
				Object.IdUnit = SelectedUnit.Id;
				DataProvider.DB.SaveChanges();
				List.Remove(SelectedItem);
				List.Add(Object);
				SelectedItem = Object;
				OnPropertyChanged("List");
			});
		}
	}
}
