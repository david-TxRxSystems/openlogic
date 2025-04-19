module DigitalSelector {
  param Count = 4
  input digital In[Count]
  input integer Select  // 1-based index
  output digital Out

  on change(In), change(Select) do
    if Select >= 1 and Select <= Count then
      emit Out => In[Select]
    else
      emit Out => false
    end
  end
}