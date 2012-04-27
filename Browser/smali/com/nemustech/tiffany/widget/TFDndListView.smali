.class public Lcom/nemustech/tiffany/widget/TFDndListView;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.source "TFDndListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFDndListView$1;,
        Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;,
        Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;,
        Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;,
        Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;
    }
.end annotation


# instance fields
.field private mActuallyDrop:Z

.field private mBmpDragItemCache:Landroid/graphics/Bitmap;

.field private final mDensityScale:F

.field private mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

.field private mDndDragItemTouchOffsetX:I

.field private mDndDragItemTouchOffsetY:I

.field private mDndMode:Z

.field private mDndTouchMode:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragGrabHandleAnimationProgress:F

.field private mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePaddingBottom:I

.field private mDragGrabHandlePaddingLeft:I

.field private mDragGrabHandlePaddingRight:I

.field private mDragGrabHandlePaddingTop:I

.field private mDragGrabHandlePosGravity:I

.field private mDragItemDestinationPosition:I

.field private mDragItemOriginalPosition:I

.field private mDragItemRectHeight:I

.field private mDropGranted:Z

.field private mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

.field private mEdgeHitTestHeight:I

.field private mPaintDndHandle:Landroid/graphics/Paint;

.field private mPaintItemCache:Landroid/graphics/Paint;

.field private mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserDragItem:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 224
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x8000

    const/4 v0, -0x1

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 84
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 86
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z

    .line 99
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    .line 101
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeHitTestHeight:I

    .line 103
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 104
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 110
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;Lcom/nemustech/tiffany/widget/TFDndListView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    .line 230
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    .line 234
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->makeDefaultGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    const/16 v0, 0x15

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    .line 238
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    .line 239
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFDndListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/nemustech/tiffany/widget/TFDndListView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFDndListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    return v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFDndListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFDndListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFDndListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/widget/TFDndListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFDndListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView;->findDropDestinationPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFDndListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFDndListView;->adjustItemsYPosOffset(II)V

    return-void
.end method

