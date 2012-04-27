.class public abstract Lcom/nemustech/tiffany/widget/TFAbsListView;
.super Lcom/nemustech/tiffany/widget/TFAdapterView;
.source "TFAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$WindowRunnnable;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nemustech/tiffany/widget/TFAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBlockExcessScroll:Z

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

.field private mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

.field protected mExcessScroll:I

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

.field mFastScrollEnabled:Z

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 642
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;)V

    .line 204
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 219
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 229
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 235
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 240
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 245
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 250
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 255
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 265
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 312
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 338
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 376
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 396
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 407
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 410
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollProfilingStarted:Z

    .line 413
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingProfilingStarted:Z

    .line 455
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 567
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 603
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    .line 617
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 622
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 643
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initAbsListView()V

    .line 645
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 646
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 647
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 648
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 649
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 655
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 656
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 662
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 219
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 229
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 235
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 240
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 245
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 250
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 255
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 260
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 265
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 312
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 338
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 376
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 396
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 398
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 407
    const/4 v9, -0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 410
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollProfilingStarted:Z

    .line 413
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingProfilingStarted:Z

    .line 455
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 567
    const/4 v9, 0x0

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 603
    new-instance v9, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    .line 617
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 622
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 663
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->initAbsListView()V

    .line 665
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0x100

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 668
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 669
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 670
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 673
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 676
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 677
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setStackFromBottom(Z)V

    .line 679
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 680
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setScrollingCacheEnabled(Z)V

    .line 682
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 683
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setTextFilterEnabled(Z)V

    .line 685
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 687
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setTranscriptMode(I)V

    .line 689
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 690
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setCacheColorHint(I)V

    .line 692
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 693
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFastScrollEnabled(Z)V

    .line 695
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 696
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 698
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 699
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1133
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1600(Lcom/nemustech/tiffany/widget/TFAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFEdgeGlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFEdgeGlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$2200(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/nemustech/tiffany/widget/TFAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;)Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFAbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 4013
    if-nez p1, :cond_0

    .line 4031
    :goto_0
    return v0

    .line 4016
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v5

    move v3, v0

    .line 4017
    :goto_1
    if-ge v2, v1, :cond_2

    .line 4018
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4019
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4021
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AbsListView "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 4024
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 4026
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AbsListView "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 4017
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 4031
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2991
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$3;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 3007
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3008
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2526
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    .line 2527
    .local v0, childCount:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-eq v0, v1, :cond_0

    move v1, v3

    .line 2534
    :goto_0
    return v1

    .line 2531
    :cond_0
    if-lez v0, :cond_2

    .line 2532
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    sub-int v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    if-gt v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 2534
    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2982
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2983
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2984
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2985
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 2987
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 3766
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 3767
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3768
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3769
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3771
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3776
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3778
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3779
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3780
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3781
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3782
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3783
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3784
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3785
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3786
    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3787
    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3788
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3791
    :cond_0
    if-eqz p1, :cond_1

    .line 3792
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3796
    :goto_0
    return-void

    .line 3794
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3588
    sparse-switch p2, :sswitch_data_0

    .line 3614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3590
    :sswitch_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 3591
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 3592
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 3593
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3617
    :goto_0
    sub-int/2addr v1, v3

    .line 3618
    sub-int/2addr v0, v2

    .line 3619
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 3596
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3597
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 3598
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 3599
    iget v3, p1, Landroid/graphics/Rect;->top:I

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3600
    goto :goto_0

    .line 3602
    :sswitch_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 3603
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 3604
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 3605
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3606
    goto :goto_0

    .line 3608
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 3609
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 3610
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 3611
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    move v5, v3

    move v3, v0

    move v0, v5

    move v6, v1

    move v1, v2

    move v2, v6

    .line 3612
    goto :goto_0

    .line 3588
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 703
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setClickable(Z)V

    .line 704
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFocusableInTouchMode(Z)V

    .line 705
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setWillNotDraw(Z)V

    .line 706
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 707
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setScrollingCacheEnabled(Z)V

    .line 709
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 710
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchSlop:I

    .line 711
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    .line 712
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    .line 713
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDensityScale:F

    .line 716
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-nez v4, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 718
    .local v3, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 720
    .local v1, edge:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 722
    .local v2, glow:Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-direct {v4, v1, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    .line 723
    new-instance v4, Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-direct {v4, v1, v2}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    .line 726
    .end local v1           #edge:Landroid/graphics/drawable/Drawable;
    .end local v2           #glow:Landroid/graphics/drawable/Drawable;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private positionPopup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3561
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3562
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3563
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getLocationOnScreen([I)V

    .line 3566
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDensityScale:F

    const/high16 v3, 0x41a0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 3567
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3568
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    aget v1, v1, v5

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3573
    :goto_0
    return-void

    .line 3571
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v1, v1, v5

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1561
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3552
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3553
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3554
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionPopup()V

    .line 3556
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkFocus()V

    .line 3558
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2136
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2137
    .local v0, distance:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchSlop:I

    if-le v0, v3, :cond_2

    .line 2138
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createScrollingCache()V

    .line 2139
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2140
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    .line 2141
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2145
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2146
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2148
    :cond_0
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2149
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2150
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2151
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2153
    :cond_1
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2156
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v3, v6

    .line 2160
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 3

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 907
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2751
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    .line 2752
    .local v2, count:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 2753
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2755
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 2766
    :cond_0
    return-void

    .line 2759
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2760
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2761
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2762
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2764
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2759
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3876
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3838
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 3757
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 3897
    instance-of v0, p1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1222
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 1223
    .local v1, count:I
    if-lez v1, :cond_4

    .line 1224
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_3

    .line 1225
    mul-int/lit8 v2, v1, 0x64

    .line 1227
    .local v2, extent:I
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1228
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1229
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1230
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1231
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 1234
    :cond_0
    sub-int v8, v1, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1235
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1236
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1237
    if-lez v3, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 1241
    :cond_1
    move v5, v2

    .line 1245
    .local v5, retVal:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollRange()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1247
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 1248
    .local v4, ratio:F
    int-to-float v8, v5

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 1252
    .end local v4           #ratio:F
    :cond_2
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1258
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :goto_0
    return v8

    :cond_3
    move v8, v10

    .line 1255
    goto :goto_0

    :cond_4
    move v8, v9

    .line 1258
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 18

    .prologue
    .line 1263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v5, v0

    .line 1264
    .local v5, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    .line 1265
    .local v2, childCount:I
    if-ltz v5, :cond_5

    if-lez v2, :cond_5

    .line 1266
    const/4 v9, 0x0

    .line 1267
    .local v9, retVal:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1268
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1269
    .local v13, view:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 1270
    .local v12, top:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1271
    .local v6, height:I
    if-lez v6, :cond_0

    .line 1272
    mul-int/lit8 v14, v5, 0x64

    mul-int/lit8 v15, v12, 0x64

    div-int/2addr v15, v6

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1276
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move v14, v0

    if-gez v14, :cond_1

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move v10, v0

    .line 1278
    .local v10, savedExcessScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollExtent()I

    move-result v11

    .line 1279
    .local v11, shrinkedScrollExtent:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->computeVerticalScrollExtent()I

    move-result v8

    .line 1281
    .local v8, normalScrollExtent:I
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 1283
    sub-int v4, v8, v11

    .line 1285
    .local v4, delta:I
    add-int/2addr v9, v4

    .end local v4           #delta:I
    .end local v8           #normalScrollExtent:I
    .end local v10           #savedExcessScroll:I
    .end local v11           #shrinkedScrollExtent:I
    :cond_1
    move v14, v9

    .line 1302
    .end local v6           #height:I
    .end local v9           #retVal:I
    .end local v12           #top:I
    .end local v13           #view:Landroid/view/View;
    :goto_0
    return v14

    .line 1291
    .restart local v9       #retVal:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v3, v0

    .line 1292
    .local v3, count:I
    if-nez v5, :cond_3

    .line 1293
    const/4 v7, 0x0

    .line 1299
    .local v7, index:I
    :goto_1
    int-to-float v14, v5

    int-to-float v15, v2

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v14, v14

    goto :goto_0

    .line 1294
    .end local v7           #index:I
    :cond_3
    add-int v14, v5, v2

    if-ne v14, v3, :cond_4

    .line 1295
    move v7, v3

    .restart local v7       #index:I
    goto :goto_1

    .line 1297
    .end local v7           #index:I
    :cond_4
    div-int/lit8 v14, v2, 0x2

    add-int v7, v5, v14

    .restart local v7       #index:I
    goto :goto_1

    .line 1302
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #retVal:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1878
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3545
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 1565
    const/4 v2, 0x0

    .line 1566
    .local v2, saveCount:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    move v0, v5

    .line 1567
    .local v0, clipToPadding:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1569
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollX:I

    .line 1570
    .local v3, scrollX:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    .line 1571
    .local v4, scrollY:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1574
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    .line 1577
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDrawSelectorOnTop:Z

    .line 1578
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_1

    .line 1579
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1582
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1584
    if-eqz v1, :cond_2

    .line 1585
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1588
    :cond_2
    if-eqz v0, :cond_3

    .line 1589
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1590
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGroupFlags:I

    .line 1592
    :cond_3
    return-void

    .line 1566
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 2041
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 2645
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2648
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-eqz v0, :cond_3

    .line 2649
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWidth()I

    move-result v0

    .line 2650
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v1

    .line 2651
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    .line 2652
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2657
    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2658
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->setSize(II)V

    .line 2659
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v4, p1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2660
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2662
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2664
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2665
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2669
    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2672
    const/high16 v2, 0x4334

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2673
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->setSize(II)V

    .line 2674
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2675
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2677
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2686
    :cond_3
    return-void
.end method

.method drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1635
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1636
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1638
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1739
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->drawableStateChanged()V

    .line 1740
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1743
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 3887
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 3892
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1334
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 1335
    .local v1, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1336
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v5, v2

    .line 1346
    :goto_0
    return v5

    .line 1339
    :cond_0
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 1340
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 1343
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v6, v1, v7

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getExcessScrollDrawShift(I)I

    move-result v6

    add-int v0, v5, v6

    .line 1344
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v4

    .line 1345
    .local v4, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1346
    .local v3, fadeLength:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 3946
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1311
    const/4 v0, 0x0

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 893
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 896
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 897
    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 902
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3250
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3240
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1438
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1439
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 3926
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1316
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    .line 1317
    .local v0, count:I
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1318
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v4, v1

    .line 1328
    :goto_0
    return v4

    .line 1321
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 1322
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 1325
    :cond_1
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getExcessScrollDrawShift(I)I

    move-result v5

    add-int v3, v4, v5

    .line 1326
    .local v3, top:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    if-lt v3, v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 1327
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1328
    .local v2, fadeLength:F
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3425
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    .line 3426
    .local v0, count:I
    if-lez v0, :cond_a

    .line 3433
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    if-eqz v3, :cond_3

    .line 3435
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 3437
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldItemCount:I

    if-lt v3, v4, :cond_2

    .line 3440
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3536
    :cond_1
    :goto_0
    return-void

    .line 3444
    :cond_2
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncMode:I

    packed-switch v3, :pswitch_data_0

    .line 3492
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3494
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 3497
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 3498
    sub-int v1, v0, v5

    .line 3500
    :cond_4
    if-gez v1, :cond_5

    .line 3501
    const/4 v1, 0x0

    .line 3505
    :cond_5
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3507
    .local v2, selectablePos:I
    if-ltz v2, :cond_8

    .line 3508
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3446
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3451
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3452
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 3458
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findSyncPosition()I

    move-result v1

    .line 3459
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 3461
    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3462
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 3464
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 3466
    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 3469
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3477
    :goto_1
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3473
    :cond_7
    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    goto :goto_1

    .line 3485
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3486
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    goto :goto_0

    .line 3512
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_8
    invoke-virtual {p0, v1, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3513
    if-ltz v2, :cond_a

    .line 3514
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3521
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_1

    .line 3529
    :cond_a
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b

    const/4 v3, 0x3

    :goto_2
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3530
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 3531
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    .line 3532
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    .line 3533
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedRowId:J

    .line 3534
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 3535
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_b
    move v3, v5

    .line 3529
    goto :goto_2

    .line 3444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3264
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3265
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3266
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3267
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3269
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 3270
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 3271
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 3272
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3274
    :cond_1
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;->onScroll(Lcom/nemustech/tiffany/widget/TFAbsListView;III)V

    .line 827
    :cond_0
    return-void
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 3624
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1695
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1700
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1701
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1704
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1706
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 1707
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1708
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1710
    :cond_3
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 1712
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v1

    .line 1713
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1714
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 1715
    if-eqz v1, :cond_6

    .line 1716
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1722
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 1723
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 1724
    new-instance v5, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    .line 1726
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1727
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForKeyLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1719
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1399
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 1505
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1508
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1514
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1521
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 1522
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1523
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1524
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1542
    :cond_0
    :goto_0
    return-object v0

    .line 1532
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1533
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 1534
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1786
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onAttachedToWindow()V

    .line 1788
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1789
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1790
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1791
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 1792
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1795
    :cond_0
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3982
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onConsistencyCheck(I)Z

    move-result v0

    .line 3984
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3986
    :goto_0
    if-eqz v1, :cond_5

    .line 3988
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    #getter for: Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2500(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v1

    .line 3989
    array-length v2, v1

    move v3, v0

    move v0, v6

    .line 3990
    :goto_1
    if-ge v0, v2, :cond_2

    .line 3991
    aget-object v4, v1, v0

    if-eqz v4, :cond_0

    .line 3993
    const-string v3, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its active recycler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 3990
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v6

    .line 3984
    goto :goto_0

    .line 4000
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    #getter for: Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2600(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4001
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    .line 4002
    :goto_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    #getter for: Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->access$2700(Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v1

    .line 4003
    array-length v2, v1

    move v3, v0

    move v0, v6

    .line 4004
    :goto_3
    if-ge v0, v2, :cond_4

    .line 4005
    aget-object v4, v1, v0

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v6

    .line 4004
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v3

    .line 4009
    :cond_5
    return v0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1748
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 1750
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1776
    :goto_0
    return-object v4

    .line 1756
    :cond_0
    sget-object v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1761
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1762
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1763
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 1764
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1765
    move v0, v2

    .line 1771
    :cond_1
    if-ltz v0, :cond_2

    .line 1772
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v4, v3

    .line 1776
    goto :goto_0

    .line 1763
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 3702
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3706
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3707
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 3708
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 3709
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$4;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$4;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3743
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3745
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3746
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3748
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1799
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onDetachedFromWindow()V

    .line 1802
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1804
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1805
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1806
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1807
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 1808
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1809
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1812
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 3879
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 3880
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3881
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 3883
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1178
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1179
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    .line 1182
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 3819
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3821
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3822
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 3831
    :cond_0
    :goto_0
    return-void

    .line 3826
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3827
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2703
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v4

    .line 2743
    :goto_1
    return v0

    .line 2706
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findMotionRow(I)I

    move-result v0

    .line 2707
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eq v3, v6, :cond_1

    if-ltz v0, :cond_1

    .line 2710
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2711
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2712
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionX:I

    .line 2713
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    .line 2714
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2715
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2716
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 2718
    :cond_1
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    .line 2719
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    :cond_2
    move v0, v5

    .line 2720
    goto :goto_1

    .line 2726
    :pswitch_1
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2728
    :pswitch_2
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    sub-int v0, v2, v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->startScrollIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 2729
    goto :goto_1

    .line 2737
    :pswitch_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2738
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2726
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2011
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2016
    sparse-switch p1, :sswitch_data_0

    .line 2034
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2019
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 2020
    goto :goto_0

    .line 2022
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2026
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2027
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2028
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2029
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    move v1, v5

    .line 2030
    goto :goto_0

    .line 2016
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1369
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onLayout(ZIIII)V

    .line 1370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    .line 1371
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    .line 1373
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->useDefaultSelector()V

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1357
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1358
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1359
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1360
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1361
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1122
    sget-object v2, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v2}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1124
    instance-of v2, p1, Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1127
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 1129
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1074
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 1076
    const-class v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1077
    const-string v0, "com.nemustech.tiffany.tfabslistview.savedstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    .line 1079
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncHeight:J

    .line 1081
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 1082
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 1083
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 1084
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 1085
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 1086
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncMode:I

    .line 1098
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 1101
    return-void

    .line 1087
    :cond_1
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1088
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 1090
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 1091
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 1092
    iget-wide v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 1093
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 1094
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 1095
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1109
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1111
    .local v0, ignoreThis:Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1113
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 1115
    return-object v1
.end method

.method protected onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 12
    .parameter "b"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 1023
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1026
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;

    invoke-direct {v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;-><init>()V

    .line 1028
    .local v4, ss:Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 1029
    .local v1, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 1030
    .local v2, selectedId:J
    iput-wide v2, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->selectedId:J

    .line 1031
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->height:I

    .line 1033
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_2

    .line 1035
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 1036
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    .line 1037
    iput-wide v10, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    .line 1052
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1053
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v7, :cond_0

    .line 1054
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1055
    .local v5, textFilter:Landroid/widget/EditText;
    if-eqz v5, :cond_0

    .line 1056
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1057
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1063
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v5           #textFilter:Landroid/widget/EditText;
    :cond_0
    const-string v7, "com.nemustech.tiffany.tfabslistview.savedstate"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1064
    return-void

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_1
    move v1, v9

    .line 1028
    goto :goto_0

    .line 1039
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_2
    if-eqz v1, :cond_3

    .line 1041
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1042
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 1043
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    iput v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    .line 1044
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1046
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iput v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->viewTop:I

    .line 1047
    iput-wide v10, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->firstId:J

    .line 1048
    iput v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$SavedState;->position:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1596
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 1598
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->rememberSyncState()V

    .line 1604
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3847
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3848
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    .line 3849
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 3851
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 3852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 3858
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 3859
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3861
    if-eqz v0, :cond_3

    .line 3862
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3869
    :cond_1
    return-void

    .line 3853
    :cond_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 3855
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 3856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    goto :goto_0

    .line 3864
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2181
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2184
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 2519
    :goto_0
    return v0

    :cond_1
    move v0, v5

    .line 2184
    goto :goto_0

    .line 2194
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 2201
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_3

    .line 2202
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2204
    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2209
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 2214
    :cond_4
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->start(F)V

    .line 2217
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-ne v3, v8, :cond_5

    .line 2218
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2225
    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    move v0, v6

    .line 2519
    goto :goto_0

    .line 2228
    :pswitch_0
    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->pointToPosition(II)I

    move-result v3

    .line 2229
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->cancel()V

    .line 2231
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->finish()V

    .line 2232
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->finish()V

    .line 2234
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v0, :cond_23

    .line 2235
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_9

    if-ltz v3, :cond_9

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-nez v0, :cond_9

    .line 2239
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2241
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    .line 2242
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForTap;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2244
    :cond_7
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    .line 2268
    :goto_2
    if-ltz v0, :cond_8

    .line 2270
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2271
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2273
    :cond_8
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionX:I

    .line 2274
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    .line 2275
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2276
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    goto :goto_1

    .line 2246
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_a

    if-gez v3, :cond_a

    move v0, v5

    .line 2250
    goto/16 :goto_0

    .line 2257
    :cond_a
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-nez v0, :cond_b

    .line 2258
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createScrollingCache()V

    .line 2260
    :cond_b
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2261
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    .line 2262
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findMotionRow(I)I

    move-result v0

    .line 2263
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2281
    :pswitch_1
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionY:I

    sub-int v0, v2, v0

    .line 2282
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 2288
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 2298
    :pswitch_3
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    if-eq v2, v1, :cond_6

    .line 2300
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v1

    .line 2301
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    const/high16 v3, -0x8000

    if-eq v1, v3, :cond_f

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    sub-int v1, v2, v1

    .line 2303
    :goto_3
    if-eqz v1, :cond_c

    .line 2304
    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->trackMotionScroll(II)V

    .line 2326
    :cond_c
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2328
    if-lez v0, :cond_10

    .line 2329
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->blockDecay()V

    .line 2330
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v6, v1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 2331
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2332
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 2341
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2345
    :cond_e
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastY:I

    goto/16 :goto_1

    :cond_f
    move v1, v0

    .line 2301
    goto :goto_3

    .line 2334
    :cond_10
    if-gez v0, :cond_d

    .line 2335
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->blockDecay()V

    .line 2336
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v6, v1}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onPull(ZF)V

    .line 2337
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2338
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto :goto_4

    .line 2355
    :pswitch_4
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_2

    .line 2466
    :cond_11
    :goto_5
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2469
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2471
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2472
    if-eqz v0, :cond_12

    .line 2473
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2476
    :cond_12
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 2477
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2478
    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 2359
    :pswitch_5
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2360
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2361
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2362
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eqz v2, :cond_13

    .line 2363
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2366
    :cond_13
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    if-nez v2, :cond_14

    .line 2367
    new-instance v2, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    invoke-direct {v2, p0, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Lcom/nemustech/tiffany/widget/TFAbsListView$1;)V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    .line 2370
    :cond_14
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPerformClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    .line 2371
    iput-object v1, v2, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2372
    iput v0, v2, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2373
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2375
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 2377
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-ne v0, v6, :cond_1a

    .line 2378
    :cond_15
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2379
    if-eqz v0, :cond_16

    .line 2380
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_6
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2383
    :cond_16
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2384
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2385
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v0, :cond_19

    .line 2386
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 2387
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2388
    invoke-virtual {v1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 2389
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2390
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2391
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 2392
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2393
    if-eqz v0, :cond_17

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_17

    .line 2394
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2397
    :cond_17
    new-instance v0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7
    move v0, v6

    .line 2416
    goto/16 :goto_0

    .line 2380
    :cond_18
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    goto :goto_6

    .line 2413
    :cond_19
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto :goto_7

    .line 2418
    :cond_1a
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v0, :cond_1b

    .line 2419
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2423
    :cond_1b
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    goto/16 :goto_5

    .line 2426
    :pswitch_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    .line 2427
    if-lez v0, :cond_1f

    .line 2428
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-nez v1, :cond_1c

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_1c

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-ge v1, v2, :cond_1c

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 2432
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2433
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2457
    :goto_8
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-eqz v0, :cond_11

    .line 2458
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 2459
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto/16 :goto_5

    .line 2435
    :cond_1c
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2436
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2437
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 2439
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMinimumVelocity:I

    if-le v1, v2, :cond_1e

    .line 2440
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    if-nez v1, :cond_1d

    .line 2441
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    .line 2443
    :cond_1d
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2445
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->start(I)V

    goto :goto_8

    .line 2447
    :cond_1e
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2448
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_8

    .line 2452
    :cond_1f
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2453
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    goto :goto_8

    .line 2491
    :pswitch_7
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2492
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2493
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2494
    if-eqz v0, :cond_20

    .line 2495
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2497
    :cond_20
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 2499
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2500
    if-eqz v0, :cond_21

    .line 2501
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPendingCheckForLongPress:Lcom/nemustech/tiffany/widget/TFAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2504
    :cond_21
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_22

    .line 2505
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2506
    iput-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2510
    :cond_22
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    if-eqz v0, :cond_6

    .line 2511
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowTop:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    .line 2512
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mEdgeGlowBottom:Lcom/nemustech/tiffany/widget/TFEdgeGlow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->onRelease()V

    goto/16 :goto_1

    :cond_23
    move v0, v3

    goto/16 :goto_2

    .line 2225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2282
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2355
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 2164
    if-eqz p1, :cond_0

    .line 2166
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 2170
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2173
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2174
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 2177
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1816
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->onWindowFocusChanged(Z)V

    .line 1818
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 1820
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_3

    .line 1821
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1822
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1824
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dismissPopup()V

    .line 1826
    if-ne v0, v4, :cond_0

    .line 1828
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 1832
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v1, :cond_1

    .line 1833
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAbsListView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1863
    :cond_1
    :goto_1
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    .line 1864
    return-void

    .end local v0           #touchMode:I
    :cond_2
    move v0, v4

    .line 1818
    goto :goto_0

    .line 1842
    .restart local v0       #touchMode:I
    :cond_3
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v1, :cond_4

    .line 1844
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->showPopup()V

    .line 1848
    :cond_4
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1850
    if-ne v0, v4, :cond_5

    .line 1852
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 1856
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 1857
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 1858
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1965
    const/4 v6, 0x0

    .line 1967
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1971
    :cond_0
    if-nez v6, :cond_1

    .line 1972
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1973
    invoke-super {p0, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1975
    :cond_1
    if-eqz v6, :cond_2

    .line 1976
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performHapticFeedback(I)Z

    .line 1978
    :cond_2
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2052
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2053
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 2054
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2055
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2058
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v1

    .line 2059
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 2060
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2061
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2062
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2063
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2064
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2068
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 2059
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2068
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 1546
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1547
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1548
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionSelector(IIII)V

    .line 1551
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    .line 1552
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1553
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mIsChildViewEnabled:Z

    .line 1554
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->refreshDrawableState()V

    .line 1556
    :cond_0
    return-void

    .line 1553
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method reconcileSelectedPosition()I
    .locals 3

    .prologue
    .line 3282
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 3283
    .local v0, position:I
    if-gez v0, :cond_0

    .line 3284
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3286
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3287
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3288
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2776
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2777
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2778
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mOnScrollListener:Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/nemustech/tiffany/widget/TFAbsListView;I)V

    .line 2779
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastScrollState:I

    .line 2782
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1187
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAdapterView;->requestLayout()V

    .line 1189
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resetList()V

    .line 937
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayout()V

    .line 938
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 940
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1195
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeAllViewsInLayout()V

    .line 1196
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 1197
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 1198
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 1199
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    .line 1200
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    .line 1201
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectedPositionInt(I)V

    .line 1202
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setNextSelectedPositionInt(I)V

    .line 1203
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 1204
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1205
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 1206
    return-void
.end method

.method resurrectSelection()Z
    .locals 20

    .prologue
    .line 3322
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    .line 3324
    .local v4, childCount:I
    if-gtz v4, :cond_0

    .line 3325
    const/16 v18, 0x0

    .line 3416
    :goto_0
    return v18

    .line 3328
    :cond_0
    const/4 v14, 0x0

    .line 3330
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 3331
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 3332
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v8, v0

    .line 3333
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 3334
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 3336
    .local v7, down:Z
    if-lt v15, v8, :cond_3

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 3337
    move v13, v15

    .line 3339
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3340
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3341
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 3344
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_2

    .line 3345
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 3401
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 3402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3403
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 3404
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 3405
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 3406
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 3407
    if-lt v13, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 3408
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 3409
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setSelectionInt(I)V

    .line 3410
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 3414
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 3416
    if-ltz v13, :cond_c

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3346
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_2
    if-le v12, v5, :cond_1

    .line 3347
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_1

    .line 3351
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_3
    if-ge v15, v8, :cond_7

    .line 3353
    move v13, v8

    .line 3354
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v4, :cond_1

    .line 3355
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3356
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3358
    .local v16, top:I
    if-nez v9, :cond_5

    .line 3360
    move/from16 v14, v16

    .line 3362
    if-gtz v8, :cond_4

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_5

    .line 3365
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 3368
    :cond_5
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_6

    .line 3370
    add-int v13, v8, v9

    .line 3371
    move/from16 v14, v16

    .line 3372
    goto/16 :goto_1

    .line 3354
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3376
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v10, v0

    .line 3377
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 3378
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 3380
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_4
    if-ltz v9, :cond_1

    .line 3381
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3382
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 3383
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 3385
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3386
    move/from16 v14, v16

    .line 3387
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_8

    if-le v3, v5, :cond_9

    .line 3388
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 3392
    :cond_9
    if-gt v3, v5, :cond_a

    .line 3393
    add-int v13, v8, v9

    .line 3394
    move/from16 v14, v16

    .line 3395
    goto/16 :goto_1

    .line 3380
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 3412
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 3416
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 3636
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->acceptFilter()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 3694
    :goto_0
    return v0

    .line 3642
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v2

    move v1, v4

    .line 3671
    :goto_1
    if-eqz v0, :cond_1

    .line 3672
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 3675
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3676
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {p3, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 3679
    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 3680
    packed-switch v2, :pswitch_data_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v4

    move v1, v4

    .line 3650
    goto :goto_1

    .line 3652
    :sswitch_1
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3653
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3655
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v0, v2

    :goto_3
    move v1, v0

    move v0, v4

    .line 3664
    goto :goto_1

    .line 3657
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3660
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_3

    .line 3667
    :sswitch_2
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    move v0, v2

    move v1, v4

    goto :goto_1

    .line 3682
    :pswitch_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3686
    :pswitch_1
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3690
    :pswitch_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, p3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    .line 3642
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 3936
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCacheColorHint:I

    .line 3937
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFastScrollEnabled:Z

    .line 750
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1145
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1146
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createTextFilter(Z)V

    .line 1149
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1151
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1155
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1159
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    .line 1160
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1163
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1380
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1382
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 1386
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1387
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1388
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->positionPopup()V

    .line 1392
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 1386
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V

    .line 860
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollingCacheEnabled:Z

    .line 861
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1666
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1667
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1669
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1670
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1671
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1672
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionLeftPadding:I

    .line 1673
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionTopPadding:I

    .line 1674
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionRightPadding:I

    .line 1675
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectionBottomPadding:I

    .line 1676
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1677
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1678
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSmoothScrollbarEnabled:Z

    .line 792
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 929
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    .line 930
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->requestLayoutIfNecessary()V

    .line 932
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 874
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTextFilterEnabled:Z

    .line 875
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 3911
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTranscriptMode:I

    .line 3912
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 1988
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1989
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1990
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1991
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1993
    .local v6, handled:Z
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOnItemLongClickListener:Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1997
    :cond_0
    if-nez v6, :cond_1

    .line 1998
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2001
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    move v0, v6

    .line 2006
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1612
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1617
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1615
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 22
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 3021
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v5

    .line 3022
    .local v5, childCount:I
    if-nez v5, :cond_1

    .line 3231
    :cond_0
    :goto_0
    return-void

    .line 3026
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3027
    .local v10, firstTop:I
    const/16 v20, 0x1

    sub-int v20, v5, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 3029
    .local v15, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 3033
    .local v16, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 3036
    .local v8, end:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 3037
    .local v13, height:I
    if-gez p1, :cond_2

    .line 3038
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3043
    :goto_1
    if-gez p2, :cond_3

    .line 3044
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3064
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v9, v0

    .line 3081
    .local v9, firstPosition:I
    if-nez v9, :cond_4

    .line 3082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v20, v10, v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPositionDistanceGuess:I

    .line 3086
    :goto_3
    add-int v20, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastPositionDistanceGuess:I

    .line 3093
    :goto_4
    if-nez v9, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    if-lez p2, :cond_7

    .line 3100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 3101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 3103
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 3105
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 3040
    .end local v9           #firstPosition:I
    :cond_2
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 3046
    :cond_3
    const/16 v20, 0x1

    sub-int v20, v13, v20

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 3084
    .restart local v9       #firstPosition:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 3089
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 3108
    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 3115
    :cond_7
    add-int v20, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    if-gt v15, v8, :cond_9

    if-gez p2, :cond_9

    .line 3122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 3123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 3125
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 3126
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 3127
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 3130
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    goto/16 :goto_0

    .line 3140
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 3141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 3142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int v20, v20, p2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 3143
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I

    .line 3144
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    move-result v20

    if-nez v20, :cond_0

    .line 3145
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    goto/16 :goto_0

    .line 3149
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int p2, p2, v20

    .line 3150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    move/from16 v20, v0

    add-int p1, p1, v20

    .line 3151
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 3161
    :cond_b
    if-gez p2, :cond_e

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 3163
    .local v7, down:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->hideSelector()V

    .line 3165
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 3166
    .local v12, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getFooterViewsCount()I

    move-result v21

    sub-int v11, v20, v21

    .line 3168
    .local v11, footerViewsStart:I
    const/16 v18, 0x0

    .line 3169
    .local v18, start:I
    const/4 v6, 0x0

    .line 3171
    .local v6, count:I
    if-eqz v7, :cond_11

    .line 3172
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v20, p2

    .line 3173
    .local v19, top:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_6
    if-ge v14, v5, :cond_c

    .line 3174
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3175
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 3214
    .end local v4           #child:Landroid/view/View;
    .end local v19           #top:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    move/from16 v20, v0

    add-int v20, v20, p1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewNewTop:I

    .line 3216
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 3217
    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->detachViewsFromParent(II)V

    .line 3218
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 3220
    if-eqz v7, :cond_d

    .line 3221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 3224
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 3225
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->fillGap(Z)V

    .line 3226
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 3228
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invokeOnItemScrollListener()V

    .line 3229
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 3161
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v11           #footerViewsStart:I
    .end local v12           #headerViewsCount:I
    .end local v14           #i:I
    .end local v18           #start:I
    :cond_e
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_5

    .line 3178
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v11       #footerViewsStart:I
    .restart local v12       #headerViewsCount:I
    .restart local v14       #i:I
    .restart local v18       #start:I
    .restart local v19       #top:I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 3179
    add-int v17, v9, v14

    .line 3180
    .local v17, position:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_10

    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_10

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3173
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 3192
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v17           #position:I
    .end local v19           #top:I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v3, v20, p2

    .line 3193
    .local v3, bottom:I
    const/16 v20, 0x1

    sub-int v14, v5, v20

    .restart local v14       #i:I
    :goto_7
    if-ltz v14, :cond_c

    .line 3194
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3195
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move v1, v3

    if-le v0, v1, :cond_c

    .line 3198
    move/from16 v18, v14

    .line 3199
    add-int/lit8 v6, v6, 0x1

    .line 3200
    add-int v17, v9, v14

    .line 3201
    .restart local v17       #position:I
    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_12

    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_12

    .line 3202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3193
    :cond_12
    add-int/lit8 v14, v14, -0x1

    goto :goto_7
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1402
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1405
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-lez v4, :cond_4

    move v1, v8

    .line 1408
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1410
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1411
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5

    move v1, v8

    .line 1415
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1420
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v3

    .line 1423
    .local v3, count:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-ge v4, v5, :cond_7

    move v0, v8

    .line 1426
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 1427
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1428
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_8

    move v0, v8

    .line 1431
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v7

    .line 1405
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v7

    .line 1411
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1415
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v7

    .line 1423
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v7

    .line 1428
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v9

    .line 1431
    goto :goto_5
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
