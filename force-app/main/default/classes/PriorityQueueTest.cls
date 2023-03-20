@isTest
public class PriorityQueueTest {
  static testMethod void testPriorityQueue() {
    // Cria uma nova fila de prioridade
    PriorityQueue queue = new PriorityQueue();

    // Adiciona elementos na fila
    queue.add(10);
    queue.add(20);
    queue.add(30);

    // Verifica se o tamanho da fila é correto
    System.assertEquals(3, queue.heap.size());

    // Verifica o elemento de maior prioridade sem removê-lo
    System.assertEquals(30, queue.peek());

    // Remove o elemento de maior prioridade
    System.assertEquals(30, queue.poll());

    // Verifica se o tamanho da fila é correto após a remoção
    System.assertEquals(2, queue.heap.size());

    // Verifica se a fila não está vazia
    System.assertEquals(false, queue.isEmpty());

    // Remove o próximo elemento de maior prioridade
    System.assertEquals(20, queue.poll());

    // Verifica se o tamanho da fila é correto após a remoção
    System.assertEquals(1, queue.heap.size());

    // Verifica se a fila não está vazia
    System.assertEquals(false, queue.isEmpty());

    // Remove o último elemento da fila
    System.assertEquals(10, queue.poll());

    // Verifica se o tamanho da fila é correto após a remoção
    System.assertEquals(0, queue.heap.size());

    // Verifica se a fila está vazia
    System.assertEquals(true, queue.isEmpty());

    // Verifica se a exceção é lançada ao chamar `peek` na fila vazia
    Boolean caughtException = false;
    try {
      queue.peek();
    } catch (PriorityQueue.PriorityQueueException e) {
      caughtException = true;
    }
    System.assertEquals(true, caughtException);

    // Verifica se a exceção é lançada ao chamar `poll` na fila vazia
    caughtException = false;
    try {
      queue.poll();
    } catch (PriorityQueue.PriorityQueueException e) {
      caughtException = true;
    }
    System.assertEquals(true, caughtException);
  }
}