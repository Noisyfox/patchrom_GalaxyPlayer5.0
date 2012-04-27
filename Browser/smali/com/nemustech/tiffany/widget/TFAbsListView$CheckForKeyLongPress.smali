.class Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;
.super Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1939
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1941
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1942
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 1943
    .local v1, index:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1945
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v3, v3, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 1946
    const/4 v0, 0x0

    .line 1947
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1948
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v4, v4, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-wide v5, v5, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 1950
    :cond_0
    if-eqz v0, :cond_1

    .line 1951
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1952
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1959
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1955
    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1956
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
