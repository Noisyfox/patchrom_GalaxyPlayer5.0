.class public Lcom/miui/camera/ui/AbsVerticalSeekBar;
.super Lcom/miui/camera/ui/VerticalProgressBar;
.source "AbsVerticalSeekBar.java"


# instance fields
.field private mDisabledAlpha:F

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mIsUserSeekable:Z

    .line 34
    iput v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/camera/ui/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mIsUserSeekable:Z

    .line 34
    iput v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    .line 45
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

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/camera/ui/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v5, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mIsUserSeekable:Z

    .line 34
    iput v5, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    .line 50
    sget-object v3, Lcom/miui/camera/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 57
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setThumbOffset(I)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object v3, Lcom/miui/camera/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/high16 v3, 0x3f00

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mDisabledAlpha:F

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 330
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 210
    iget v7, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 211
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 212
    .local v6, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 213
    .local v4, thumbHeight:I
    sub-int/2addr v0, v4

    .line 216
    iget v7, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 217
    const/high16 v7, 0x3f80

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v5, v7

    .line 219
    .local v5, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 220
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 221
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 222
    .local v1, leftBound:I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 229
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v3, rightBound:I
    :goto_0
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    return-void

    .line 224
    .end local v1           #leftBound:I
    .end local v3           #rightBound:I
    :cond_0
    move v1, p4

    .line 225
    .restart local v1       #leftBound:I
    add-int v3, p4, v6

    .restart local v3       #rightBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getHeight()I

    move-result v1

    .line 303
    .local v1, height:I
    iget v6, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    sub-int v0, v6, v7

    .line 304
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v1, v6

    .line 306
    .local v5, y:I
    const/4 v3, 0x0

    .line 307
    .local v3, progress:F
    iget v6, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    if-ge v5, v6, :cond_0

    .line 308
    const/4 v4, 0x0

    .line 316
    .local v4, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getMax()I

    move-result v2

    .line 317
    .local v2, max:I
    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 319
    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setProgress(IZ)V

    .line 320
    return-void

    .line 309
    .end local v2           #max:I
    .end local v4           #scale:F
    :cond_0
    iget v6, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    sub-int v6, v1, v6

    if-le v5, v6, :cond_1

    .line 310
    const/high16 v4, 0x3f80

    .restart local v4       #scale:F
    goto :goto_0

    .line 312
    .end local v4           #scale:F
    :cond_1
    iget v6, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 313
    .restart local v4       #scale:F
    iget v3, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Lcom/miui/camera/ui/VerticalProgressBar;->drawableStateChanged()V

    .line 146
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 153
    .local v1, state:[I
    iget-object v2, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 155
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 148
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumbOffset:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    iget-object v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    iget v0, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    iget v2, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    iget-object v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 353
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getProgress()I

    move-result v0

    .line 355
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/camera/ui/VerticalProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 357
    :pswitch_0
    if-lez v0, :cond_0

    .line 358
    iget v1, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setProgress(IZ)V

    .line 359
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->onKeyChange()V

    move v1, v2

    .line 360
    goto :goto_0

    .line 363
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 364
    iget v1, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setProgress(IZ)V

    .line 365
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->onKeyChange()V

    move v1, v2

    .line 366
    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v3, v4

    .line 250
    .local v3, thumbWidth:I
    :goto_0
    const/4 v2, 0x0

    .line 251
    .local v2, dw:I
    const/4 v1, 0x0

    .line 252
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 253
    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinWidth:I

    iget v5, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 254
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 255
    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMinHeight:I

    iget v5, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 257
    :cond_0
    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    iget v5, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 258
    iget v4, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    iget v5, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 260
    invoke-static {v2, p1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 249
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbWidth:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    move v3, v4

    goto :goto_0

    .line 247
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 160
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 167
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->invalidate()V

    .line 169
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 13
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 176
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    const/4 v8, 0x0

    move v6, v8

    .line 179
    .local v6, thumbWidth:I
    :goto_0
    iget v8, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mMaxWidth:I

    iget v9, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 180
    .local v7, trackWidth:I
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getMax()I

    move-result v3

    .line 181
    .local v3, max:I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    move v4, v8

    .line 183
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_4

    .line 184
    sub-int v8, v6, v7

    div-int/lit8 v2, v8, 0x2

    .line 185
    .local v2, gapForCenteringTrack:I
    if-eqz v5, :cond_0

    .line 186
    mul-int/lit8 v8, v2, -0x1

    invoke-direct {p0, p2, v5, v4, v8}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    .line 190
    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    iget v10, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v2, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    return-void

    .line 176
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbWidth:I
    .end local v7           #trackWidth:I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move v6, v8

    goto :goto_0

    .line 181
    .restart local v3       #max:I
    .restart local v6       #thumbWidth:I
    .restart local v7       #trackWidth:I
    :cond_3
    const/4 v8, 0x0

    move v4, v8

    goto :goto_1

    .line 195
    .restart local v4       #scale:F
    :cond_4
    if-eqz v0, :cond_5

    .line 197
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingBottom:I

    sub-int v11, p2, v11

    iget v12, p0, Lcom/miui/camera/ui/VerticalProgressBar;->mPaddingTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 200
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 201
    invoke-direct {p0, p2, v5, v4, v1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    iget-boolean v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mIsUserSeekable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 298
    goto :goto_0

    .line 272
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setPressed(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->onStartTrackingTouch()V

    .line 274
    invoke-direct {p0, p1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 278
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 279
    invoke-direct {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 283
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 284
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->onStopTrackingTouch()V

    .line 285
    invoke-virtual {p0, v1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setPressed(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 293
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->onStopTrackingTouch()V

    .line 294
    invoke-virtual {p0, v1}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setPressed(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 111
    if-gez p1, :cond_0

    neg-int v0, p1

    :goto_0
    iput v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    .line 112
    return-void

    :cond_0
    move v0, p1

    .line 111
    goto :goto_0
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar;->setMax(I)V

    .line 130
    iget v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_1
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumbOffset:I

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->invalidate()V

    .line 84
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 100
    iput p1, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumbOffset:I

    .line 101
    invoke-virtual {p0}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->invalidate()V

    .line 102
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/camera/ui/AbsVerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/camera/ui/VerticalProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
