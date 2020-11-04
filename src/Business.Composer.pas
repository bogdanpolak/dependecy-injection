unit Business.Composer;

interface

uses
  Spring.Container,
  {}
  Business.Interfaces,
  Business.Classes;

procedure BuildContainer(Container: TContainer);

implementation

procedure BuildContainer(Container: TContainer);
begin
  Container.RegisterType<IOrderRepository, TOrderRepository>();
  Container.RegisterType<ISubModule, TSubModule>();
  Container.RegisterType<IDataModule, TDataModule>();
  Container.RegisterType<IApplicationRoot, TApplicationRoot>();
  // TODO: GlobalContainer.RegisterDecorator()
  // TODO: GlobalContainer.RegisterFactory()
  Container.Build;
end;

end.