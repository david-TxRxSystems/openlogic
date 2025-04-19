module NOR {
  param Count = 2
  input digital In[Count]
  output digital Out

  on change(In) do
    let result = false
    for i in 1..Count do
      if In[i] == true then set result = true
    end
    emit Out => !result
  end
}