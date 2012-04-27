.class Lcom/nemustech/tiffany/widget/TFScroller;
.super Ljava/lang/Object;
.source "TFScroller.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCorrectionXDeceleration:F

.field private mCorrectionYDeceleration:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFScroller;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 116
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V
    .locals 6
    .parameter "context"
    .parameter "interpolator"
    .parameter "viscousDecelerateFactor"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffX:F

    .line 80
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffY:F

    .line 126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    .line 127
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4320

    mul-float v0, v2, v3

    .line 129
    .local v0, ppi:F
    cmpl-float v2, p3, v4

    if-lez v2, :cond_0

    move v1, p3

    .line 131
    .local v1, vdf:F
    :goto_0
    const v2, 0x43c0e9ba

    mul-float/2addr v2, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeceleration:F

    .line 135
    return-void

    .end local v1           #vdf:F
    :cond_0
    move v1, v5

    .line 129
    goto :goto_0
.end method

.method private viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 392
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    .line 393
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    .line 394
    neg-float v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p1, v1

    .line 400
    :goto_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    .line 401
    return p1

    .line 396
    :cond_0
    const v0, 0x3ebc5ab2

    .line 397
    .local v0, start:F
    sub-float v1, v3, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p1, v3, v1

    .line 398
    sub-float v1, v3, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 11

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x1

    .line 225
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    if-eqz v5, :cond_0

    .line 226
    const/4 v5, 0x0

    .line 280
    :goto_0
    return v5

    .line 229
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-int v2, v5

    .line 231
    .local v2, timePassed:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDuration:I

    if-ge v2, v5, :cond_3

    .line 232
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMode:I

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v9

    .line 280
    goto :goto_0

    .line 234
    :pswitch_0
    int-to-float v5, v2

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDurationReciprocal:F

    mul-float v4, v5, v6

    .line 236
    .local v4, x:F
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_2

    .line 237
    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFScroller;->viscousFluid(F)F

    move-result v4

    .line 241
    :goto_2
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartX:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeltaX:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    .line 242
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartY:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeltaY:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    .line 243
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    if-ne v5, v6, :cond_1

    .line 244
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    goto :goto_1

    .line 239
    :cond_2
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    goto :goto_2

    .line 248
    .end local v4           #x:F
    :pswitch_1
    int-to-float v5, v2

    const/high16 v6, 0x447a

    div-float v3, v5, v6

    .line 249
    .local v3, timePassedSeconds:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mVelocity:F

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeceleration:F

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCorrectionXDeceleration:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    div-float/2addr v6, v10

    sub-float v0, v5, v6

    .line 253
    .local v0, distanceX:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartX:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffX:F

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    .line 256
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMaxX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    .line 257
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMinX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    .line 259
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mVelocity:F

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeceleration:F

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCorrectionYDeceleration:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    div-float/2addr v6, v10

    sub-float v1, v5, v6

    .line 263
    .local v1, distanceY:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartY:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffY:F

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    .line 266
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMaxY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    .line 267
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMinY:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    .line 269
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    if-ne v5, v6, :cond_1

    .line 270
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    goto/16 :goto_1

    .line 276
    .end local v0           #distanceX:F
    .end local v1           #distanceY:F
    .end local v3           #timePassedSeconds:F
    :cond_3
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    .line 277
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    .line 278
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    goto/16 :goto_1

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 354
    const/4 v2, 0x1

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMode:I

    .line 355
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    .line 357
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 359
    .local v1, velocity:F
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mVelocity:F

    .line 360
    const/high16 v2, 0x447a

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDuration:I

    .line 362
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartTime:J

    .line 363
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartX:I

    .line 364
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartY:I

    .line 366
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f80

    :goto_0
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffX:F

    .line 367
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    :goto_1
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffY:F

    .line 369
    mul-float v2, v1, v1

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 371
    .local v0, totalDistance:I
    iput p5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMinX:I

    .line 372
    iput p6, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMaxX:I

    .line 373
    iput p7, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMinY:I

    .line 374
    iput p8, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMaxY:I

    .line 377
    int-to-float v2, v0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    .line 379
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    .line 380
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    .line 382
    int-to-float v2, v0

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    .line 384
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    .line 385
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    .line 387
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCorrectionXDeceleration:F

    .line 388
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCorrectionYDeceleration:F

    .line 389
    return-void

    .line 366
    .end local v0           #totalDistance:I
    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    .line 367
    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mCurrY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 3
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 315
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mMode:I

    .line 316
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinished:Z

    .line 317
    iput p5, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDuration:I

    .line 318
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartTime:J

    .line 319
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartX:I

    .line 320
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartY:I

    .line 321
    add-int v0, p1, p3

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalX:I

    .line 322
    add-int v0, p2, p4

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mFinalY:I

    .line 323
    int-to-float v0, p3

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeltaX:F

    .line 324
    int-to-float v0, p4

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDeltaY:F

    .line 325
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mDurationReciprocal:F

    .line 327
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mViscousFluidScale:F

    .line 329
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mViscousFluidNormalize:F

    .line 330
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mViscousFluidNormalize:F

    .line 331
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 438
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
