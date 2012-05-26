.class Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusBarToggleArrangement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/StatusBarToggleArrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleAdapter"
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/StatusBarToggleArrangement;


# direct methods
.method private constructor <init>(Lcom/android/settings/StatusBarToggleArrangement;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/StatusBarToggleArrangement;Lcom/android/settings/StatusBarToggleArrangement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;-><init>(Lcom/android/settings/StatusBarToggleArrangement;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleArrangement;->access$300(Lcom/android/settings/StatusBarToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleArrangement;->access$300(Lcom/android/settings/StatusBarToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleArrangement;->access$300(Lcom/android/settings/StatusBarToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/StatusBarToggleArrangement;->access$300(Lcom/android/settings/StatusBarToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, id:I
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030059

    invoke-virtual {v2, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I
    invoke-static {v3}, Lcom/android/settings/StatusBarToggleArrangement;->access$400(Lcom/android/settings/StatusBarToggleArrangement;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;
    invoke-static {v4}, Lcom/android/settings/StatusBarToggleArrangement;->access$500(Lcom/android/settings/StatusBarToggleArrangement;)Landroid/widget/SortableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    .end local p0
    :goto_1
    return-object v3

    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local p0
    :cond_1
    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    const v4, 0x7f0c0127

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    const v5, 0x7f09041c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mFixedDividerPosition:I
    invoke-static {v7}, Lcom/android/settings/StatusBarToggleArrangement;->access$400(Lcom/android/settings/StatusBarToggleArrangement;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/StatusBarToggleArrangement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    if-ne p2, v3, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p2, :cond_4

    iget-object v3, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03005a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f0c0128

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mListView:Landroid/widget/SortableListView;
    invoke-static {v4}, Lcom/android/settings/StatusBarToggleArrangement;->access$500(Lcom/android/settings/StatusBarToggleArrangement;)Landroid/widget/SortableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const v3, 0x7f0c0007

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/util/ToggleManager;->getName(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0c002a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1}, Landroid/util/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    move-object v3, p2

    goto :goto_1
.end method
