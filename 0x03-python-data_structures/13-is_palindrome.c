#include "lists.h"
#include <stdio.h>
#include <stdlib.h>

/**
 * is_palindrome - checks if a singly linked list is a palindrome
 * @head: double pointer to the head of the linked list
 * Return: 1 if the list is a palindrome, 0 otherwise
 */
int is_palindrome(listint_t **head)
{
    listint_t *current = *head;
    listint_t *stack = NULL;
    listint_t *temp = NULL;

    // Push elements onto the stack
    while (current != NULL)
    {
        // Create a new node for the stack
        temp = malloc(sizeof(listint_t));
        if (temp == NULL)
            return 0;

        // Copy the value from the current node
        temp->n = current->n;

        // Add the new node to the stack
        temp->next = stack;
        stack = temp;

        current = current->next;
    }

    // Compare elements from the linked list and the stack
    current = *head;
    while (current != NULL)
    {
        // Pop the top element from the stack
        temp = stack;
        stack = stack->next;

        // Compare the popped element with the current element in the list
        if (temp->n != current->n)
        {
            // Clean up allocated memory
            while (stack != NULL)
            {
                temp = stack;
                stack = stack->next;
                free(temp);
            }
            return 0;
        }

        current = current->next;
        free(temp);
    }

    return 1;
}

