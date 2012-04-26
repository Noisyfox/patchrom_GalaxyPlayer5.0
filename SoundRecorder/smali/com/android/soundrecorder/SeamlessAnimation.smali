.class public Lcom/android/soundrecorder/SeamlessAnimation;
.super Landroid/view/animation/Animation;
.source "SeamlessAnimation.java"


# instance fields
.field private mCancelled:Z

.field private mDegree:F

.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FFIFIF)V
    .locals 1
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mFromDegrees:F

    .line 32
    iput p2, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mToDegrees:F

    .line 33
    iput p3, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotXType:I

    .line 34
    iput p4, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotXValue:F

    .line 35
    iput p5, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotYType:I

    .line 36
    iput p6, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotYValue:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mCancelled:Z

    .line 38
    iput p1, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mDegree:F

    .line 39
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mCancelled:Z

    if-nez v0, :cond_0

    .line 60
    iget v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mToDegrees:F

    iget v2, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mFromDegrees:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mDegree:F

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mDegree:F

    iget v2, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotX:F

    iget v3, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotY:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/view/animation/Animation;->cancel()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mCancelled:Z

    .line 55
    return-void
.end method

.method public getDegree()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mDegree:F

    return v0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 43
    iget v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotXType:I

    iget v1, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/android/soundrecorder/SeamlessAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotX:F

    .line 44
    iget v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotYType:I

    iget v1, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/android/soundrecorder/SeamlessAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SeamlessAnimation;->mPivotY:F

    .line 45
    return-void
.end method
