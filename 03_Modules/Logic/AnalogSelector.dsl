module AnalogSelector {
  param Count = 4
  input analog In[Count]
  input integer Select
  output analog Out

  on change(In), change(Select) do
    if Select >= 1 and Select <= Count then
      emit Out => In[Select]
    else
      emit Out => 0
    end
  end
}