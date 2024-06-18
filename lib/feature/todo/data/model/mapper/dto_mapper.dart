abstract interface class DtoMapper<Dto, Model>
    implements FromDtoMapper<Dto, Model>, FromModelMapper<Dto, Model> {}

abstract interface class FromDtoMapper<Dto, Model> {
  Model mapFromDto(Dto dto);
}

abstract interface class FromModelMapper<Dto, Model> {
  Dto mapFromModel(Model model);
}
