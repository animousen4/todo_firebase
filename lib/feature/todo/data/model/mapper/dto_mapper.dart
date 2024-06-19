/// Mapper, that includes mapping from dto to model and to dto from model
abstract interface class DtoMapper<Dto, Model>
    implements FromDtoMapper<Dto, Model>, FromModelMapper<Dto, Model> {}

/// Mapper, that maps from dto to model
abstract interface class FromDtoMapper<Dto, Model> {
  /// map method
  Model mapFromDto(Dto dto);
}

/// Mapper, that maps from model to dto
abstract interface class FromModelMapper<Dto, Model> {
  /// map method
  Dto mapFromModel(Model model);
}
