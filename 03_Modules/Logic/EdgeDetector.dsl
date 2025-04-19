module EdgeDetector {
  input digital In
  output digital RisingEdge, FallingEdge

  var bool last = false

  on change(In) do
    if In and not last then pulse RisingEdge
    else if not In and last then pulse FallingEdge
    set last = In
  end
}