.class public Lcom/miui/camera/ui/RotateTextView;
.super Landroid/widget/TextView;
.source "RotateTextView.java"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 17
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mStartDegree:I

    .line 18
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    .line 20
    iput-boolean v0, p0, Lcom/miui/camera/ui/RotateTextView;->mClockwise:Z

    .line 22
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 23
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 17
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mStartDegree:I

    .line 18
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    .line 20
    iput-boolean v0, p0, Lcom/miui/camera/ui/RotateTextView;->mClockwise:Z

    .line 22
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 23
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 17
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mStartDegree:I

    .line 18
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    .line 20
    iput-boolean v0, p0, Lcom/miui/camera/ui/RotateTextView;->mClockwise:Z

    .line 22
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 23
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 61
    iget v6, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    iget v7, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    if-eq v6, v7, :cond_0

    .line 62
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 63
    .local v3, time:J
    iget-wide v6, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationEndTime:J

    cmp-long v6, v3, v6

    if-gez v6, :cond_3

    .line 64
    iget-wide v6, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationStartTime:J

    sub-long v6, v3, v6

    long-to-int v1, v6

    .line 65
    .local v1, deltaTime:I
    iget v6, p0, Lcom/miui/camera/ui/RotateTextView;->mStartDegree:I

    iget-boolean v7, p0, Lcom/miui/camera/ui/RotateTextView;->mClockwise:Z

    if-eqz v7, :cond_1

    move v7, v1

    :goto_0
    mul-int/lit16 v7, v7, 0x168

    div-int/lit16 v7, v7, 0x3e8

    add-int v0, v6, v7

    .line 67
    .local v0, degree:I
    if-ltz v0, :cond_2

    rem-int/lit16 v6, v0, 0x168

    move v0, v6

    .line 68
    :goto_1
    iput v0, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    .line 69
    invoke-virtual {p0}, Lcom/miui/camera/ui/RotateTextView;->invalidate()V

    .line 75
    .end local v0           #degree:I
    .end local v1           #deltaTime:I
    .end local v3           #time:J
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    invoke-virtual {p0}, Lcom/miui/camera/ui/RotateTextView;->getWidth()I

    move-result v5

    .line 78
    .local v5, width:I
    invoke-virtual {p0}, Lcom/miui/camera/ui/RotateTextView;->getHeight()I

    move-result v2

    .line 79
    .local v2, height:I
    iget v6, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    neg-int v6, v6

    int-to-float v6, v6

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 80
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    return-void

    .line 65
    .end local v2           #height:I
    .end local v5           #width:I
    .restart local v1       #deltaTime:I
    .restart local v3       #time:J
    :cond_1
    neg-int v7, v1

    goto :goto_0

    .line 67
    .restart local v0       #degree:I
    :cond_2
    rem-int/lit16 v6, v0, 0x168

    add-int/lit16 v6, v6, 0x168

    move v0, v6

    goto :goto_1

    .line 71
    .end local v0           #degree:I
    .end local v1           #deltaTime:I
    :cond_3
    iget v6, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    iput v6, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    goto :goto_2
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 39
    if-ltz p1, :cond_0

    rem-int/lit16 v1, p1, 0x168

    move p1, v1

    .line 40
    :goto_0
    iget v1, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 57
    :goto_1
    return-void

    .line 39
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 v1, v1, 0x168

    move p1, v1

    goto :goto_0

    .line 42
    :cond_1
    iput p1, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    .line 43
    iget v1, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    iput v1, p0, Lcom/miui/camera/ui/RotateTextView;->mStartDegree:I

    .line 44
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationStartTime:J

    .line 46
    iget v1, p0, Lcom/miui/camera/ui/RotateTextView;->mTargetDegree:I

    iget v2, p0, Lcom/miui/camera/ui/RotateTextView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 47
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 51
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    const/16 v1, 0x168

    sub-int v1, v0, v1

    move v0, v1

    .line 53
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/miui/camera/ui/RotateTextView;->mClockwise:Z

    .line 54
    iget-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x168

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/miui/camera/ui/RotateTextView;->mAnimationEndTime:J

    .line 56
    invoke-virtual {p0}, Lcom/miui/camera/ui/RotateTextView;->invalidate()V

    goto :goto_1

    .line 47
    :cond_3
    add-int/lit16 v1, v0, 0x168

    move v0, v1

    goto :goto_2

    .line 53
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method
