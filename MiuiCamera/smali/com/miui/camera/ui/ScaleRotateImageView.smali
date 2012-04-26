.class public Lcom/miui/camera/ui/ScaleRotateImageView;
.super Lcom/miui/camera/ui/RotateImageView;
.source "ScaleRotateImageView.java"


# instance fields
.field private mScaleRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/camera/ui/ScaleRotateImageView;->mScaleRatio:F

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 32
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 35
    .local v4, bounds:Landroid/graphics/Rect;
    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v17, v19, v20

    .line 36
    .local v17, w:I
    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object v0, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 38
    .local v8, h:I
    if-eqz v17, :cond_0

    if-eqz v8, :cond_0

    .line 40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 41
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    .line 42
    .local v14, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/camera/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v14, v19

    if-gez v19, :cond_6

    .line 43
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/camera/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move v6, v0

    .line 44
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/camera/ui/RotateImageView;->mClockwise:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move/from16 v20, v6

    :goto_1
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x168

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    add-int v5, v19, v20

    .line 46
    .local v5, degree:I
    if-ltz v5, :cond_5

    move v0, v5

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v5, v19

    .line 47
    :goto_2
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->invalidate()V

    .line 54
    .end local v5           #degree:I
    .end local v6           #deltaTime:I
    .end local v14           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getPaddingLeft()I

    move-result v10

    .line 55
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getPaddingTop()I

    move-result v16

    .line 56
    .local v16, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getPaddingRight()I

    move-result v11

    .line 57
    .local v11, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getPaddingBottom()I

    move-result v3

    .line 58
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getWidth()I

    move-result v19

    sub-int v19, v19, v10

    sub-int v18, v19, v11

    .line 59
    .local v18, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/camera/ui/ScaleRotateImageView;->getHeight()I

    move-result v19

    sub-int v19, v19, v16

    sub-int v9, v19, v3

    .line 61
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v12

    .line 62
    .local v12, saveCount:I
    div-int/lit8 v19, v18, 0x2

    add-int v19, v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 64
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    div-int/lit8 v13, v19, 0x1

    .line 67
    .local v13, steps:I
    const/high16 v19, 0x3f80

    const v20, 0x3c03126f

    move v0, v13

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/camera/ui/ScaleRotateImageView;->mScaleRatio:F

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mStartDegree:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 69
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/ScaleRotateImageView;->mScaleRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/ScaleRotateImageView;->mScaleRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 70
    :cond_3
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v8

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 44
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v11           #right:I
    .end local v12           #saveCount:I
    .end local v13           #steps:I
    .end local v16           #top:I
    .end local v18           #width:I
    .restart local v6       #deltaTime:I
    .restart local v14       #time:J
    :cond_4
    move v0, v6

    neg-int v0, v0

    move/from16 v20, v0

    goto/16 :goto_1

    .line 46
    .restart local v5       #degree:I
    :cond_5
    move v0, v5

    rem-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v5, v19

    goto/16 :goto_2

    .line 50
    .end local v5           #degree:I
    .end local v6           #deltaTime:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/camera/ui/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/camera/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method
