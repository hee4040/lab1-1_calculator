#selection sorting(최솟값 중심 정리)

def selectionSort(list):
    
    #Traverse through all array elements
    for i in range(len(list)):
        
        #Find the minimum element in remaining unsorted array
        min_idx = i
        for j in range(i+1, len(list)):
            if list[min_idx] > list[j]:
                min_idx = j
        #Swap the found minimum element with the first element
        list[i], list[min_idx] = list[min_idx], list[i]
        
#Driver code to test above
list = [64,25,12,22,11]
print("Original list =%s" % list)

selectionSort(list)

print("Sorted list by Selection method")
print(list)