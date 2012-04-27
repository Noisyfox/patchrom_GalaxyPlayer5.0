.class Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TFAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 776
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 824
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 825
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 782
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 783
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldItemCount:I

    .line 784
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    .line 788
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->access$000(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/os/Parcelable;)V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->checkFocus()V

    .line 796
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 797
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 801
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 803
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    #calls: Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->access$100(Lcom/nemustech/tiffany/widget/TFAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iget v1, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldItemCount:I

    .line 811
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iput v3, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    .line 812
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iput v2, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 813
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iput-wide v4, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 814
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iput v2, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 815
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iput-wide v4, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 816
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    iput-boolean v3, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 817
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->checkSelectionChanged()V

    .line 819
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->checkFocus()V

    .line 820
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->this$0:Lcom/nemustech/tiffany/widget/TFAdapterView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 821
    return-void
.end method
