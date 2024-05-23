import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:sizing/sizing.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ProgressDataTable extends StatefulWidget {
  const ProgressDataTable({Key? key}) : super(key: key);

  @override
  _ProgressDataTableState createState() => _ProgressDataTableState();
}

class _ProgressDataTableState extends State<ProgressDataTable> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      gridLinesVisibility: GridLinesVisibility.both,
      headerGridLinesVisibility: GridLinesVisibility.both,
      source: employeeDataSource,
      columnWidthMode: ColumnWidthMode.fill,
      columns: <GridColumn>[

        _dataColumn(colName: 'files',title: 'Files'),
        _dataColumn(colName: 'description',title: 'Description'),
        _dataColumn(colName: 'upload',title: 'Upload Time'),
        _dataColumn(colName: 'name',title: 'Name'),

      ],
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),
      Employee('asset/images/mobile/image_progress.png', 'Lorem ipsumdolor sit amet,nsectetur', '07:25PM', 'John Doe'),



    ];
  }

  GridColumn _dataColumn({required String colName,required String title }){
    return  GridColumn(
        columnName: colName,
        label: Container(
            color: AppColors.primaryColor,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 13.fss,
                color : AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            )));
  }
}


class Employee {
  Employee( this.files, this.description, this.upload, this.name);

  final String files;

  final String description;

  final String upload;

  final String name;
}


class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData.map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'files', value: e.files),
      DataGridCell<String>(columnName: 'description', value: e.description),
      DataGridCell<String>(columnName: 'upload', value: e.upload),
      DataGridCell<String>(columnName: 'name', value: e.name),
    ])).toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: e.columnName.toString().trim() == 'files' ? Image.asset(e.value):Text(e.value.toString(),maxLines: 3,),
          );
        }).toList());
  }}




