import '../database.dart';

class RidesTable extends SupabaseTable<RidesRow> {
  @override
  String get tableName => 'Rides';

  @override
  RidesRow createRow(Map<String, dynamic> data) => RidesRow(data);
}

class RidesRow extends SupabaseDataRow {
  RidesRow(super.data);

  @override
  SupabaseTable get table => RidesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get timestamp => getField<DateTime>('Timestamp')!;
  set timestamp(DateTime value) => setField<DateTime>('Timestamp', value);

  int? get ride => getField<int>('Ride');
  set ride(int? value) => setField<int>('Ride', value);

  int get batteryCurrent => getField<int>('Battery_Current')!;
  set batteryCurrent(int value) => setField<int>('Battery_Current', value);

  int get motorTemperature => getField<int>('Motor_Temperature')!;
  set motorTemperature(int value) => setField<int>('Motor_Temperature', value);

  int get batteryVoltage => getField<int>('Battery_Voltage')!;
  set batteryVoltage(int value) => setField<int>('Battery_Voltage', value);

  int get motorRPM => getField<int>('Motor_RPM')!;
  set motorRPM(int value) => setField<int>('Motor_RPM', value);

  int get brakePressure => getField<int>('Brake_Pressure')!;
  set brakePressure(int value) => setField<int>('Brake_Pressure', value);

  String get batteryStateIndicator =>
      getField<String>('Battery_State_Indicator')!;
  set batteryStateIndicator(String value) =>
      setField<String>('Battery_State_Indicator', value);
}
