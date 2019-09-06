#include <stdio.h>
#include <stdlib.h>

struct node {
	int data;
	struct node *next;
	struct node *prev;
};

struct node *head = NULL;

int add_node_nth(void)
{
	int data, node_po, i=1;
	struct node *temp, *new, *prev;
	temp = head;
	printf("please enter the node  data \n");
	scanf("%d", &data);
	printf("enter node position \n");
	scanf("%d", &node_po);

	while(temp->next != NULL) {
		prev = temp;
		temp = temp->next;
		i++;
		if(i >= node_po)
		{
			new = malloc(sizeof(struct node));
			prev->next = new;
			new->data = data;
			new->next = temp;
			printf("add at %d position\n", node_po);
			return 0;					
		}
	}
	printf("add at %d position not found\n", node_po);					
	
	return 0;
}

int add_node_start(void)
{
	int data;
	struct node *new;
	printf("please enter the node  data \n");
	scanf("%d", &data);

	if(head==NULL) {
		head = malloc(sizeof(struct node));
		head->data = data;
		head->next = NULL;
		head->prev = NULL;
		return 0;
	}
	new = malloc(sizeof(struct node));
	new->data = data;
	new->next = head;
	head = new;
	return 0;
}

int add_node_end(void)
{
	int data;
	struct node *temp, *new;
	temp = head;
	printf("please enter the node  data \n");
	scanf("%d", &data);
	printf("adding node with data = %d\n", data);

	if(head==NULL) {
		head = malloc(sizeof(struct node));
		head->data = data;
		head->next = NULL;
		head->prev = NULL;
		goto out;
	}

	while(temp->next != NULL) {
		temp = temp->next;
	}

	new = malloc(sizeof(struct node));
	temp->next = new;
	new->next = NULL;
	new->prev = temp;
	new->data = data;
	
out:
	printf("one node added \n");
	return 0;
}

int del_node_nth(void)
{
	int data, node_po, i=1;
	struct node *temp, *new, *prev;
	temp = head;

	if(temp==NULL) {
		printf("link is emty \n");
		return 0;
	}

	printf("enter node position del \n");
	scanf("%d", &node_po);

	while(temp->next != NULL)
	{
		if (i >= node_po) {
			prev->next = temp->next;
			free(temp);
			printf("%dth position nnode del \n",i);
			return 0;
		}
		prev = temp;
		temp = temp->next;
		i++;
	}
	printf("position not found to del \n");
	return 0;

}

int del_node_start(void)
{
	int i = 1;
	struct node *temp;
	temp = head;
	if(temp==NULL) {
		printf("link is emty \n");
		return 0;
	}
	head = head->next;
	free(temp);
	printf("head node delted \n");
}

int del_node_end(void)
{
	int i = 1;
	struct node *temp;
	temp = head;
	if(temp==NULL) {
		printf("link is emty \n");
		return 0;
	}
	while(temp->next->next != NULL) {
		temp = temp->next;
		i++;
	}
	i++;
	printf("del the %dth node and data = %d \n", i, temp->next->data);
	free(temp->next);	
	temp->next = NULL;
}

int display_nodes(void)
{
	int i = 1;
	struct node *temp;
	temp = head;
	if(temp==NULL) {
		printf("please add node \n");
		return 0;
	}

	while(temp->next != NULL) {
		printf("node number = %d node data = %d \n",i, temp->data);
		temp = temp->next;
		i++;
	}
	printf("node number = %d node data = %d \n",i, temp->data);
	return 0;
	
}

int main(void)
{
	printf("writing program to linked listi\n");

	display_nodes();
	add_node_end();
	add_node_end();
	add_node_end();
	add_node_end();
	add_node_end();
	display_nodes();
	del_node_end();
	display_nodes();
	add_node_start();
	display_nodes();
	del_node_start();
	display_nodes();
	add_node_nth();
	display_nodes();
	del_node_nth();
	display_nodes();

	return 0;
}
