.class public Lcom/miui/camera/ui/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# instance fields
.field protected mAnimationEndTime:J

.field protected mAnimationStartTime:J

.field protected mClockwise:Z

.field protected mCurrentDegree:I

.field protected mStartDegree:I

.field protected mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 22
    iput v0, p0, Lcom/miui/camera/ui/RotateImageView;->mStartDegree:I

    .line 23
    iput v0, p0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    .line 25
    iput-boolean v0, p0, Lcom/miui/camera/ui/RotateImageView;->mClockwise:Z

    .line 27
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 28
    iput-wide v1, p0, Lcom/miui/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 60
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 63
    .local v4, bounds:Landroid/graphics/Rect;
    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    .line 64
    .local v16, w:I
    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 66
    .local v8, h:I
    if-eqz v16, :cond_0

    if-eqz v8, :cond_0

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 69
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    .line 70
    .local v13, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v13, v18

    if-gez v18, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v6, v0

    .line 72
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move/from16 v19, v6

    :goto_1
    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 74
    .local v5, degree:I
    if-ltz v5, :cond_4

    move v0, v5

    rem-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v5, v18

    .line 75
    :goto_2
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->invalidate()V

    .line 82
    .end local v5           #degree:I
    .end local v6           #deltaTime:I
    .end local v13           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 83
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getPaddingTop()I

    move-result v15

    .line 84
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getPaddingRight()I

    move-result v11

    .line 85
    .local v11, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 86
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getWidth()I

    move-result v18

    sub-int v18, v18, v10

    sub-int v17, v18, v11

    .line 87
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/RotateImageView;->getHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v9, v18, v3

    .line 89
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v12

    .line 90
    .local v12, saveCount:I
    div-int/lit8 v18, v17, 0x2

    add-int v18, v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 92
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v8

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 72
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v11           #right:I
    .end local v12           #saveCount:I
    .end local v15           #top:I
    .end local v17           #width:I
    .restart local v6       #deltaTime:I
    .restart local v13       #time:J
    :cond_3
    move v0, v6

    neg-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    .line 74
    .restart local v5       #degree:I
    :cond_4
    move v0, v5

    rem-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x168

    move/from16 v18, v0

    move/from16 v5, v18

    goto/16 :goto_2

    .line 78
    .end local v5           #degree:I
    .end local v6           #deltaTime:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 36
    if-ltz p1, :cond_0

    rem-int/lit16 v1, p1, 0x168

    move p1, v1

    .line 37
    :goto_0
    iget v1, p0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 54
    :goto_1
    return-void

    .line 36
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 v1, v1, 0x168

    move p1, v1

    goto :goto_0

    .line 39
    :cond_1
    iput p1, p0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    .line 40
    iget v1, p0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/miui/camera/ui/RotateImageView;->mStartDegree:I

    .line 41
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/camera/ui/RotateImageView;->mAnimationStartTime:J

    .line 43
    iget v1, p0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 44
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 48
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    const/16 v1, 0x168

    sub-int v1, v0, v1

    move v0, v1

    .line 50
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/miui/camera/ui/RotateImageView;->mClockwise:Z

    .line 51
    iget-wide v1, p0, Lcom/miui/camera/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x168

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/miui/camera/ui/RotateImageView;->mAnimationEndTime:J

    .line 53
    invoke-virtual {p0}, Lcom/miui/camera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 44
    :cond_3
    add-int/lit16 v1, v0, 0x168

    move v0, v1

    goto :goto_2

    .line 50
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method
