#include "lists.h"

/**
 * check_cycle - checks if a singly linked list has a cycle in it
 * @list: pointer to the head of the list
 * Return: 0 if there is no cycle, 1 if there is a cycle
 */
int check_cycle(listint_t *list)
{
    listint_t *slow = list;
    listint_t *fast = list;

    while (slow && fast && fast->next)
    {
        slow = slow->next;          // Move slow pointer one node
        fast = fast->next->next;    // Move fast pointer two nodes

        // If the pointers meet, it indicates a cycle
        if (slow == fast)
            return (1);
    }

    // If we reach this point, there is no cycle
    return (0);
}

