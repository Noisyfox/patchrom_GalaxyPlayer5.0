.class Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1915
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1917
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v5, v6, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 1918
    .local v5, motionPosition:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v7, v7, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1919
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1920
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v4, v6, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 1921
    .local v4, longPressPosition:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v6, v6, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v7, v7, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1923
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 1924
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v6, v6, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 1925
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 1927
    :cond_0
    if-eqz v1, :cond_2

    .line 1928
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 1929
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v6, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1930
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1936
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_1
    :goto_0
    return-void

    .line 1932
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    :cond_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto :goto_0
.end method
