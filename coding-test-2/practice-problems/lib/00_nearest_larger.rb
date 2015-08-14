def nearest_larger(arr, idx)
  idx=idx.to_i
  x = 1

  (arr.count).times do
    if (arr[idx] < arr[idx-x])
      p idx-x
      idx-x < 0 ? (return idx+x) : (return idx-x)
    elsif (arr[idx+x] != nil) && (arr[idx] < arr[idx+x])
      p idx+x
      return idx + x
    end
    x += 1
  end
  return nil
end
