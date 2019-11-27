int revers_recoseve(struct node *tmp)
{

    if(tmp==NULL) {
        return 0;
    }
    
    if(tmp->next == NULL)
    {
       head=tmp;
       return 0;
    } 
    revers_recoseve(tmp->next);
    tmp->next->next = tmp;
    tmp->next = NULL;
    printf("hello tmp->data =%d \n", tmp->data);
    return 0;
}

int revers_itarative(struct node *tmp)
{
    struct node *cur, *pre, *next;
    pre = NULL;
    cur = tmp;
    
    if(tmp == NULL)
    {
        return 0;    
    }
    
    while(cur != NULL)
    {
        next = cur->next;
        cur->next = pre;
        pre = cur;
        cur = next;
        
        printf("hello loop \n");
    }
    head = pre;
    return 0;
}
