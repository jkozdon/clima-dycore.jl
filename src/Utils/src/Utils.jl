module Utils

export @hascuda

const HAVE_CUDA = try
  using CUDAnative
  using CUDAdrv
  true
catch
  false
end
if HAVE_CUDA
  macro hascuda(ex)
    return :($(esc(ex)))
  end
else
  macro hascuda(ex)
    return :()
  end
end

end
