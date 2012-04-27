.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateItemAnimation"
.end annotation


# instance fields
.field mAnchorDeltaX:I

.field mAnchorDeltaY:I

.field mAnchorX:I

.field mAnchorY:I

.field private mCache:Landroid/graphics/Bitmap;

.field mDelayTime:I

.field mDeltaX:I

.field mDeltaY:I

.field mDuration:I

.field mOffsetXDest:I

.field mOffsetYDest:I

.field private mPaint:Landroid/graphics/Paint;

.field mProgress:F

.field private mProgressWithoutDelay:F

.field mStartTime:J

.field mTmpRect:Landroid/graphics/Rect;

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "retainOnFinish"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 228
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 229
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 230
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 231
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 232
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 259
    return-void
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 6
    .parameter "curUpTime"

    .prologue
    const/high16 v5, 0x3f80

    .line 359
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mStartTime:J

    sub-long v0, p1, v2

    .line 360
    .local v0, elapsed:J
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-lez v2, :cond_3

    .line 361
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 362
    const/4 v2, 0x0

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 370
    :goto_0
    long-to-float v2, v0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 372
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 373
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 374
    :cond_1
    return-void

    .line 364
    :cond_2
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0

    .line 367
    :cond_3
    long-to-float v2, v0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_0
.end method

.method public createDrawingCache(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 467
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    .line 473
    .local v1, cacheEnable:Z
    if-nez v1, :cond_4

    .line 474
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 478
    :goto_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 479
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->onPreDraw()Z

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 483
    .local v2, tempCache:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 484
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    .line 486
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 487
    if-nez v1, :cond_3

    .line 488
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 489
    :cond_3
    return-void

    .line 476
    .end local v2           #tempCache:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method public delay(I)V
    .locals 0
    .parameter "timeInMillisec"

    .prologue
    .line 310
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 311
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/high16 v4, 0x3f80

    .line 437
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 438
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 439
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 441
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 445
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 449
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 451
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 458
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 459
    return-void

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getDestOffsetX()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method public getDestOffsetY()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    return v0
.end method

.method public isFinished()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 341
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-nez v2, :cond_1

    .line 342
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    if-nez v2, :cond_0

    move v2, v7

    .line 348
    :goto_0
    return v2

    :cond_0
    move v2, v6

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 346
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mStartTime:J

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    .line 348
    goto :goto_0
.end method

.method public move(IIII)V
    .locals 0
    .parameter "anchorX"
    .parameter "anchorDeltaX"
    .parameter "anchorY"
    .parameter "anchorDeltaY"

    .prologue
    .line 299
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    .line 300
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    .line 301
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    .line 302
    iput p4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    .line 303
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    .line 507
    return-void
.end method

.method public start(JI)V
    .locals 1
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 419
    iput-wide p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mStartTime:J

    .line 420
    if-nez p3, :cond_0

    .line 421
    const/16 v0, 0x12c

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDuration:I

    goto :goto_0
.end method

.method public translate(IIII)V
    .locals 2
    .parameter "startOffsetX"
    .parameter "deltaX"
    .parameter "startOffsetY"
    .parameter "deltaY"

    .prologue
    .line 283
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 284
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    .line 285
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 286
    iput p4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    .line 287
    return-void
.end method
