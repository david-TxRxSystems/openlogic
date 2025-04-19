module AnalogCompare {
  input analog A, B
  output digital A_GT_B, A_LT_B, A_EQ_B

  on change(A), change(B) do
    emit A_GT_B => (A > B)
    emit A_LT_B => (A < B)
    emit A_EQ_B => (A == B)
  end
}