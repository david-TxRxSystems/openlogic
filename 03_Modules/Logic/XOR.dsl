module XOR {
  param Count = 2
  input digital In[Count]
  output digital Out

  on change(In) do
    let count = 0
    for i in 1..Count do
      if In[i] == true then count = count + 1
    end
    emit Out => (count % 2 == 1)
  end
}