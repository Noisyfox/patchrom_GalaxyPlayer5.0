.class public Lcom/android/soundrecorder/WheelImageView;
.super Landroid/widget/ImageView;
.source "WheelImageView.java"


# instance fields
.field mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    .line 27
    return-void
.end method

.method private initAnimation(JZI)V
    .locals 8
    .parameter "duration"
    .parameter "isForward"
    .parameter "repeatCount"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x43b4

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 30
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 33
    .local v7, lir:Landroid/view/animation/LinearInterpolator;
    if-eqz p3, :cond_2

    .line 34
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SeamlessAnimation;->getRepeatCount()I

    move-result v0

    if-eq v0, v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 36
    .local v1, from:F
    :goto_0
    add-float v2, v1, v5

    .line 43
    .local v2, to:F
    :goto_1
    if-eqz p3, :cond_5

    .line 44
    new-instance v0, Lcom/android/soundrecorder/SeamlessAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/soundrecorder/SeamlessAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    .line 50
    :goto_2
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/soundrecorder/SeamlessAnimation;->setDuration(J)V

    .line 51
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0, v3}, Lcom/android/soundrecorder/SeamlessAnimation;->setRepeatMode(I)V

    .line 52
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0, p4}, Lcom/android/soundrecorder/SeamlessAnimation;->setRepeatCount(I)V

    .line 53
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0, v7}, Lcom/android/soundrecorder/SeamlessAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    return-void

    .line 34
    .end local v1           #from:F
    .end local v2           #to:F
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SeamlessAnimation;->getDegree()F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SeamlessAnimation;->getRepeatCount()I

    move-result v0

    if-eq v0, v6, :cond_4

    :cond_3
    move v1, v5

    .line 40
    .restart local v1       #from:F
    :goto_3
    sub-float v2, v1, v5

    .restart local v2       #to:F
    goto :goto_1

    .line 38
    .end local v1           #from:F
    .end local v2           #to:F
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SeamlessAnimation;->getDegree()F

    move-result v0

    move v1, v0

    goto :goto_3

    .line 47
    .restart local v1       #from:F
    .restart local v2       #to:F
    :cond_5
    new-instance v0, Lcom/android/soundrecorder/SeamlessAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/soundrecorder/SeamlessAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    goto :goto_2
.end method


# virtual methods
.method public startAnimation(JZ)V
    .locals 1
    .parameter "duration"
    .parameter "isForward"

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 58
    return-void
.end method

.method public startAnimation(JZI)V
    .locals 1
    .parameter "duration"
    .parameter "isForward"
    .parameter "repeatCount"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/soundrecorder/WheelImageView;->initAnimation(JZI)V

    .line 62
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SeamlessAnimation;->cancel()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/WheelImageView;->mAnimation:Lcom/android/soundrecorder/SeamlessAnimation;

    .line 69
    invoke-virtual {p0}, Lcom/android/soundrecorder/WheelImageView;->clearAnimation()V

    .line 71
    :cond_0
    return-void
.end method
