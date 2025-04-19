module AND {
  param Count = 2
  input digital In[Count]
  output digital Out

  on change(In) do
    let result = true
    for i in 1..Count do
      if In[i] == false then set result = false
    end
    emit Out => result
  end
}