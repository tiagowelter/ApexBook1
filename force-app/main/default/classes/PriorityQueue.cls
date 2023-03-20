public class PriorityQueue {
    public List<Integer> heap;
  
    public PriorityQueue() {
      this.heap = new List<Integer>();
    }
  
    // Adiciona um elemento na fila
    public void add(Integer value) {
      heap.add(value);
      Integer currentIndex = heap.size() - 1;
      Integer parentIndex = (currentIndex - 1) / 2;
      while (currentIndex > 0 && heap.get(currentIndex) > heap.get(parentIndex)) {
        swap(currentIndex, parentIndex);
        currentIndex = parentIndex;
        parentIndex = (currentIndex - 1) / 2;
      }
    }
  
    // Remove e retorna o elemento de maior prioridade (o raiz da heap)
    public Integer poll() {
      if (heap.isEmpty()) {
        throw new PriorityQueueException('A fila está vazia');
      }
      Integer result = heap.get(0);
      heap.set(0, heap.get(heap.size() - 1));
      heap.remove(heap.size() - 1);
      heapifyDown();
      return result;
    }
  
    // Retorna o elemento de maior prioridade sem removê-lo
    public Integer peek() {
      if (heap.isEmpty()) {
        throw new PriorityQueueException('A fila está vazia');
      }
      return heap.get(0);
    }
  
    // Verifica se a fila está vazia
    public Boolean isEmpty() {
      return heap.isEmpty();
    }
  
    private void heapifyDown() {
      Integer currentIndex = 0;
      Integer leftChildIndex = 2 * currentIndex + 1;
      Integer rightChildIndex = 2 * currentIndex + 2;
      Integer largestIndex = currentIndex;
      while (leftChildIndex < heap.size()) {
        if (heap.get(leftChildIndex) > heap.get(largestIndex)) {
          largestIndex = leftChildIndex;
        }
        if (rightChildIndex < heap.size() && heap.get(rightChildIndex) > heap.get(largestIndex)) {
          largestIndex = rightChildIndex;
        }
        if (largestIndex == currentIndex) {
          break;
        }
        swap(currentIndex, largestIndex);
        currentIndex = largestIndex;
        leftChildIndex = 2 * currentIndex + 1;
        rightChildIndex = 2 * currentIndex + 2;
      }
    }
  
    private void swap(Integer i, Integer j) {
      Integer temp = heap.get(i);
      heap.set(i, heap.get(j));
      heap.set(j, temp);
    }
  
    // Exceção para a fila vazia
    private class PriorityQueueException extends Exception {}
}