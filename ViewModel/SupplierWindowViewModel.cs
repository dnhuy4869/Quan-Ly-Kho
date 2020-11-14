using QuanLyKho.EntityFramework;
using QuanLyKho.Model;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
	public class SupplierWindowViewModel : BaseViewModel
	{
		private string _Address;

		private DateTime? _ContractDate;

		private string _DisplayName;

		private string _Email;

		private ObservableCollection<Supplier> _List;

		private string _MoreInfo;

		private string _Phone;

		private Supplier _SelectedItem;

		public ICommand AddCommand { get; set; }

		public string Address
		{
			get { return _Address; }
			set { _Address = value; OnPropertyChanged(); }
		}

		public DateTime? ContractDate
		{
			get { return _ContractDate; }
			set { _ContractDate = value; OnPropertyChanged(); }
		}

		public string DisplayName
		{
			get { return _DisplayName; }
			set { _DisplayName = value; OnPropertyChanged(); }
		}

		public ICommand EditCommand { get; set; }

		public string Email
		{
			get { return _Email; }
			set { _Email = value; OnPropertyChanged(); }
		}

		public ObservableCollection<Supplier> List
		{
			get { return _List; }
			set { _List = value; OnPropertyChanged(); }
		}

		public string MoreInfo
		{
			get { return _MoreInfo; }
			set { _MoreInfo = value; OnPropertyChanged(); }
		}

		public string Phone
		{
			get { return _Phone; }
			set { _Phone = value; OnPropertyChanged(); }
		}

		public Supplier SelectedItem
		{
			get { return _SelectedItem; }
			set
			{
				_SelectedItem = value;
				OnPropertyChanged();
				if (SelectedItem != null)
				{
					DisplayName = SelectedItem.DisplayName;
					Address = SelectedItem.Address;
					Phone = SelectedItem.Phone;
					Email = SelectedItem.Email;
					MoreInfo = SelectedItem.MoreInfo;
					ContractDate = SelectedItem.ContractDate;
				}
			}
		}

		public SupplierWindowViewModel()
		{
			List = new ObservableCollection<Supplier>(DataProvider.DB.Suppliers);

			AddCommand = new RelayCommand<object>(p =>
			{
				if (string.IsNullOrEmpty(DisplayName))
				{
					return false;
				}
				var displayList = DataProvider.DB.Suppliers.Where(x => x.DisplayName == DisplayName);
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
				var Supplier = new Supplier() { DisplayName = DisplayName, Address = Address, ContractDate = ContractDate, Email = Email, MoreInfo = MoreInfo, Phone = Phone };
				DataProvider.DB.Suppliers.Add(Supplier);
				DataProvider.DB.SaveChanges();
				List.Add(Supplier);
			});

			EditCommand = new RelayCommand<object>(p =>
			{
				return true;
			},
			p =>
			{
				var Supplier = DataProvider.DB.Suppliers.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
				Supplier.DisplayName = DisplayName;
				Supplier.Address = Address;
				Supplier.Phone = Phone;
				Supplier.MoreInfo = MoreInfo;
				Supplier.ContractDate = ContractDate;
				Supplier.Email = Email;
				DataProvider.DB.SaveChanges();
				List.Remove(SelectedItem);
				List.Add(Supplier);
				SelectedItem = Supplier;
				OnPropertyChanged("List");
			});
		}
	}
}
