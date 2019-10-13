#include <stdio.h>
#include <stdlib.h>

struct node {
	int data;
	struct node *left;
	struct node *right;
};

struct node* root;

void add_node(int data)
{
	struct node* tmp;
	tmp = root;

	if(root == NULL) {
		root = malloc(sizeof(struct node));
		root->data = data;
		root->left = NULL;
		root->right = NULL;
	}
	else {
		while(tmp != NULL) {
			if(tmp->data < data) {
				if(tmp->right != NULL) {
					tmp = tmp->right;
				}
				else{
					tmp->right = malloc(sizeof(struct node));
					tmp->right->data = data;
					tmp->right->left = NULL;
					tmp->right->right = NULL;
					break;
				}
			}
			if(tmp->data > data) {
				if(tmp->left != NULL) {
					tmp = tmp->left;
				}
				else{
					tmp->left = malloc(sizeof(struct node));
					tmp->left->data = data;
					tmp->left->left = NULL;
					tmp->left->right = NULL;
					break;
				}
			}
		}
	}
}

void post_order(struct node* root)
{
	if(root == NULL)
		return;

	if(root->left != NULL)
		post_order(root->left);
	if(root->right != NULL)
		post_order(root->right);

	printf("%d ",root->data);
}

void pre_order(struct node* root)
{
	if(root == NULL)
		return;

	printf("%d ",root->data);

	if(root->left != NULL) {
		pre_order(root->left);
	}

	if(root->right != NULL) {
		pre_order(root->right);
	}
}

void in_order(struct node* root)
{
	if(root == NULL)
		return;

	if(root->left != NULL)
		in_order(root->left);

	printf("%d ",root->data);

	if(root->right != NULL)
		in_order(root->right);

}

void level_order(void)
{

}

void main(void)
{
//	struct node* root = NULL;

	add_node(4);
	add_node(3);
	add_node(6);
	add_node(1);
	add_node(2);
	add_node(5);
	add_node(7);
	printf("\npost_order \n");
	post_order(root);
	printf("\npre_order \n");
	pre_order(root);
	printf("\nin_order \n");
	in_order(root);
	printf("\nlevel_order \n");
	level_order(root);
}

