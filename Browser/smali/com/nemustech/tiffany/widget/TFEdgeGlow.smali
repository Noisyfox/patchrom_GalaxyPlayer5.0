.class public Lcom/nemustech/tiffany/widget/TFEdgeGlow;
.super Ljava/lang/Object;
.source "TFEdgeGlow.java"


# instance fields
.field private mBlockDecay:Z

.field private final mBounceInterpolator:Lcom/nemustech/tiffany/widget/TFBounceInterpolator;

.field private mDuration:F

.field private final mEdge:Landroid/graphics/drawable/Drawable;

.field private mEdgeAlpha:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Landroid/graphics/drawable/Drawable;

.field private mGlowAlpha:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDrag:Z

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "edge"
    .parameter "glow"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    .line 122
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBlockDecay:Z

    .line 123
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mIsDrag:Z

    .line 126
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    .line 129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    new-instance v0, Lcom/nemustech/tiffany/widget/TFBounceInterpolator;

    invoke-direct {v0}, Lcom/nemustech/tiffany/widget/TFBounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBounceInterpolator:Lcom/nemustech/tiffany/widget/TFBounceInterpolator;

    .line 131
    return-void
.end method

.method private updateBounce()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 375
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 376
    .local v3, time:J
    iget-wide v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 378
    .local v2, t:F
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBounceInterpolator:Lcom/nemustech/tiffany/widget/TFBounceInterpolator;

    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mIsDrag:Z

    invoke-virtual {v5, v6, v2}, Lcom/nemustech/tiffany/widget/TFBounceInterpolator;->compute(ZF)F

    move-result v1

    .line 381
    .local v1, interp:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleY:F

    .line 383
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYStart:F

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    .line 385
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 386
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    const/4 v5, 0x3

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    .line 389
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mStartTime:J

    .line 390
    const/high16 v5, 0x43c8

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mDuration:F

    .line 393
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleY:F

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    .line 395
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYStart:F

    .line 399
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYFinish:F

    .line 401
    iput v8, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    goto :goto_0

    .line 404
    :pswitch_1
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBlockDecay:Z

    if-nez v5, :cond_0

    .line 409
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v5, v9, v5

    move v0, v5

    .line 412
    .local v0, factor:F
    :goto_1
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleY:F

    .line 415
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    goto :goto_0

    .line 409
    .end local v0           #factor:F
    :cond_1
    const v5, 0x7f7fffff

    move v0, v5

    goto :goto_1

    .line 418
    :pswitch_2
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public blockDecay()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBlockDecay:Z

    .line 149
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 288
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->updateBounce()V

    .line 290
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 291
    .local v1, edgeHeight:I
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 293
    .local v2, glowHeight:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mWidth:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 295
    .local v0, distScale:F
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowAlpha:F

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x437f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 298
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mWidth:I

    neg-int v4, v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mWidth:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v6, v2

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v0

    const v7, 0x3f19999a

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x4080

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    move v3, v9

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    .line 144
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBlockDecay:Z

    .line 145
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPull(ZF)V
    .locals 11
    .parameter "isDrag"
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4080

    const/high16 v8, 0x40a0

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 157
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 158
    .local v2, now:J
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 208
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    if-eq v4, v10, :cond_1

    .line 162
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    .line 165
    :cond_1
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    .line 167
    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mStartTime:J

    .line 168
    if-eqz p1, :cond_4

    .line 169
    const/high16 v4, 0x4396

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mDuration:F

    .line 173
    :goto_1
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mPullDistance:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mPullDistance:F

    .line 174
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 176
    .local v0, distance:F
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeAlpha:F

    .line 177
    const/high16 v4, 0x3f00

    mul-float v5, v0, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleY:F

    .line 180
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowAlpha:F

    .line 184
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 185
    .local v1, glowChange:F
    cmpl-float v4, p2, v6

    if-lez v4, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mPullDistance:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 186
    neg-float v1, v1

    .line 188
    :cond_2
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mPullDistance:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    .line 189
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    .line 193
    :cond_3
    if-eqz p1, :cond_5

    .line 194
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    mul-float v5, v1, v8

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYStart:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    .line 203
    :goto_2
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleY:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYFinish:F

    .line 205
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    .line 207
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mIsDrag:Z

    goto :goto_0

    .line 171
    .end local v0           #distance:F
    .end local v1           #glowChange:F
    :cond_4
    const/high16 v4, 0x4416

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mDuration:F

    goto :goto_1

    .line 197
    .restart local v0       #distance:F
    .restart local v1       #glowChange:F
    :cond_5
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    mul-float v5, v1, v8

    add-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    .line 199
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYStart:F

    goto :goto_2
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mPullDistance:F

    .line 216
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mState:I

    .line 222
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleY:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYStart:F

    .line 224
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleY:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYStart:F

    .line 227
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mEdgeScaleYFinish:F

    .line 229
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mGlowScaleYFinish:F

    .line 231
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mStartTime:J

    .line 232
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mDuration:F

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mBlockDecay:Z

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 134
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mWidth:I

    .line 135
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFEdgeGlow;->mHeight:I

    .line 136
    return-void
.end method
