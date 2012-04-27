.class public abstract Lcom/nemustech/tiffany/widget/TFAdapterView;
.super Landroid/view/ViewGroup;
.source "TFAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAdapterView$1;,
        Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;,
        Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;,
        Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;,
        Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;,
        Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;,
        Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 82
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 92
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 124
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    .line 150
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 156
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 161
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 167
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 199
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    .line 204
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    .line 223
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 82
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 92
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 124
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    .line 150
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 156
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 161
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 167
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 199
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    .line 204
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    .line 223
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 82
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 92
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 124
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    .line 150
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 156
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 161
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 167
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 199
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    .line 204
    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    .line 223
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 864
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemSelectedListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 868
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 870
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemSelectedListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 873
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemSelectedListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    const/4 p1, 0x0

    .line 717
    :cond_0
    if-eqz p1, :cond_3

    .line 718
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setVisibility(I)V

    .line 729
    :goto_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 730
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mLeft:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mRight:I

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onLayout(ZIIII)V

    .line 736
    :cond_1
    :goto_1
    return-void

    .line 723
    :cond_2
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 734
    :cond_4
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 441
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 454
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 482
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 467
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 908
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 694
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 695
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    move v1, v5

    .line 696
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v2, v5

    .line 700
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_6

    move v3, v5

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 701
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_7

    move v3, v5

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 702
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 703
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    move v3, v5

    :goto_4
    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->updateEmptyStatus(Z)V

    .line 705
    :cond_3
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_4
    move v1, v4

    .line 695
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_5
    move v2, v4

    .line 696
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_6
    move v3, v4

    .line 700
    goto :goto_2

    :cond_7
    move v3, v4

    .line 701
    goto :goto_3

    :cond_8
    move v3, v4

    .line 703
    goto :goto_4
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 975
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->selectionChanged()V

    .line 977
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    .line 978
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    .line 980
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 879
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 884
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 885
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 891
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 892
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 895
    :cond_1
    if-nez v0, :cond_3

    .line 896
    if-eqz v1, :cond_2

    .line 897
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 899
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 900
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 903
    :cond_3
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 774
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 766
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 991
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v3, v0

    .line 993
    .local v3, count:I
    if-nez v3, :cond_0

    .line 994
    const/16 v16, -0x1

    .line 1066
    :goto_0
    return v16

    .line 997
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    move-wide v9, v0

    .line 998
    .local v9, idToMatch:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    move v15, v0

    .line 1001
    .local v15, seed:I
    const-wide/high16 v16, -0x8000

    cmp-long v16, v9, v16

    if-nez v16, :cond_1

    .line 1002
    const/16 v16, -0x1

    goto :goto_0

    .line 1006
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1007
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1014
    .local v4, endTime:J
    move v6, v15

    .line 1017
    .local v6, first:I
    move v11, v15

    .line 1020
    .local v11, last:I
    const/4 v12, 0x0

    .line 1030
    .local v12, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1031
    .local v2, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v2, :cond_4

    .line 1032
    const/16 v16, -0x1

    goto :goto_0

    .line 1050
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v13, rowId:J
    :cond_2
    if-nez v7, :cond_3

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1052
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 1053
    move v15, v11

    .line 1055
    const/4 v12, 0x0

    .line 1035
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v13           #rowId:J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1036
    invoke-interface {v2, v15}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1037
    .restart local v13       #rowId:J
    cmp-long v16, v13, v9

    if-nez v16, :cond_5

    move/from16 v16, v15

    .line 1039
    goto :goto_0

    .line 1042
    :cond_5
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1043
    .restart local v8       #hitLast:Z
    :goto_2
    if-nez v6, :cond_8

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 1045
    .restart local v7       #hitFirst:Z
    :goto_3
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 1066
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v13           #rowId:J
    :cond_6
    const/16 v16, -0x1

    goto :goto_0

    .line 1042
    .restart local v13       #rowId:J
    :cond_7
    const/16 v16, 0x0

    move/from16 v8, v16

    goto :goto_2

    .line 1043
    .restart local v8       #hitLast:Z
    :cond_8
    const/16 v16, 0x0

    move/from16 v7, v16

    goto :goto_3

    .line 1056
    .restart local v7       #hitFirst:Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_4

    if-nez v7, :cond_4

    .line 1058
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1059
    move v15, v6

    .line 1061
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 571
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 614
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 750
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 751
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 624
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v6, -0x1

    .line 584
    move-object v3, p1

    .line 587
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 588
    move-object v3, v4

    goto :goto_0

    .line 590
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/ClassCastException;
    move v5, v6

    .line 604
    .end local v1           #e:Ljava/lang/ClassCastException;
    :goto_1
    return v5

    .line 596
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getChildCount()I

    move-result v0

    .line 597
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 598
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 599
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 597
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v5, v6

    .line 604
    goto :goto_1
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 541
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 532
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 912
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    .line 913
    .local v0, count:I
    const/4 v1, 0x0

    .line 915
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 920
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 923
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 927
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->findSyncPosition()I

    move-result v2

    .line 928
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 930
    invoke-virtual {p0, v2, v6}, Lcom/nemustech/tiffany/widget/TFAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 931
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 933
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setNextSelectedPositionInt(I)V

    .line 934
    const/4 v1, 0x1

    .line 938
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 940
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 943
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 944
    sub-int v2, v0, v6

    .line 946
    :cond_1
    if-gez v2, :cond_2

    .line 947
    const/4 v2, 0x0

    .line 951
    :cond_2
    invoke-virtual {p0, v2, v6}, Lcom/nemustech/tiffany/widget/TFAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 952
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 954
    invoke-virtual {p0, v2, v5}, Lcom/nemustech/tiffany/widget/TFAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 956
    :cond_3
    if-ltz v3, :cond_4

    .line 957
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setNextSelectedPositionInt(I)V

    .line 958
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->checkSelectionChanged()V

    .line 959
    const/4 v1, 0x1

    .line 963
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 965
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 966
    iput-wide v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 967
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 968
    iput-wide v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 969
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 970
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->checkSelectionChanged()V

    .line 972
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 664
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1078
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 522
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mLayoutHeight:I

    .line 523
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->playSoundEffect(I)V

    .line 290
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemClickListener;->onItemClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)V

    .line 291
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1111
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1112
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 1113
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncHeight:J

    .line 1114
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1116
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1117
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 1118
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 1119
    if-eqz v1, :cond_0

    .line 1120
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 1122
    :cond_0
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncMode:I

    .line 1139
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1125
    :cond_2
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1126
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1127
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1128
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 1132
    :goto_1
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 1133
    if-eqz v1, :cond_3

    .line 1134
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 1136
    :cond_3
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1130
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 517
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 495
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 507
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 842
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemSelectedListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 843
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectionNotifier:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 849
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;-><init>(Lcom/nemustech/tiffany/widget/TFAdapterView;Lcom/nemustech/tiffany/widget/TFAdapterView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectionNotifier:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectionNotifier:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectionNotifier:Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 858
    :cond_2
    :goto_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 859
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->sendAccessibilityEvent(I)V

    .line 861
    :cond_3
    return-void

    .line 853
    :cond_4
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 670
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v1, v4

    .line 672
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDesiredFocusableState:Z

    .line 673
    if-nez p1, :cond_1

    .line 674
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 677
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v4

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 678
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v3

    .line 670
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v2, v3

    .line 677
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 682
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 683
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v1, v3

    .line 685
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 686
    if-eqz p1, :cond_1

    .line 687
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDesiredFocusableState:Z

    .line 690
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 691
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v4

    .line 683
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v2, v4

    .line 690
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1096
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 1097
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 1099
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1100
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 1101
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 1103
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 756
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1086
    .local p0, this:Lcom/nemustech/tiffany/widget/TFAdapterView;,"Lcom/nemustech/tiffany/widget/TFAdapterView<TT;>;"
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 1087
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 1088
    return-void
.end method
