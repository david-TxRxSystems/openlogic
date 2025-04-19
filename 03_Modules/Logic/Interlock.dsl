module Interlock {
  param Count = 4
  input digital In[Count], Reset
  output digital Out[Count]

  var integer Latched = 0

  on rising(Reset) do
    set Latched = 0
    for i in 1..Count do
      emit Out[i] => false
    end
  end

  on rising(In[i]) do
    if Latched != i then
      set Latched = i
      for j in 1..Count do
        emit Out[j] => (j == i)
      end
    end
  end
}