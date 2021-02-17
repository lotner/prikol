# frozen_string_literal: true

# Module for files
def files(xxx, yyy)
  File.open('F.txt', 'w') { |f| f.write xxx }
  File.open('G.txt', 'w') { |f| f.write yyy }
  aa1 = File.read('F.txt')
  bb1 = File.read('G.txt')
  return 'Компоненты совпадают' if aa1 == bb1

  arr1 = aa1.split
  arr2 = bb1.split

  output(arr1, arr2) if arr1.length > arr2.length

  output(arr2, arr1)
end

def output(arr1, arr2)
  ('Компонент расхождения: ' + (arr1.find_index.each_with_index do |item, idx|
                                  item != arr2[idx]
                                end + 1).to_s)
end
