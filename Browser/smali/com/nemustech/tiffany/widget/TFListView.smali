.class public Lcom/nemustech/tiffany/widget/TFListView;
.super Lcom/nemustech/tiffany/widget/TFAbsListView;
.source "TFListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFListView$SavedState;,
        Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;,
        Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    }
.end annotation


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field private mClipDivider:Z

.field private mDensityScale:F

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field private mExcessScrollEffect:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field protected mShowAnimationOnDataChange:Z

.field private final mTempPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 234
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 148
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    .line 150
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    .line 152
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    .line 157
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    .line 159
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempPaint:Landroid/graphics/Paint;

    .line 163
    new-instance v4, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;-><init>(Lcom/nemustech/tiffany/widget/TFListView$1;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    .line 170
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mShowAnimationOnDataChange:Z

    .line 173
    new-instance v4, Lcom/nemustech/tiffany/widget/TFListView$1;

    invoke-direct {v4, p0}, Lcom/nemustech/tiffany/widget/TFListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFListView;)V

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    .line 244
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDensityScale:F

    .line 247
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x104

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v4

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 252
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 253
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v5

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    :cond_0
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 258
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_1
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 266
    .local v2, dividerHeight:I
    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->setDividerHeight(I)V

    .line 270
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setChoiceMode(I)V

    .line 272
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    .line 273
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v4

    const/16 v5, 0x1d

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2926
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2927
    .local v2, abovePosition:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2928
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2929
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2930
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2934
    add-int/lit8 v2, p2, 0x1

    .line 2935
    .local v2, belowPosition:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2936
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2937
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2938
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v1

    .line 294
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 297
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 300
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 301
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 302
    .local v2, delta:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 305
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 307
    :cond_0
    if-gez v2, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 327
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 328
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 331
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 313
    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 316
    .restart local v2       #delta:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 319
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 322
    :cond_4
    if-lez v2, :cond_1

    .line 323
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2540
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2541
    .local v4, listBottom:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2543
    .local v5, listTop:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v7

    .line 2545
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    .line 2546
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2547
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2548
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2551
    :cond_0
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2552
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2554
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2555
    .local v1, goalBottom:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_1

    .line 2556
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2559
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    .line 2561
    const/4 v10, 0x0

    .line 2607
    .end local v1           #goalBottom:I
    :goto_0
    return v10

    .line 2564
    .restart local v1       #goalBottom:I
    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    .line 2567
    const/4 v10, 0x0

    goto :goto_0

    .line 2570
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2572
    .local v0, amountToScroll:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    .line 2574
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2575
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2578
    .end local v6           #max:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    .line 2580
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 2581
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    .line 2582
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2584
    :cond_6
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2585
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2586
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2587
    .local v2, goalTop:I
    if-lez v8, :cond_7

    .line 2588
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2590
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    .line 2592
    const/4 v10, 0x0

    goto :goto_0

    .line 2595
    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    .line 2598
    const/4 v10, 0x0

    goto :goto_0

    .line 2601
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2602
    .restart local v0       #amountToScroll:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    .line 2604
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2605
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2607
    .end local v6           #max:I
    :cond_a
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2799
    const/4 v0, 0x0

    .line 2800
    .local v0, amountToScroll:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2801
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2802
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 2803
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 2804
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2805
    if-lez p3, :cond_0

    .line 2806
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2818
    :cond_0
    :goto_0
    return v0

    .line 2810
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2811
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2812
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2813
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_0

    .line 2814
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    .locals 20
    .parameter "direction"

    .prologue
    .line 2697
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2699
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2700
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2701
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2726
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_c

    .line 2727
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2731
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 2732
    invoke-direct/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2733
    .local v13, selectablePosition:I
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-lt v13, v12, :cond_1

    :cond_0
    const/16 v17, 0x21

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-le v13, v12, :cond_a

    .line 2736
    :cond_1
    const/16 v17, 0x0

    .line 2758
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_1
    return-object v17

    .line 2703
    .end local v10           #newFocus:Landroid/view/View;
    :cond_2
    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2704
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2705
    .local v15, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_3
    add-int v8, v17, v18

    .line 2707
    .local v8, listTop:I
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v16, v17

    .line 2711
    .local v16, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2723
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 2704
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_2

    .line 2705
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .restart local v8       #listTop:I
    :cond_5
    move/from16 v16, v8

    .line 2707
    goto :goto_4

    .line 2713
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2715
    .local v5, bottomFadingEdgeShowing:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_7
    sub-int v7, v17, v18

    .line 2717
    .local v7, listBottom:I
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v16, v17

    .line 2721
    .restart local v16       #ySearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 2713
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_6

    .line 2715
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    .restart local v7       #listBottom:I
    :cond_9
    move/from16 v16, v7

    .line 2717
    goto :goto_8

    .line 2740
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2742
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getMaxScrollAmount()I

    move-result v9

    .line 2743
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_b

    .line 2745
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->populate(II)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2748
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_c

    .line 2753
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->populate(II)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mArrowScrollFocusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2758
    .end local v6           #focusScroll:I
    .end local v9           #maxScrollAmount:I
    .end local v12           #positionOfNewFocus:I
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2326
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_0

    move v6, v7

    .line 2398
    :goto_0
    return v6

    .line 2330
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2332
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2333
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/nemustech/tiffany/widget/TFListView;->amountToScroll(II)I

    move-result v0

    .line 2336
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScrollFocused(I)Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2337
    .local v1, focusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_1

    .line 2338
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2339
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2342
    :cond_1
    if-eqz v1, :cond_a

    move v3, v9

    .line 2343
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v8, :cond_3

    .line 2344
    if-eqz v1, :cond_b

    move v6, v9

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/nemustech/tiffany/widget/TFListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2345
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 2346
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 2347
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2348
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    .line 2351
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2352
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2353
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2356
    .end local v2           #focused:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    .line 2357
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    .line 2360
    :cond_3
    if-lez v0, :cond_4

    .line 2361
    const/16 v6, 0x21

    if-ne p1, v6, :cond_c

    move v6, v0

    :goto_4
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFListView;->scrollListItemsBy(I)V

    .line 2362
    const/4 v3, 0x1

    .line 2367
    :cond_4
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2369
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2370
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_5

    .line 2371
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2376
    .end local v2           #focused:Landroid/view/View;
    :cond_5
    if-ne v4, v8, :cond_6

    if-eqz v5, :cond_6

    invoke-direct {p0, v5, p0}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2378
    const/4 v5, 0x0

    .line 2379
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->hideSelector()V

    .line 2383
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    .line 2386
    :cond_6
    if-eqz v3, :cond_d

    .line 2387
    if-eqz v5, :cond_7

    .line 2388
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 2389
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 2391
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2392
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 2394
    :cond_8
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2395
    goto/16 :goto_0

    .line 2336
    .end local v1           #focusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_9
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/nemustech/tiffany/widget/TFListView$ArrowScrollFocusResult;
    :cond_a
    move v3, v7

    .line 2342
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v7

    .line 2344
    goto :goto_3

    .line 2361
    :cond_c
    neg-int v6, v0

    goto :goto_4

    :cond_d
    move v6, v7

    .line 2398
    goto/16 :goto_0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 580
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 581
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 582
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 583
    .local v3, p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 584
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 580
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v3, 0x1

    .line 2071
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    move v2, v6

    .line 2164
    :goto_0
    return v2

    .line 2075
    :cond_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 2076
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->layoutChildren()V

    .line 2079
    :cond_1
    const/4 v1, 0x0

    .line 2080
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2082
    .local v0, action:I
    if-eq v0, v3, :cond_3

    .line 2083
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-gez v2, :cond_2

    .line 2084
    sparse-switch p1, :sswitch_data_0

    .line 2095
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 2146
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 2147
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2150
    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    .line 2151
    goto :goto_0

    .line 2090
    :sswitch_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 2091
    goto :goto_0

    .line 2097
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2098
    :goto_2
    if-lez p2, :cond_3

    .line 2099
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScroll(I)Z

    move-result v1

    .line 2100
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 2103
    :cond_5
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->fullScroll(I)Z

    move-result v1

    .line 2105
    goto :goto_1

    .line 2108
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2109
    :goto_3
    if-lez p2, :cond_3

    .line 2110
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScroll(I)Z

    move-result v1

    .line 2111
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 2114
    :cond_6
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->fullScroll(I)Z

    move-result v1

    .line 2116
    goto :goto_1

    .line 2119
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2120
    goto :goto_1

    .line 2122
    :sswitch_4
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2123
    goto :goto_1

    .line 2127
    :sswitch_5
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-lez v2, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 2128
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->keyPressed()V

    .line 2130
    :cond_7
    const/4 v1, 0x1

    .line 2131
    goto :goto_1

    .line 2134
    :sswitch_6
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2135
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2136
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFListView;->pageScroll(I)Z

    .line 2140
    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2138
    :cond_9
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->pageScroll(I)Z

    goto :goto_4

    .line 2153
    :cond_a
    packed-switch v0, :pswitch_data_0

    move v2, v6

    .line 2164
    goto/16 :goto_0

    .line 2155
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2158
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2161
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2084
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2095
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 2153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 1351
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1352
    .local v6, lastPosition:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1355
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1358
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1361
    .local v4, lastBottom:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1365
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1366
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1367
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1371
    .local v3, firstTop:I
    if-lez v0, :cond_2

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1372
    :cond_0
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1374
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1377
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 1378
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1381
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 1383
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1388
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 1400
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1403
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1406
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1409
    .local v2, firstTop:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1412
    .local v6, start:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1416
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1417
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1418
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1419
    .local v3, lastBottom:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1423
    .local v5, lastPosition:I
    if-lez v7, :cond_2

    .line 1424
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1425
    :cond_0
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_1

    .line 1427
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1430
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 1431
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_2

    .line 1434
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 1436
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1443
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1438
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_3
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_2

    .line 1439
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .parameter "descendant"

    .prologue
    .line 2828
    const/4 v0, 0x0

    .line 2829
    .local v0, distance:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2830
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2831
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2832
    .local v1, listBottom:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 2833
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2837
    :cond_0
    :goto_0
    return v0

    .line 2834
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 2835
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 834
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 835
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 836
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 837
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 838
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 844
    :goto_0
    return-void

    .line 840
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 841
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 842
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 723
    const/4 v8, 0x0

    .line 725
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 727
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_2

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_2

    .line 729
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 730
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 732
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 733
    if-eqz v5, :cond_0

    .line 734
    move-object v8, v6

    .line 736
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 737
    goto :goto_0

    .line 729
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    .line 739
    :cond_2
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 802
    sub-int v6, p2, p1

    .line 804
    .local v6, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->reconcileSelectedPosition()I

    move-result v1

    .line 806
    .local v1, position:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 808
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 810
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 811
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 812
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 815
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 817
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 823
    :goto_0
    return-object v7

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v11

    .line 859
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v5, v0

    .line 863
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 865
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 868
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 872
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 875
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v4, v16

    .line 879
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v4, v10

    .line 880
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 883
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 899
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 901
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 907
    :goto_1
    return-object v13

    .line 884
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 887
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v16, v4

    .line 891
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v10, v4

    .line 892
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 895
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 904
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 782
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 783
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 784
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 787
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1303
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1304
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1306
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 1311
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 1312
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1313
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1315
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1316
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1317
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v8

    .line 1318
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 1319
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 1332
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    move-object v0, v10

    .line 1337
    :goto_2
    return-object v0

    .line 1303
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    .end local v10           #temp:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1322
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1324
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1325
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1326
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v8

    .line 1327
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 1328
    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_1

    .line 1334
    :cond_3
    if-eqz v6, :cond_4

    move-object v0, v6

    .line 1335
    goto :goto_2

    :cond_4
    move-object v0, v7

    .line 1337
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 753
    const/4 v8, 0x0

    .line 755
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 757
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_2

    if-ltz p1, :cond_2

    .line 759
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    .line 760
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 761
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 762
    if-eqz v5, :cond_0

    .line 763
    move-object v8, v6

    .line 765
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 766
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 759
    goto :goto_1

    .line 768
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 770
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2524
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 920
    move v0, p1

    .line 921
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_0

    .line 922
    sub-int/2addr v0, p2

    .line 924
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 937
    move v0, p1

    .line 938
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 939
    add-int/2addr v0, p2

    .line 941
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 3
    .parameter

    .prologue
    .line 2261
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 2262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2266
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 2267
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2268
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2269
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2272
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2273
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2275
    if-eqz v0, :cond_1

    .line 2277
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2278
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2279
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2280
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2281
    const/4 v0, 0x1

    .line 2295
    :goto_0
    return v0

    .line 2288
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2290
    if-eqz v0, :cond_2

    .line 2291
    invoke-direct {p0, v0, p0}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 2295
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2416
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 2429
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int v1, p3, v1

    .line 2430
    const/16 v2, 0x21

    if-ne p2, v2, :cond_3

    .line 2433
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, p1

    move-object v4, v2

    move v2, v1

    move v1, v0

    move v0, v8

    .line 2443
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v5

    .line 2446
    if-eqz v4, :cond_1

    .line 2447
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    move v6, v8

    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2448
    invoke-direct {p0, v4, v2, v5}, Lcom/nemustech/tiffany/widget/TFListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2452
    :cond_1
    if-eqz v3, :cond_2

    .line 2453
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    move v0, v8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2454
    invoke-direct {p0, v3, v1, v5}, Lcom/nemustech/tiffany/widget/TFListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2456
    :cond_2
    return-void

    .line 2440
    :cond_3
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    move-object v4, p1

    move v2, v0

    move v0, v7

    goto :goto_0

    :cond_4
    move v6, v7

    .line 2447
    goto :goto_1

    :cond_5
    move v0, v7

    .line 2453
    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1713
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1714
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1715
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1716
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v5, v5, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1727
    .end local p0
    :goto_1
    return v5

    .line 1715
    .restart local p0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1721
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1722
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1723
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1724
    goto :goto_1

    .line 1722
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1727
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2781
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2786
    :goto_0
    return v1

    .line 2785
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2786
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 9
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2644
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 2645
    .local v1, firstPosition:I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_4

    .line 2646
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2649
    .local v5, startPos:I
    :goto_0
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    move v6, v7

    .line 2684
    :goto_1
    return v6

    .end local v5           #startPos:I
    :cond_0
    move v5, v1

    .line 2646
    goto :goto_0

    .line 2652
    .restart local v5       #startPos:I
    :cond_1
    if-ge v5, v1, :cond_2

    .line 2653
    move v5, v1

    .line 2656
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getLastVisiblePosition()I

    move-result v3

    .line 2657
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2658
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_9

    .line 2659
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v4

    .line 2661
    goto :goto_1

    .line 2658
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2665
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2666
    .local v2, last:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2669
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_6

    move v6, v7

    .line 2670
    goto :goto_1

    .line 2666
    .end local v5           #startPos:I
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_3

    .line 2672
    .restart local v5       #startPos:I
    :cond_6
    if-le v5, v2, :cond_7

    .line 2673
    move v5, v2

    .line 2676
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2677
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_9

    .line 2678
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    .line 2680
    goto :goto_1

    .line 2677
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_9
    move v6, v7

    .line 2684
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1748
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1751
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1759
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1771
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1766
    .end local v8           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1769
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1771
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2466
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2467
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->measureItem(Landroid/view/View;)V

    .line 2468
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2470
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2473
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2474
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2475
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2478
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2486
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2487
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2488
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2493
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2495
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2497
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 2498
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2502
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2503
    return-void

    .line 2500
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1161
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 1162
    .local v3, p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1163
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .end local v3           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(III)V

    .line 1165
    .restart local v3       #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 1169
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1171
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1173
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 1174
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1178
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1179
    return-void

    .line 1176
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 21
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 965
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 969
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 971
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 974
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_2

    .line 996
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v11, v0

    .line 1002
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1006
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 1009
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v4, v20

    .line 1012
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v4, v10

    .line 1015
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1016
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1017
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1020
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1022
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1026
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 1110
    .end local v11           #dividerHeight:I
    :goto_0
    return-object v16

    .line 1031
    .restart local v11       #dividerHeight:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 1032
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1035
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1056
    if-eqz p2, :cond_4

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1068
    .restart local v16       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 1070
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v20, v4

    .line 1073
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v10, v4

    .line 1076
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1077
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1078
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1081
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1085
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1063
    .end local v16           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_1

    .line 1088
    .end local v16           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1093
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1096
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1099
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1100
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_6

    .line 1102
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1107
    .end local v14           #newBottom:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 2766
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 2767
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2768
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2769
    invoke-direct {p0, p1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2770
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v0, v1

    return v0

    .line 2767
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2773
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 2511
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2512
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2513
    .local v4, h:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2514
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2515
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2516
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2517
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2518
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 13
    .parameter "amount"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2848
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 2850
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2851
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2852
    .local v6, listTop:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 2854
    .local v8, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 2858
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v7

    .line 2859
    .local v7, numChildren:I
    sub-int v9, v7, v11

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2860
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 2861
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    sub-int v3, v9, v11

    .line 2862
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_0

    .line 2863
    invoke-direct {p0, v1, v3}, Lcom/nemustech/tiffany/widget/TFListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2864
    add-int/lit8 v7, v7, 0x1

    .line 2868
    goto :goto_0

    .line 2873
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 2875
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 2879
    :cond_1
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2880
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2881
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 2882
    .local v4, layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2883
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2884
    invoke-virtual {v8, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2888
    :goto_2
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2889
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    goto :goto_1

    .line 2886
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 2893
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v12}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2896
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 2897
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2898
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v9, v11

    iput v9, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    goto :goto_3

    .line 2903
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 2905
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFListView;->offsetChildrenTopAndBottom(I)V

    .line 2908
    :cond_5
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v9

    sub-int v2, v9, v11

    .line 2909
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2912
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 2913
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 2914
    .restart local v4       #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    iget v9, v4, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2915
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->removeViewInLayout(Landroid/view/View;)V

    .line 2916
    invoke-virtual {v8, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2920
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2921
    goto :goto_4

    .line 2918
    :cond_6
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 2923
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 23
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1790
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1791
    .local v12, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1792
    .local v18, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move v14, v0

    .line 1793
    .local v14, mode:I
    if-lez v14, :cond_9

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 1795
    .local v11, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1796
    .local v17, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_0
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1800
    .local v15, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .line 1801
    .local v16, p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1802
    new-instance v16, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;

    .end local v16           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;-><init>(III)V

    .line 1805
    .restart local v16       #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    .line 1807
    if-nez p7, :cond_2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1809
    :cond_2
    if-eqz p4, :cond_c

    const/16 v20, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1817
    :goto_6
    if-eqz v18, :cond_3

    .line 1818
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1821
    :cond_3
    if-eqz v17, :cond_4

    .line 1822
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1825
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1826
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1827
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1831
    :cond_5
    if-eqz v15, :cond_11

    .line 1832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1834
    .local v9, childWidthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, v0

    .line 1836
    .local v13, lpHeight:I
    if-lez v13, :cond_10

    .line 1837
    const/high16 v20, 0x4000

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1841
    .local v6, childHeightSpec:I
    :goto_7
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1846
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1847
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1848
    .local v10, h:I
    if-eqz p4, :cond_12

    move/from16 v8, p3

    .line 1850
    .local v8, childTop:I
    :goto_9
    if-eqz v15, :cond_13

    .line 1851
    add-int v7, p5, v19

    .line 1852
    .local v7, childRight:I
    add-int v5, v8, v10

    .line 1853
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1859
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1860
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1862
    :cond_6
    return-void

    .line 1790
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    .restart local p6
    :cond_7
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_0

    .line 1791
    .restart local v12       #isSelected:Z
    :cond_8
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_1

    .line 1793
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_2

    .line 1795
    .restart local v11       #isPressed:Z
    :cond_a
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_3

    .line 1796
    .restart local v17       #updateChildPressed:Z
    :cond_b
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_4

    .line 1809
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1811
    :cond_d
    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1812
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1814
    :cond_e
    if-eqz p4, :cond_f

    const/16 v20, -0x1

    :goto_b
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_f
    const/16 v20, 0x0

    goto :goto_b

    .line 1839
    .end local p6
    .restart local v9       #childWidthSpec:I
    .restart local v13       #lpHeight:I
    :cond_10
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_7

    .line 1843
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1848
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_12
    sub-int v20, p3, v10

    move/from16 v8, v20

    goto/16 :goto_9

    .line 1855
    .restart local v8       #childTop:I
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, p5, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1856
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v8, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a
.end method

.method private showingBottomFadingEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v1

    .line 603
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 604
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 606
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 608
    .local v3, listBottom:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v4, v6

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 595
    .local v0, listTop:I
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 373
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_0
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFListView;)V

    .line 354
    .local v0, info:Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
    iput-object p1, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 355
    iput-object p2, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 356
    iput-boolean p3, v0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->isSelectable:Z

    .line 357
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2307
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    .line 2308
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2309
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 2310
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    :cond_0
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1866
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->canAnimate()Z

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

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 3010
    const/4 v9, 0x0

    .line 3011
    .local v9, clipSaved:Z
    const/16 v23, 0x0

    .line 3012
    .local v23, saveClip:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v25

    if-lez v25, :cond_0

    .line 3013
    const/4 v9, 0x1

    .line 3014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingLeft()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingTop()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getWidth()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3018
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v23

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3023
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v11, v0

    .line 3025
    .local v11, dividerHeight:I
    if-lez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 3028
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3031
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v10

    .line 3032
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3033
    .local v16, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    sub-int v25, v25, v26

    const/16 v26, 0x1

    sub-int v15, v25, v26

    .line 3034
    .local v15, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderDividersEnabled:Z

    move/from16 v17, v0

    .line 3035
    .local v17, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterDividersEnabled:Z

    move v14, v0

    .line 3036
    .local v14, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v13, v0

    .line 3037
    .local v13, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    move v5, v0

    .line 3038
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    .line 3043
    .local v4, adapter:Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->isOpaque()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isOpaque()Z

    move-result v25

    if-nez v25, :cond_6

    const/16 v25, 0x1

    move/from16 v12, v25

    .line 3045
    .local v12, fillForMissingDividers:Z
    :goto_0
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mIsCacheColorOpaque:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 3046
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getCacheColorHint()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColor(I)V

    .line 3049
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 3051
    .local v22, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 3053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v20, v25, v26

    .line 3055
    .local v20, listBottom:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move v1, v10

    if-ge v0, v1, :cond_e

    .line 3056
    if-nez v17, :cond_2

    add-int v25, v13, v18

    move/from16 v0, v25

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    :cond_2
    if-nez v14, :cond_3

    add-int v25, v13, v18

    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_5

    .line 3058
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3059
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3061
    .local v6, bottom:I
    move v0, v6

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 3062
    if-nez v5, :cond_4

    add-int v25, v13, v18

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    add-int v25, v13, v18

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    sub-int v25, v10, v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    add-int v25, v13, v18

    add-int/lit8 v25, v25, 0x1

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 3066
    :cond_4
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3067
    add-int v25, v6, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3068
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3055
    .end local v6           #bottom:I
    .end local v8           #child:Landroid/view/View;
    :cond_5
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 3043
    .end local v12           #fillForMissingDividers:Z
    .end local v18           #i:I
    .end local v20           #listBottom:I
    .end local v22           #paint:Landroid/graphics/Paint;
    :cond_6
    const/16 v25, 0x0

    move/from16 v12, v25

    goto/16 :goto_0

    .line 3069
    .restart local v6       #bottom:I
    .restart local v8       #child:Landroid/view/View;
    .restart local v12       #fillForMissingDividers:Z
    .restart local v18       #i:I
    .restart local v20       #listBottom:I
    .restart local v22       #paint:Landroid/graphics/Paint;
    :cond_7
    if-eqz v12, :cond_5

    .line 3070
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3071
    add-int v25, v6, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3072
    move-object/from16 v0, p1

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 3079
    .end local v6           #bottom:I
    .end local v8           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v20           #listBottom:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 3081
    .local v21, listTop:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_3
    move/from16 v0, v18

    move v1, v10

    if-ge v0, v1, :cond_e

    .line 3082
    if-nez v17, :cond_9

    add-int v25, v13, v18

    move/from16 v0, v25

    move/from16 v1, v16

    if-lt v0, v1, :cond_c

    :cond_9
    if-nez v14, :cond_a

    add-int v25, v13, v18

    move/from16 v0, v25

    move v1, v15

    if-ge v0, v1, :cond_c

    .line 3084
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3085
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v24

    .line 3087
    .local v24, top:I
    move/from16 v0, v24

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 3088
    if-nez v5, :cond_b

    add-int v25, v13, v18

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    add-int v25, v13, v18

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_d

    add-int v25, v13, v18

    if-eqz v25, :cond_b

    add-int v25, v13, v18

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 3095
    :cond_b
    sub-int v25, v24, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3096
    move/from16 v0, v24

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3101
    const/16 v25, 0x1

    sub-int v25, v18, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3081
    .end local v8           #child:Landroid/view/View;
    .end local v24           #top:I
    :cond_c
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 3102
    .restart local v8       #child:Landroid/view/View;
    .restart local v24       #top:I
    :cond_d
    if-eqz v12, :cond_c

    .line 3103
    sub-int v25, v24, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3104
    move/from16 v0, v24

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3105
    move-object/from16 v0, p1

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 3114
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #child:Landroid/view/View;
    .end local v10           #count:I
    .end local v12           #fillForMissingDividers:Z
    .end local v13           #first:I
    .end local v14           #footerDividers:Z
    .end local v15           #footerLimit:I
    .end local v16           #headerCount:I
    .end local v17           #headerDividers:Z
    .end local v18           #i:I
    .end local v21           #listTop:I
    .end local v22           #paint:Landroid/graphics/Paint;
    .end local v24           #top:I
    :cond_e
    if-lez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 3117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    move-object v7, v0

    .line 3118
    .restart local v7       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3121
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFloatingViewCount()I

    move-result v26

    sub-int v10, v25, v26

    .line 3122
    .restart local v10       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    .line 3123
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v13, v0

    .line 3125
    .restart local v13       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    move/from16 v25, v0

    if-nez v25, :cond_12

    .line 3128
    if-lez v10, :cond_f

    const/16 v25, 0x0

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3129
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3130
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3131
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3134
    :cond_f
    if-lez v10, :cond_10

    add-int v25, v13, v10

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3136
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v19

    .line 3138
    .local v19, itemBottom:I
    move/from16 v0, v19

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3139
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3140
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3162
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v13           #first:I
    .end local v19           #itemBottom:I
    :cond_10
    :goto_5
    if-eqz v9, :cond_11

    .line 3163
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3166
    :cond_11
    invoke-super/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3167
    return-void

    .line 3145
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v13       #first:I
    :cond_12
    if-lez v10, :cond_13

    const/16 v25, 0x0

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 3146
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3147
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3148
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3151
    :cond_13
    if-lez v10, :cond_10

    add-int v25, v13, v10

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object v0, v4

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3153
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBottom()I

    move-result v19

    .line 3155
    .restart local v19       #itemBottom:I
    move/from16 v0, v19

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3156
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object v1, v7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3157
    const/16 v25, 0x1

    sub-int v25, v10, v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_5
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 2042
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2043
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 2045
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2046
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2049
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2052
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 1988
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 1992
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 1993
    const/4 v4, 0x0

    .line 1994
    .local v4, itemCount:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getSelectedItemPosition()I

    move-result v2

    .line 1996
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1997
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1998
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1999
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 2000
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2001
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2002
    add-int/lit8 v4, v4, 0x1

    .line 2000
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2003
    :cond_1
    if-gt v3, v2, :cond_0

    .line 2004
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2008
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 2012
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2013
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2016
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3693
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3694
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mClipDivider:Z

    .line 3696
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 3697
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3703
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3705
    if-eqz v0, :cond_0

    .line 3706
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3708
    :cond_0
    return-void

    .line 3699
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3700
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 5
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 697
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 698
    .local v0, count:I
    if-eqz p1, :cond_1

    .line 699
    if-lez v0, :cond_0

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 701
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillDown(II)Landroid/view/View;

    .line 702
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooHigh(I)V

    .line 709
    :goto_1
    return-void

    .line 699
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getListPaddingTop()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 704
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 706
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .line 707
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->correctTooLow(I)V

    goto :goto_1

    .line 704
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1279
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 1280
    .local v0, childCount:I
    if-lez v0, :cond_1

    .line 1281
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1282
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1283
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1284
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1288
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1281
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1288
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3869
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3870
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3873
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3874
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3876
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3877
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3879
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3885
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3873
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3885
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3915
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3916
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3919
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3920
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3922
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3923
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3925
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 3931
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 3919
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3931
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 3850
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3851
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3852
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3853
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3861
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3856
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3857
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3858
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3861
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 3895
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3896
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 3897
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3898
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3907
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 3902
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3903
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3904
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3907
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2222
    const/4 v0, 0x0

    .line 2223
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    .line 2224
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 2225
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2226
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 2227
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2228
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionInt(I)V

    .line 2229
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    .line 2231
    :cond_0
    const/4 v0, 0x1

    .line 2245
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2246
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    .line 2247
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 2250
    :cond_2
    return v0

    .line 2233
    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 2234
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 2235
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2236
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 2237
    const/4 v2, 0x3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2238
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionInt(I)V

    .line 2239
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    .line 2241
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getExcessScrollDrawShift(I)I
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 3171
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v2, :cond_1

    .line 3172
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mExcessScrollEffect:I

    if-nez v2, :cond_1

    .line 3173
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 3174
    .local v0, height:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 3177
    .local v1, shift:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-gez v2, :cond_0

    .line 3178
    mul-int/lit8 v1, v1, -0x1

    :cond_0
    move v2, v1

    .line 3184
    .end local v0           #height:F
    .end local v1           #shift:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getFloatingViewCount()I
    .locals 1

    .prologue
    .line 2984
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 283
    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 2967
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isOpaque()Z

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

.method protected layoutChildren()V
    .locals 26

    .prologue
    .line 1447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1448
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_0

    .line 1449
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 1455
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->layoutChildren()V

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->resetList()V

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    if-nez v10, :cond_0

    .line 1702
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1465
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1466
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBottom:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mTop:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v5

    .line 1468
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v12

    .line 1470
    .local v12, childCount:I
    const/4 v7, 0x0

    .line 1473
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1474
    .local v5, oldSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1475
    .local v22, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1477
    .local v6, newSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1480
    .local v16, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v21, v4, v6

    .line 1496
    .local v21, index:I
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_2

    .line 1497
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1501
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_3

    .line 1504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1508
    :cond_3
    add-int v4, v21, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1512
    .end local v21           #index:I
    .restart local v6       #newSel:Landroid/view/View;
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    move v13, v0

    .line 1513
    .local v13, dataChanged:Z
    if-eqz v13, :cond_5

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->handleDataChanged()V

    .line 1519
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_6

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->resetList()V

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1701
    if-nez v10, :cond_0

    .line 1702
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1482
    .end local v13           #dataChanged:Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v11, v0

    sub-int v21, v4, v11

    .line 1483
    .restart local v21       #index:I
    if-ltz v21, :cond_4

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_4

    .line 1484
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1523
    .end local v21           #index:I
    .restart local v13       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-eq v4, v11, :cond_8

    .line 1524
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #oldSel:Landroid/view/View;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .end local v6           #newSel:Landroid/view/View;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Adapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1701
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v12           #childCount:I
    .end local v13           #dataChanged:Z
    .end local v16           #focusLayoutRestoreView:Landroid/view/View;
    .end local v22           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v10, :cond_7

    .line 1702
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    :cond_7
    throw v4

    .line 1531
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v12       #childCount:I
    .restart local v13       #dataChanged:Z
    .restart local v16       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v22       #oldFirst:Landroid/view/View;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v14, v0

    .line 1536
    .local v14, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    move-object/from16 v24, v0

    .line 1539
    .local v24, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    const/4 v15, 0x0

    .line 1544
    .local v15, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v13, :cond_a

    .line 1545
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_b

    .line 1548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mShowAnimationOnDataChange:Z

    move v4, v0

    if-eqz v4, :cond_9

    .line 1549
    add-int v4, v20, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, v24

    move v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addShouldRetainView(ILandroid/view/View;)V

    .line 1545
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1551
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    goto :goto_3

    .line 1559
    .end local v20           #i:I
    :cond_a
    move-object/from16 v0, v24

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1566
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 1567
    .local v19, focusedChild:Landroid/view/View;
    if-eqz v19, :cond_e

    .line 1572
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1573
    :cond_c
    move-object/from16 v15, v19

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1576
    if-eqz v16, :cond_d

    .line 1578
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1581
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestFocus()Z

    .line 1586
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->detachAllViewsFromParent()V

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 1615
    if-nez v12, :cond_17

    .line 1616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_16

    .line 1617
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1618
    .local v23, position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 1619
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1640
    .end local v6           #newSel:Landroid/view/View;
    .end local v23           #position:I
    .local v25, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1642
    if-eqz v25, :cond_1f

    .line 1645
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1646
    move-object/from16 v0, v25

    move-object v1, v15

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_10
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1648
    .local v17, focusWasTaken:Z
    :goto_5
    if-nez v17, :cond_1d

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1653
    .local v18, focused:Landroid/view/View;
    if-eqz v18, :cond_11

    .line 1654
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 1656
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 1664
    .end local v17           #focusWasTaken:Z
    .end local v18           #focused:Landroid/view/View;
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 1683
    :cond_12
    :goto_7
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1685
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1688
    :cond_13
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 1689
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 1690
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 1693
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->updateScrollIndicators()V

    .line 1695
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_14

    .line 1696
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    .line 1699
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1701
    if-nez v10, :cond_0

    .line 1702
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1590
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_2
    if-eqz v6, :cond_15

    .line 1591
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1593
    .end local v25           #sel:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1595
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1597
    .end local v25           #sel:Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1598
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1600
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v25

    .line 1601
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1604
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 1605
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1606
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1609
    .end local v25           #sel:Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1610
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1612
    invoke-direct/range {v4 .. v9}, Lcom/nemustech/tiffany/widget/TFListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1613
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1621
    .end local v25           #sel:Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1622
    .restart local v23       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1624
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1626
    .end local v23           #position:I
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_19

    .line 1627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_18

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_8
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_8

    .line 1629
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_1b

    .line 1630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v22, :cond_1a

    move v5, v8

    :goto_9
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v25           #sel:Landroid/view/View;
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_9

    .line 1633
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1646
    :cond_1c
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_5

    .line 1658
    .restart local v17       #focusWasTaken:Z
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 1662
    .end local v17           #focusWasTaken:Z
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_6

    .line 1666
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move v4, v0

    if-lez v4, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_21

    .line 1667
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1668
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_20

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 1676
    .end local v11           #child:Landroid/view/View;
    :cond_20
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v16, :cond_12

    .line 1677
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 1670
    :cond_21
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 1480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1588
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v3, -0x1

    .line 1954
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1955
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 1981
    :goto_0
    return v2

    .line 1959
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1960
    .local v1, count:I
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_6

    .line 1961
    if-eqz p2, :cond_2

    .line 1962
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1963
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1964
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1967
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1968
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1969
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1973
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    move v2, v3

    .line 1974
    goto :goto_0

    :cond_5
    move v2, p1

    .line 1976
    goto :goto_0

    .line 1978
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 1979
    goto :goto_0

    :cond_8
    move v2, p1

    .line 1981
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1221
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 1222
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 1274
    :goto_0
    return v8

    .line 1226
    :cond_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    .line 1227
    .local v7, returnedHeight:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    move v2, v8

    .line 1230
    .local v2, dividerHeight:I
    :goto_1
    const/4 v4, 0x0

    .line 1235
    .local v4, prevHeightWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move p3, v8

    .line 1236
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    .line 1237
    .local v5, recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->recycleOnMeasure()Z

    move-result v6

    .line 1239
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_8

    .line 1240
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1242
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/nemustech/tiffany/widget/TFListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1244
    if-lez v3, :cond_2

    .line 1246
    add-int/2addr v7, v2

    .line 1250
    :cond_2
    if-eqz v6, :cond_3

    .line 1251
    invoke-virtual {v5, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1254
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1256
    if-lt v7, p4, :cond_6

    .line 1259
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-eq v7, p4, :cond_5

    move v8, v4

    goto :goto_0

    .line 1227
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerHeight:I
    .end local v3           #i:I
    .end local v4           #prevHeightWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    .end local v6           #recyle:Z
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerHeight:I
    .restart local v3       #i:I
    .restart local v4       #prevHeightWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_5
    move v8, p4

    .line 1259
    goto :goto_0

    .line 1267
    :cond_6
    if-ltz p5, :cond_7

    if-lt v3, p5, :cond_7

    .line 1268
    move v4, v7

    .line 1239
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_8
    move v8, v7

    .line 1274
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3832
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onFinishInflate()V

    .line 3834
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v0

    .line 3835
    .local v0, count:I
    if-lez v0, :cond_1

    .line 3836
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3837
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->addHeaderView(Landroid/view/View;)V

    .line 3836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3839
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->removeAllViews()V

    .line 3841
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3784
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3786
    const/4 v0, -0x1

    .line 3787
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3788
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollX:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 3792
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mTempRect:Landroid/graphics/Rect;

    .line 3793
    const v2, 0x7fffffff

    .line 3794
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v3

    .line 3795
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    .line 3796
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3798
    const/4 v6, 0x0

    move v8, v6

    move v6, v0

    move v0, v8

    :goto_0
    if-ge v0, v3, :cond_2

    .line 3800
    add-int v7, v4, v0

    invoke-interface {v5, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3798
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3804
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3805
    invoke-virtual {v7, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3806
    invoke-virtual {p0, v7, v1}, Lcom/nemustech/tiffany/widget/TFListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3807
    invoke-static {p3, v1, p2}, Lcom/nemustech/tiffany/widget/TFListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v7

    .line 3809
    if-ge v7, v2, :cond_0

    move v2, v7

    move v6, v0

    .line 3811
    goto :goto_1

    :cond_2
    move v0, v6

    .line 3816
    :cond_3
    if-ltz v0, :cond_4

    .line 3817
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setSelection(I)V

    .line 3821
    :goto_2
    return-void

    .line 3819
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2057
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/nemustech/tiffany/widget/TFListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2062
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2067
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/nemustech/tiffany/widget/TFListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1116
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onMeasure(II)V

    .line 1118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1119
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1120
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1121
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1123
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1124
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1126
    .local v7, childHeight:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    .line 1127
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 1129
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->obtainView(I)Landroid/view/View;

    move-result-object v6

    .line 1131
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/nemustech/tiffany/widget/TFListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1133
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1134
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1136
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1141
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1146
    :cond_2
    if-nez v9, :cond_3

    .line 1147
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1151
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1153
    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1156
    :cond_4
    invoke-virtual {p0, v11, v4}, Lcom/nemustech/tiffany/widget/TFListView;->setMeasuredDimension(II)V

    .line 1157
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mWidthMeasureSpec:I

    .line 1158
    return-void

    .line 1126
    :cond_5
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState2(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 4174
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    .line 4176
    const-class v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4177
    const-string v0, "com.nemustech.tiffany.tflistview.savedstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    .line 4179
    if-eqz v0, :cond_0

    .line 4180
    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4184
    :goto_0
    return-void

    .line 4182
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    goto :goto_0
.end method

.method protected onSaveInstanceState2(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 4166
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 4168
    new-instance v0, Lcom/nemustech/tiffany/widget/TFListView$SavedState;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView$SavedState;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 4169
    const-string v1, "com.nemustech.tiffany.tflistview.savedstate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 3936
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3939
    const/4 v0, 0x0

    .line 3941
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2176
    const/4 v1, -0x1

    .line 2177
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2179
    .local v0, down:Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_4

    .line 2180
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2186
    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    .line 2187
    invoke-virtual {p0, v1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2188
    .local v2, position:I
    if-ltz v2, :cond_5

    .line 2189
    const/4 v3, 0x4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2190
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 2192
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2193
    const/4 v3, 0x3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2196
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2197
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 2200
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionInt(I)V

    .line 2201
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invokeOnItemScrollListener()V

    .line 2202
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2203
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    :cond_3
    move v3, v6

    .line 2210
    .end local v2           #position:I
    :goto_1
    return v3

    .line 2181
    :cond_4
    const/16 v3, 0x82

    if-ne p1, v3, :cond_0

    .line 2182
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2183
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v7

    .line 2210
    goto :goto_1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3971
    const/4 v0, 0x0

    .line 3973
    .local v0, handled:Z
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v2, :cond_1

    .line 3974
    const/4 v0, 0x1

    .line 3976
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3977
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3978
    .local v1, oldValue:Z
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3987
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    .line 3988
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->rememberSyncState()V

    .line 3989
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    .line 3992
    .end local v1           #oldValue:Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3994
    return v0

    .restart local v1       #oldValue:Z
    :cond_2
    move v3, v4

    .line 3978
    goto :goto_0

    .line 3980
    .end local v1           #oldValue:Z
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 3981
    .restart local v1       #oldValue:Z
    if-nez v1, :cond_0

    .line 3982
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3983
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 18
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 616
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 619
    .local v11, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getHeight()I

    move-result v8

    .line 623
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getScrollY()I

    move-result v10

    .line 624
    .local v10, listUnfadedTop:I
    add-int v9, v10, v8

    .line 625
    .local v9, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 627
    .local v7, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_0

    if-le v11, v7, :cond_1

    .line 630
    :cond_0
    add-int/2addr v10, v7

    .line 634
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->getChildCount()I

    move-result v4

    .line 635
    .local v4, childCount:I
    const/4 v15, 0x1

    sub-int v15, v4, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 637
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v16, v3, v7

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 641
    :cond_2
    sub-int/2addr v9, v7

    .line 645
    :cond_3
    const/4 v13, 0x0

    .line 647
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v9, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v10, :cond_7

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_6

    .line 654
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    .line 661
    :goto_0
    sub-int v6, v3, v9

    .line 662
    .local v6, distanceToBottom:I
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 682
    .end local v6           #distanceToBottom:I
    :cond_4
    :goto_1
    if-eqz v13, :cond_9

    const/4 v15, 0x1

    move v12, v15

    .line 683
    .local v12, scroll:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 684
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->scrollListItemsBy(I)V

    .line 685
    invoke-virtual/range {p0 .. p1}, Lcom/nemustech/tiffany/widget/TFListView;->positionSelector(Landroid/view/View;)V

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mSelectedTop:I

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFListView;->invalidate()V

    .line 689
    :cond_5
    return v12

    .line 657
    .end local v12           #scroll:Z
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_0

    .line 663
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v10, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v9, :cond_4

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_8

    .line 670
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 677
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 678
    .local v14, top:I
    sub-int v5, v14, v10

    .line 679
    .local v5, deltaToTop:I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_1

    .line 673
    .end local v5           #deltaToTop:I
    .end local v14           #top:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v13, v15

    goto :goto_3

    .line 682
    :cond_9
    const/4 v15, 0x0

    move v12, v15

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 569
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 571
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->resetList()V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 574
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 506
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->resetList()V

    .line 511
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clear()V

    .line 513
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 514
    :cond_1
    new-instance v1, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/nemustech/tiffany/widget/TFHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 519
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedPosition:I

    .line 520
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldSelectedRowId:J

    .line 521
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 522
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    .line 523
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mOldItemCount:I

    .line 524
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    .line 525
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkFocus()V

    .line 527
    new-instance v1, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;-><init>(Lcom/nemustech/tiffany/widget/TFAdapterView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    .line 528
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mDataSetObserver:Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 530
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 533
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_5

    .line 534
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 538
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectedPositionInt(I)V

    .line 539
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 541
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    .line 553
    .end local v0           #position:I
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    .line 554
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    .line 558
    return-void

    .line 516
    :cond_4
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 536
    :cond_5
    invoke-virtual {p0, v5, v4}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 547
    .end local v0           #position:I
    :cond_6
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFListView;->mAreAllItemsSelectable:Z

    .line 548
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkFocus()V

    .line 550
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 2973
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 2974
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mIsCacheColorOpaque:Z

    .line 2975
    if-eqz v0, :cond_1

    .line 2976
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 2977
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 2979
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2981
    :cond_1
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setCacheColorHint(I)V

    .line 2982
    return-void

    .line 2973
    .end local v0           #opaque:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 3963
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    .line 3964
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 3965
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3967
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v2, 0x0

    .line 3726
    if-eqz p1, :cond_1

    .line 3727
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 3728
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mClipDivider:Z

    .line 3733
    :goto_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3734
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerIsOpaque:Z

    .line 3735
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayoutIfNecessary()V

    .line 3736
    return-void

    .line 3730
    :cond_1
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 3731
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFListView;->mClipDivider:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3734
    goto :goto_1
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 3752
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    .line 3753
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayoutIfNecessary()V

    .line 3754
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1878
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->setSelectionFromTop(II)V

    .line 1879
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1896
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1897
    if-ltz p1, :cond_2

    .line 1898
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 1904
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 1905
    const/4 v0, 0x4

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mLayoutMode:I

    .line 1906
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSpecificTop:I

    .line 1908
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 1909
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncPosition:I

    .line 1910
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSyncRowId:J

    .line 1913
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->requestLayout()V

    goto :goto_0

    .line 1901
    :cond_4
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1924
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFListView;->setNextSelectedPositionInt(I)V

    .line 1925
    const/4 v0, 0x0

    .line 1927
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mSelectedPosition:I

    .line 1929
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 1930
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_2

    .line 1931
    const/4 v0, 0x1

    .line 1937
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->layoutChildren()V

    .line 1939
    if-eqz v0, :cond_1

    .line 1940
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFListView;->awakenScrollBars()Z

    .line 1942
    :cond_1
    return-void

    .line 1932
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 1933
    const/4 v0, 0x1

    goto :goto_0
.end method
