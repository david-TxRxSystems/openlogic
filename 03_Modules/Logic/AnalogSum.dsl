module AnalogSum {
  param Count = 2
  input analog In[Count]
  output analog Out

  on change(In) do
    let total = 0
    for i in 1..Count do
      total = total + In[i]
    end
    emit Out => total
  end
}