class Bubble_Sort
  def bubble_sort(array)
    unsorted = false
    array.each_index do |i|
      if !array[i+1].nil? && array[i] > array[i+1] 
        aux = array[i]
        array[i] = array[i+1]
        array[i+1] = aux
        unsorted = true
      end
    end
    bubble_sort(array) if unsorted == true
    return array
  end
end

bubble_sort = Bubble_Sort.new

p bubble_sort.bubble_sort([1, 28, 34, 3, 11])