.class public Lcom/miui/camera/ui/VerticalProgressBar;
.super Landroid/view/View;
.source "VerticalProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/ui/VerticalProgressBar$1;,
        Lcom/miui/camera/ui/VerticalProgressBar$SavedState;,
        Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
    }
.end annotation


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mInDrawing:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field protected mParent:Landroid/view/ViewParent;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field protected mScrollX:I

.field protected mScrollY:I

.field private mSecondaryProgress:I

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/camera/ui/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/camera/ui/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mUiThreadId:J

    .line 70
    invoke-direct {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->initProgressBar()V

    .line 72
    sget-object v2, Lcom/miui/camera/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v5, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mNoInvalidate:Z

    .line 77
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, v1, v4}, Lcom/miui/camera/ui/VerticalProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v1}, Lcom/miui/camera/ui/VerticalProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    const/4 v2, 0x6

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinWidth:I

    .line 87
    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxWidth:I

    .line 88
    const/4 v2, 0x7

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinHeight:I

    .line 89
    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    .line 91
    const/4 v2, 0x2

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->setMax(I)V

    .line 93
    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->setProgress(I)V

    .line 95
    const/4 v2, 0x4

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->setSecondaryProgress(I)V

    .line 98
    iput-boolean v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mNoInvalidate:Z

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/miui/camera/ui/VerticalProgressBar;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/camera/ui/VerticalProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/camera/ui/VerticalProgressBar;Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;)Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 257
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 259
    const/4 v3, 0x0

    .line 261
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 262
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 265
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 266
    .local v2, level:I
    if-eqz v3, :cond_3

    move-object v5, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 271
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 272
    invoke-virtual {p0, v4, p3}, Lcom/miui/camera/ui/VerticalProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    monitor-exit p0

    return-void

    .line 256
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v5, v1

    .line 266
    goto :goto_1

    .line 268
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 256
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 166
    const/16 v0, 0x64

    iput v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    .line 167
    iput v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    .line 168
    iput v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSecondaryProgress:I

    .line 169
    iput v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinWidth:I

    .line 170
    iput v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxWidth:I

    .line 171
    iput v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinHeight:I

    .line 172
    iput v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    .line 173
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/camera/ui/VerticalProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

    .line 288
    .local v0, r:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

    .line 289
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 294
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/VerticalProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    .end local v0           #r:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 292
    :cond_1
    :try_start_2
    new-instance v0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;-><init>(Lcom/miui/camera/ui/VerticalProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "drawable"
    .parameter "clip"

    .prologue
    const/4 v13, 0x1

    .line 109
    instance-of v11, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_4

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v2, v0

    .line 111
    .local v2, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 112
    .local v1, N:I
    new-array v8, v1, [Landroid/graphics/drawable/Drawable;

    .line 114
    .local v8, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 115
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 116
    .local v4, id:I
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x102000d

    if-eq v4, v12, :cond_0

    const v12, 0x102000f

    if-ne v4, v12, :cond_1

    :cond_0
    move v12, v13

    :goto_1
    invoke-direct {p0, v11, v12}, Lcom/miui/camera/ui/VerticalProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v8, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 120
    .end local v4           #id:I
    :cond_2
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 122
    .local v6, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 123
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v11

    invoke-virtual {v6, v3, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v11, v6

    .line 148
    .end local v1           #N:I
    .end local v2           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v3           #i:I
    .end local v6           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #outDrawables:[Landroid/graphics/drawable/Drawable;
    .end local p1
    :goto_3
    return-object v11

    .line 128
    .restart local p1
    :cond_4
    instance-of v11, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v11, :cond_5

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v5, v0

    .line 130
    .local v5, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v7, out:Landroid/graphics/drawable/StateListDrawable;
    move-object v11, v7

    .line 135
    goto :goto_3

    .line 137
    .end local v5           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v7           #out:Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    instance-of v11, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_8

    .line 138
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 139
    .local v10, tileBitmap:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v11, :cond_6

    .line 140
    iput-object v10, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 143
    :cond_6
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 144
    .local v9, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    if-eqz p2, :cond_7

    new-instance v11, Landroid/graphics/drawable/ClipDrawable;

    const/4 v12, 0x3

    invoke-direct {v11, v9, v12, v13}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_3

    :cond_7
    move-object v11, v9

    goto :goto_3

    .end local v9           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v10           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_8
    move-object v11, p1

    .line 148
    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 507
    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 509
    .local v0, state:[I
    iget-object v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 512
    :cond_0
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 153
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 152
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "dr"

    .prologue
    .line 446
    iget-boolean v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 447
    invoke-virtual {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 449
    .local v0, dirty:Landroid/graphics/Rect;
    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mScrollX:I

    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 450
    .local v1, scrollX:I
    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mScrollY:I

    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 452
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/miui/camera/ui/VerticalProgressBar;->invalidate(IIII)V

    .line 458
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 475
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 480
    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 481
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 490
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 491
    .local v2, dw:I
    const/4 v1, 0x0

    .line 492
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 493
    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 494
    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 496
    :cond_0
    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 497
    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 499
    invoke-static {v2, p1}, Lcom/miui/camera/ui/VerticalProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/miui/camera/ui/VerticalProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/miui/camera/ui/VerticalProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    return-void

    .line 488
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 277
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 567
    move-object v0, p1

    check-cast v0, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;

    move-object v1, v0

    .line 568
    .local v1, ss:Lcom/miui/camera/ui/VerticalProgressBar$SavedState;
    invoke-virtual {v1}, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 570
    iget v2, v1, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->setProgress(I)V

    .line 571
    iget v2, v1, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->setSecondaryProgress(I)V

    .line 572
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 556
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 557
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 559
    .local v0, ss:Lcom/miui/camera/ui/VerticalProgressBar$SavedState;
    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    iput v2, v0, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;->progress:I

    .line 560
    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/miui/camera/ui/VerticalProgressBar$SavedState;->secondaryProgress:I

    .line 562
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 463
    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingRight:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    sub-int v1, v2, v3

    .line 464
    .local v1, right:I
    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 466
    .local v0, bottom:I
    iget-object v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    :cond_0
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 227
    :cond_0
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 401
    monitor-enter p0

    if-gez p1, :cond_0

    .line 402
    const/4 p1, 0x0

    .line 404
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 405
    iput p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    .line 406
    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->postInvalidate()V

    .line 408
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 409
    iput p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    .line 410
    const v0, 0x102000d

    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 307
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/camera/ui/VerticalProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 311
    monitor-enter p0

    if-gez p1, :cond_0

    .line 312
    const/4 p1, 0x0

    .line 315
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 316
    iget p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    .line 319
    :cond_1
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 320
    iput p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    .line 321
    const v0, 0x102000d

    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/miui/camera/ui/VerticalProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_2
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 200
    .local v0, drawableHeight:I
    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_0

    .line 201
    iput v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    .line 202
    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->requestLayout()V

    .line 205
    .end local v0           #drawableHeight:I
    :cond_0
    iput-object p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    iput-object p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->postInvalidate()V

    .line 208
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"

    .prologue
    .line 335
    monitor-enter p0

    if-gez p1, :cond_0

    .line 336
    const/4 p1, 0x0

    .line 339
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 340
    iget p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMax:I

    .line 343
    :cond_1
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 344
    iput p1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSecondaryProgress:I

    .line 345
    const v0, 0x102000f

    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/camera/ui/VerticalProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_2
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 440
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
