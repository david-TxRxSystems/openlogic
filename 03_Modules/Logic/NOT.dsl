module NOT {
  input digital In
  output digital Out

  on change(In) do
    emit Out => !In
  end
}