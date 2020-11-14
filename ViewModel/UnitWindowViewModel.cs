using QuanLyKho.EntityFramework;
using QuanLyKho.Model;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;

namespace QuanLyKho.ViewModel
{
	public class UnitWindowViewModel : BaseViewModel
	{
		private string _DisplayName;

		private ObservableCollection<Unit> _List;

		private Unit _SelectedItem;

		public ICommand AddCommand { get; set; }

		public string DisplayName
		{
			get { return _DisplayName; }
			set { _DisplayName = value; OnPropertyChanged(); }
		}

		public ICommand EditCommand { get; set; }

		public ObservableCollection<Unit> List
		{
			get { return _List; }
			set { _List = value; OnPropertyChanged(); }
		}

		public Unit SelectedItem
		{
			get { return _SelectedItem; }
			set
			{
				_SelectedItem = value;
				OnPropertyChanged();
				if (SelectedItem != null)
				{
					DisplayName = SelectedItem.DisplayName;
				}
			}
		}

		public UnitWindowViewModel()
		{
			List = new ObservableCollection<Unit>(DataProvider.DB.Units);

			AddCommand = new RelayCommand<object>(p =>
			{
				if (string.IsNullOrEmpty(DisplayName))
				{
					return false;
				}
				var displayList = DataProvider.DB.Units.Where(x => x.DisplayName == DisplayName);
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
				var unit = new Unit() { DisplayName = DisplayName };
				DataProvider.DB.Units.Add(unit);
				DataProvider.DB.SaveChanges();
				List.Add(unit);
			});

			EditCommand = new RelayCommand<object>(p =>
			{
				if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null)
				{
					return false;
				}
				var displayList = DataProvider.DB.Units.Where(x => x.DisplayName == DisplayName);
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
			var unit = DataProvider.DB.Units.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
			unit.DisplayName = DisplayName;
			DataProvider.DB.SaveChanges();
			List.Remove(SelectedItem);
			List.Add(unit);
			SelectedItem = unit;
			OnPropertyChanged("List");
		});
		}
	}
}
