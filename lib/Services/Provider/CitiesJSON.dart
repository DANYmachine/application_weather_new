class CitiesJSON {
  String id;
  String name;
  String state;
  String country;
  double lon;
  double lat;

  CitiesJSON(
    this.id,
    this.name,
    this.state,
    this.country,
    this.lon,
    this.lat,
  );

  @override
  String toString() {
    return 'IdCity: $id Name: $name, State: $state, Country: $country';
  }
}
