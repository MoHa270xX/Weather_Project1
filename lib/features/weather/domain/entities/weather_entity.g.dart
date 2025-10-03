// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeatherEntityAdapter extends TypeAdapter<WeatherEntity> {
  @override
  final int typeId = 0;

  @override
  WeatherEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeatherEntity(
      temperature: fields[0] as Temperature?,
      humidity: fields[1] as Humidity?,
      precipitation: fields[2] as Precipitation?,
      snowPrecipitation: fields[3] as SnowPrecipitation?,
      windSpeed: fields[4] as WindSpeed?,
      snowDepth: fields[5] as SnowDepth?,
    );
  }

  @override
  void write(BinaryWriter writer, WeatherEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.temperature)
      ..writeByte(1)
      ..write(obj.humidity)
      ..writeByte(2)
      ..write(obj.precipitation)
      ..writeByte(3)
      ..write(obj.snowPrecipitation)
      ..writeByte(4)
      ..write(obj.windSpeed)
      ..writeByte(5)
      ..write(obj.snowDepth);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
