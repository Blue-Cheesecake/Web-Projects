export { LengthConverter, VolumeConverter, MassConverter };

class LengthConverter {
  public static meter_to_feet(x: number): number {
    return x * 3.28084;
  }
  public static feet_to_meter(x: number): number {
    return x * 0.3048;
  }
}

class VolumeConverter {
  public static liters_to_gallons(x: number): number {
    return x * 0.264172;
  }

  public static gallons_to_liters(x: number): number {
    return x * 3.78541;
  }
}

class MassConverter {
  public static kilos_to_pounds(x: number): number {
    return x * 2.20462;
  }
  public static pounds_to_kilos(x: number): number {
    return x * 0.453592;
  }
}
