.class Lcom/android/browser/ToolTip;
.super Landroid/view/View;
.source "ToolTip.java"


# instance fields
.field mBgPath:Landroid/graphics/Path;

.field mBgShader:Landroid/graphics/LinearGradient;

.field mDownItem:I

.field mIsDown:Z

.field mItems:Ljava/util/Vector;

.field mSeparatorB:Landroid/graphics/Path;

.field mSeparatorW:Landroid/graphics/Path;

.field mTailHeight:I

.field mTextPaint:Landroid/graphics/Paint;

.field mViewHeight:I

.field mbDrawUpsideDown:Z


# virtual methods
.method findItem(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 422
    const/4 v3, 0x0

    .line 423
    .local v3, width:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 425
    .local v2, rect:Landroid/graphics/Rect;
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 426
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 427
    iget v4, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 431
    iget-object v4, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ToolTipItem;

    .line 434
    .local v1, item:Lcom/android/browser/ToolTipItem;
    iget-object v4, v1, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 436
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    .line 442
    .end local v1           #item:Lcom/android/browser/ToolTipItem;
    :goto_1
    return v4

    .line 439
    .restart local v1       #item:Lcom/android/browser/ToolTipItem;
    :cond_0
    iget-object v4, v1, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v1           #item:Lcom/android/browser/ToolTipItem;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x1

    .line 285
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 289
    .local v7, saveCount:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 290
    .local v3, p:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    const/high16 v9, -0x100

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mBgShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 296
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 299
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 300
    .local v4, paintBlack:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    const v9, -0xddddde

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 305
    .local v5, paintWhite:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    const v9, -0x222223

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 310
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    .local v0, downRect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 315
    iget v9, p0, Lcom/android/browser/ToolTip;->mViewHeight:I

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 317
    const/4 v8, 0x0

    .line 318
    .local v8, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 320
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ToolTipItem;

    .line 322
    .local v2, item:Lcom/android/browser/ToolTipItem;
    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-nez v9, :cond_1

    .line 323
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    :goto_1
    iget v9, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    if-ne v1, v9, :cond_0

    .line 329
    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 330
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 333
    :cond_0
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    iget v12, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 336
    .end local v2           #item:Lcom/android/browser/ToolTipItem;
    :cond_2
    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    if-ne v9, v13, :cond_3

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 341
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v6, pp:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    const v9, -0x37d04003

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 347
    iget-object v9, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    iget v10, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ToolTipItem;

    .line 348
    .restart local v2       #item:Lcom/android/browser/ToolTipItem;
    iget-boolean v9, p0, Lcom/android/browser/ToolTip;->mbDrawUpsideDown:Z

    if-nez v9, :cond_4

    .line 349
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 353
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    .end local v2           #item:Lcom/android/browser/ToolTipItem;
    .end local v6           #pp:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 358
    return-void

    .line 351
    .restart local v2       #item:Lcom/android/browser/ToolTipItem;
    .restart local v6       #pp:Landroid/graphics/Paint;
    :cond_4
    iget-object v9, v2, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    iget v12, p0, Lcom/android/browser/ToolTip;->mTailHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/browser/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 448
    .local v2, type:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 449
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 451
    .local v4, y:I
    if-nez v2, :cond_1

    .line 453
    iput-boolean v6, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    .line 454
    invoke-virtual {p0, v3, v4}, Lcom/android/browser/ToolTip;->findItem(II)I

    move-result v5

    iput v5, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    .line 455
    invoke-virtual {p0}, Lcom/android/browser/ToolTip;->invalidate()V

    .line 480
    :cond_0
    :goto_0
    return v6

    .line 458
    :cond_1
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 462
    if-ne v2, v6, :cond_0

    .line 465
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/browser/ToolTip;->mIsDown:Z

    .line 466
    iput v7, p0, Lcom/android/browser/ToolTip;->mDownItem:I

    .line 467
    invoke-virtual {p0}, Lcom/android/browser/ToolTip;->invalidate()V

    .line 469
    invoke-virtual {p0, v3, v4}, Lcom/android/browser/ToolTip;->findItem(II)I

    move-result v1

    .line 470
    .local v1, nSelItem:I
    if-eq v7, v1, :cond_0

    .line 472
    iget-object v5, p0, Lcom/android/browser/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ToolTipItem;

    .line 473
    .local v0, item:Lcom/android/browser/ToolTipItem;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/android/browser/ToolTipItem;->onItemSelected()V

    goto :goto_0
.end method
