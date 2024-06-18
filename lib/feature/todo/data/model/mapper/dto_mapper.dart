abstract interface class DtoMapper <Dto, Model> {
  Model mapFromDto(Dto dto);
  Dto mapFromModel(Model model);
}