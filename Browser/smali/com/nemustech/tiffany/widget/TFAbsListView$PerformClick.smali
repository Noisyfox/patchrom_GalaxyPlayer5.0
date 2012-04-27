.class Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1898
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1907
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mClickMotionPosition:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mClickMotionPosition:I

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