.method static synthetic access$802(Lcom/nemustech/tiffany/widget/TFDndListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFDndListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkDropGranted()Z

    move-result v0

    return v0
.end method

.method private adjustItemsYPosOffset(II)V
    .locals 11
    .parameter "prevDestPosition"
    .parameter "newDestPosition"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 554
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFListView;->mDividerHeight:I

    add-int v1, v7, v8

    .line 555
    .local v1, HEIGHT:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 557
    .local v5, time:J
    if-le p2, p1, :cond_1

    .line 558
    move v3, p1

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 561
    .local v2, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_0

    instance-of v7, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v7, :cond_0

    .line 562
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v4, v0

    .line 563
    neg-int v7, v1

    invoke-virtual {v4, v9, v9, v9, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 564
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgressWithoutDelay()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 570
    :goto_1
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_0
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-direct {v4, v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 567
    .restart local v4       #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    neg-int v7, v1

    invoke-virtual {v4, v9, v9, v9, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 568
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_1

    .line 572
    .end local v2           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #i:I
    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_1
    if-ge p2, p1, :cond_3

    .line 573
    move v3, p2

    .restart local v3       #i:I
    :goto_2
    if-ge v3, p1, :cond_3

    .line 574
    const/4 v4, 0x0

    .line 575
    .restart local v4       #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 576
    .restart local v2       #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_2

    instance-of v7, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v7, :cond_2

    .line 577
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v4, v0

    .line 578
    invoke-virtual {v4, v9, v9, v9, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 579
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgressWithoutDelay()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 585
    :goto_3
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 573
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 581
    :cond_2
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-direct {v4, v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 582
    .restart local v4       #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v4, v9, v9, v9, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 583
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_3

    .line 588
    .end local v2           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #i:I
    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_3
    return-void
.end method

.method private buildDragItemCache(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "item"

    .prologue
    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, retBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getLastVisiblePosition()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 338
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 339
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 341
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 342
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 345
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private checkDropGranted()Z
    .locals 5

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDifferentDropPosition()Z

    move-result v0

    .line 593
    .local v0, actuallyMoved:Z
    if-eqz v0, :cond_0

    .line 594
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-interface {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v1

    .local v1, dropGranted:Z
    move v2, v1

    .line 601
    .end local v1           #dropGranted:Z
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkStartDnd(III)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkDndGrabHandle(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 314
    :goto_0
    return v1

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    invoke-interface {v1, p3}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrag(I)Z

    move-result v0

    .local v0, granted:Z
    move v1, v0

    .line 314
    goto :goto_0
.end method

.method private drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 4
    .parameter "canvas"
    .parameter "childRect"
    .parameter "isDraggedItem"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 833
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 836
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 837
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 846
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 847
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 848
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    sget-object v1, Lcom/nemustech/tiffany/widget/TFDndListView;->PRESSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 849
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 851
    :cond_1
    return-void

    .line 840
    :cond_2
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 848
    :cond_3
    sget-object v1, Lcom/nemustech/tiffany/widget/TFDndListView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private findDropDestinationPosition(I)I
    .locals 7
    .parameter "y"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildCount()I

    move-result v0

    .line 533
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 534
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 535
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 536
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 538
    const/4 v4, 0x0

    .line 539
    .local v4, yPosAdjust:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 540
    .local v2, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_0

    .line 541
    check-cast v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    .end local v2           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v4

    .line 544
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v4

    if-gt p1, v5, :cond_1

    .line 545
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    .line 550
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    .end local v4           #yPosAdjust:I
    :goto_1
    return v5

    .line 534
    .restart local v1       #i:I
    .restart local v3       #v:Landroid/view/View;
    .restart local v4       #yPosAdjust:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v3           #v:Landroid/view/View;
    .end local v4           #yPosAdjust:I
    :cond_2
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    goto :goto_1

    .line 550
    .end local v1           #i:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "childRect"
    .parameter "outGrabHandleRect"

    .prologue
    .line 818
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 820
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 822
    .local v0, drawableHeight:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePaddingLeft:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 823
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePaddingTop:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 824
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePaddingRight:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 825
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePaddingBottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 827
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 830
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :cond_0
    return-void
.end method

.method private getItemRectForPosition(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "item"

    .prologue
    .line 514
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getLastVisiblePosition()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, itemView:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 522
    .local v1, rc:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object v2, v1

    .line 528
    .end local v0           #itemView:Landroid/view/View;
    .end local v1           #rc:Landroid/graphics/Rect;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hittestAutoDragEdge(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeight()I

    move-result v1

    .line 995
    .local v1, listHeight:I
    const/4 v0, 0x0

    .line 996
    .local v0, edgeAreaHeight:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeHitTestHeight:I

    if-nez v2, :cond_0

    .line 997
    div-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x4270

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    .line 1003
    :goto_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 1004
    const/4 v2, 0x1

    .line 1008
    :goto_1
    return v2

    .line 1000
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeHitTestHeight:I

    goto :goto_0

    .line 1005
    :cond_1
    sub-int v2, v1, v0

    if-le p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 1006
    const/4 v2, 0x2

    goto :goto_1

    .line 1008
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isDifferentDropPosition()Z
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkDndGrabHandle(III)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    .line 322
    :cond_0
    invoke-direct {p0, p3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemRectForPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 323
    .local v0, childRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 325
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0

    .line 327
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 893
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 895
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintDndHandle:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 897
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintDndHandle:Landroid/graphics/Paint;

    .line 898
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintDndHandle:Landroid/graphics/Paint;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 902
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 903
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    if-nez v2, :cond_3

    .line 904
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 906
    :cond_3
    const/4 v0, 0x0

    .line 907
    .local v0, draggedItemX:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetY:I

    sub-int v1, v2, v3

    .line 909
    .local v1, draggedItemY:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 910
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 921
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 922
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 923
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 924
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 926
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 949
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_4
    return-void

    .line 915
    .restart local v0       #draggedItemX:I
    .restart local v1       #draggedItemY:I
    :cond_5
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 11
    .parameter "hasFocus"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 741
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchWindowFocusChanged(Z)V

    .line 752
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v8

    .line 753
    .local v8, dndMode:Z
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    move v9, v4

    .line 757
    .local v9, dragging:Z
    :goto_0
    if-nez p1, :cond_1

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 759
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 760
    .local v10, e:Landroid/view/MotionEvent;
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFDndListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 762
    .end local v10           #e:Landroid/view/MotionEvent;
    :cond_1
    return-void

    .end local v9           #dragging:Z
    :cond_2
    move v9, v7

    .line 753
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/widget/TFDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 857
    .local v0, index:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 859
    .local v1, pos:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    if-ne v1, v2, :cond_0

    .line 861
    const/4 v2, 0x0

    .line 865
    .end local v0           #index:I
    .end local v1           #pos:I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, ret:Landroid/view/View;
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 179
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/high16 v4, -0x8000

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 953
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eqz v2, :cond_2

    .line 954
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    if-le v2, v3, :cond_2

    .line 956
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 957
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 958
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 960
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 961
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 963
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 965
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    if-eqz v2, :cond_1

    .line 966
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 968
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 971
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    invoke-interface {v2}, Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;->OnDragAndDropStop()V

    .line 974
    :cond_1
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    .line 975
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    .line 977
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 978
    .local v8, cancel:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 983
    .end local v8           #cancel:Landroid/view/MotionEvent;
    :cond_2
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    .line 984
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->layoutChildren()V

    .line 985
    return-void
.end method

.method public makeDefaultGrabHandleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x4130

    const/high16 v5, 0x4110

    const/high16 v4, 0x4080

    const/high16 v3, 0x421c

    .line 1134
    const/16 v10, 0x27

    .line 1135
    .local v10, DEFAULT_GRAB_HANDLE_WIDTH:I
    const/16 v7, 0x27

    .line 1136
    .local v7, DEFAULT_GRAB_HANDLE_HEIGHT:I
    const/16 v8, 0x9

    .line 1137
    .local v8, DEFAULT_GRAB_HANDLE_PADDING_HORIZONTAL:I
    const/16 v9, 0xb

    .line 1138
    .local v9, DEFAULT_GRAB_HANDLE_PADDING_VERTICAL:I
    const/high16 v6, 0x4080

    .line 1140
    .local v6, DEFAULT_GRAB_HANDLE_CORNER_RADIUS:F
    new-instance v11, Landroid/graphics/drawable/PaintDrawable;

    const v2, -0x777778

    invoke-direct {v11, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1141
    .local v11, pdNormal:Landroid/graphics/drawable/PaintDrawable;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1142
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1143
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1145
    new-instance v12, Landroid/graphics/drawable/PaintDrawable;

    const v2, -0xff0001

    invoke-direct {v12, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1146
    .local v12, pdPressed:Landroid/graphics/drawable/PaintDrawable;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1147
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1148
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1150
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1151
    .local v1, sd:Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lcom/nemustech/tiffany/widget/TFDndListView;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1152
    sget-object v2, Lcom/nemustech/tiffany/widget/TFDndListView;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v2, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1154
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v3, v13

    float-to-int v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v5, v13

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1159
    .local v0, id:Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v0, v14, v14}, Landroid/graphics/drawable/InsetDrawable;->setVisible(ZZ)Z

    .line 1161
    return-object v0
.end method

.method protected onDndModeChanged(Z)V
    .locals 0
    .parameter "dndMode"

    .prologue
    .line 282
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 447
    .local v0, action:I
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v3

    if-le v3, v5, :cond_7

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->findMotionRow(I)I

    move-result v2

    .line 457
    .local v2, itemPosition:I
    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkStartDnd(III)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    const/4 v3, 0x0

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 466
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 467
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 468
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemRectForPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 473
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 477
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 478
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->buildDragItemCache(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    .line 480
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 483
    .local v1, childItem:Landroid/view/View;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 484
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetX:I

    .line 485
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetY:I

    .line 488
    .end local v1           #childItem:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 491
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 493
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    if-eqz v3, :cond_5

    .line 494
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 495
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 499
    :cond_4
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    invoke-interface {v3}, Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;->OnDragAndDropStart()V

    :cond_5
    move v3, v5

    .line 510
    .end local v2           #itemPosition:I
    :goto_0
    return v3

    .line 504
    .restart local v2       #itemPosition:I
    :cond_6
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 505
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 506
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 510
    .end local v2           #itemPosition:I
    :cond_7
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/high16 v10, 0x3f80

    .line 872
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 873
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/widget/TFDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 874
    .local v3, index:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v7

    add-int v6, v3, v7

    .line 875
    .local v6, pos:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 876
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 877
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 878
    .local v2, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_1

    .line 879
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 880
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 881
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getDestOffsetX()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v8, v8

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v9

    sub-float v9, v10, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v4, v7

    .line 882
    .local v4, offsetX:I
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v8, v8

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v9

    sub-float v9, v10, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 883
    .local v5, offsetY:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 886
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    :cond_1
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {p0, p1, v7, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 889
    .end local v2           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #index:I
    .end local v6           #pos:I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 608
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 736
    :goto_0
    return v8

    .line 611
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 612
    .local v0, action:I
    if-nez v0, :cond_2

    .line 617
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    if-nez v8, :cond_2

    .line 621
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v3

    .line 622
    .local v3, hitTestResult:I
    if-lez v3, :cond_2

    .line 623
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    .end local v3           #hitTestResult:I
    :cond_2
    const/4 v8, 0x2

    if-ne v0, v8, :cond_8

    .line 631
    const/4 v8, 0x1

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 632
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 633
    .local v5, prevDestPosition:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetY:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->findDropDestinationPosition(I)I

    move-result v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 642
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 644
    .local v6, prevDndTouchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 647
    const/4 v4, 0x0

    .line 649
    .local v4, needToInvalidate:Z
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    if-eq v5, v8, :cond_3

    .line 650
    const/4 v4, 0x1

    .line 652
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-direct {p0, v5, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->adjustItemsYPosOffset(II)V

    .line 653
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 654
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkDropGranted()Z

    move-result v8

    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z

    .line 657
    :cond_3
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v3

    .line 658
    .restart local v3       #hitTestResult:I
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v7

    .line 665
    .local v7, prevHitTestResult:I
    if-eq v3, v7, :cond_4

    .line 666
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 669
    if-lez v3, :cond_4

    .line 670
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    :cond_4
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_6

    .line 675
    :cond_5
    const/4 v4, 0x1

    .line 678
    :cond_6
    if-eqz v4, :cond_7

    .line 679
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 736
    .end local v3           #hitTestResult:I
    .end local v4           #needToInvalidate:Z
    .end local v5           #prevDestPosition:I
    .end local v6           #prevDndTouchY:I
    .end local v7           #prevHitTestResult:I
    :cond_7
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 683
    :cond_8
    const/4 v8, 0x1

    if-eq v0, v8, :cond_9

    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    .line 684
    :cond_9
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 686
    :cond_a
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDifferentDropPosition()Z

    move-result v1

    .line 687
    .local v1, actuallyMoved:Z
    if-eqz v1, :cond_b

    .line 688
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-interface {v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v2

    .line 690
    .local v2, dropGranted:Z
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    .line 694
    if-eqz v2, :cond_b

    .line 699
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-interface {v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndController;->dropDone(II)V

    .line 700
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    if-le v9, v10, :cond_e

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_2
    invoke-virtual {p0, v8, v9}, Lcom/nemustech/tiffany/widget/TFDndListView;->changeItemId(II)V

    .line 710
    .end local v2           #dropGranted:Z
    :cond_b
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    .line 714
    .end local v1           #actuallyMoved:Z
    :goto_3
    const/4 v8, -0x1

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 715
    const/4 v8, -0x1

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 716
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 718
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 719
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 721
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    if-eqz v8, :cond_d

    .line 724
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_c

    .line 725
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 726
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 729
    :cond_c
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    invoke-interface {v8}, Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;->OnDragAndDropStop()V

    .line 732
    :cond_d
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    goto :goto_1

    .line 700
    .restart local v1       #actuallyMoved:Z
    .restart local v2       #dropGranted:Z
    :cond_e
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    goto :goto_2

    .line 712
    .end local v1           #actuallyMoved:Z
    .end local v2           #dropGranted:Z
    :cond_f
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    goto :goto_3
.end method

.method public setDndController(Lcom/nemustech/tiffany/widget/TFDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;Lcom/nemustech/tiffany/widget/TFDndController;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    .line 157
    return-void
.end method

.method public setDndMode(Z)V
    .locals 3
    .parameter "dndMode"

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    .line 259
    .local v0, prevDndMode:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setDndController() must be called before setDndMode()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    .line 264
    if-eqz p1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->show()V

    .line 271
    :goto_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eq v1, v0, :cond_1

    .line 272
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->onDndModeChanged(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 275
    :cond_1
    return-void

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->hide()V

    .line 268
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    goto :goto_0
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 373
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 197
    :cond_0
    return-void
.end method
