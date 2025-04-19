module CrosspointSwitch {
  param Inputs = 4
  param Outputs = 4
  input digital In[Inputs]
  input integer Route[Outputs]  // Route[i] = input index (1-based)
  output digital Out[Outputs]

  on change(In), change(Route) do
    for i in 1..Outputs do
      let index = Route[i]
      if index >= 1 and index <= Inputs then
        emit Out[i] => In[index]
      else
        emit Out[i] => false
      end
    end
  end
}