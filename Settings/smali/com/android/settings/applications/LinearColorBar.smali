.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLineWidth:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LinearColorBar;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 12

    .prologue
    const v11, 0xa0a0a0

    const/4 v3, 0x2

    const v10, -0x5f5f60

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .local v8, off:I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    sub-int v2, v8, v3

    int-to-float v4, v2

    const v5, 0xa0c0a0

    const v6, -0x5f3f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    sub-int v2, v8, v3

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v5, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/LinearColorBar;->getWidth()I

    move-result v19

    .local v19, width:I
    const/4 v12, 0x0

    .local v12, left:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    move v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v16, v12, v3

    .local v16, right:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    move v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v17, v16, v3

    .local v17, right2:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    move v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v18, v17, v3

    .local v18, right3:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    move v3, v0

    if-eqz v3, :cond_7

    move/from16 v10, v17

    .local v10, indicatorLeft:I
    move/from16 v11, v18

    .local v11, indicatorRight:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    move v3, v0

    if-ne v3, v10, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    move v3, v0

    if-eq v3, v11, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    if-ge v10, v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    iget v15, v3, Landroid/graphics/Rect;->top:I

    .local v15, midTopY:I
    const/4 v14, 0x0

    .local v14, midBottomY:I
    const/16 v20, 0x2

    .local v20, xoff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    int-to-float v4, v10

    const/4 v5, 0x0

    const/high16 v6, -0x4000

    int-to-float v7, v15

    const/high16 v8, -0x4000

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    add-int/lit8 v4, v19, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    add-int/lit8 v4, v19, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v15

    int-to-float v6, v11

    const/4 v7, 0x0

    int-to-float v8, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    move v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    add-float v13, v3, v4

    .local v13, lineOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    const/high16 v4, -0x4000

    add-float/2addr v4, v13

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    const/high16 v4, -0x4000

    add-float/2addr v4, v13

    int-to-float v5, v15

    int-to-float v6, v10

    add-float/2addr v6, v13

    const/4 v7, 0x0

    int-to-float v8, v10

    add-float/2addr v8, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    add-int/lit8 v4, v19, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v13

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    add-int/lit8 v4, v19, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v13

    int-to-float v5, v15

    int-to-float v6, v11

    sub-float/2addr v6, v13

    const/4 v7, 0x0

    int-to-float v8, v11

    sub-float/2addr v8, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .end local v13           #lineOffset:F
    .end local v14           #midBottomY:I
    .end local v15           #midTopY:I
    .end local v20           #xoff:I
    :cond_1
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    iput v12, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    move/from16 v0, v16

    move-object v1, v3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const v4, -0x5f5f60

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v3, v16, v12

    sub-int v19, v19, v3

    move/from16 v12, v16

    :cond_4
    move/from16 v16, v17

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    iput v12, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    move/from16 v0, v16

    move-object v1, v3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const v4, -0x5f5f60

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v3, v16, v12

    sub-int v19, v19, v3

    move/from16 v12, v16

    :cond_5
    add-int v16, v12, v19

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    iput v12, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    move/from16 v0, v16

    move-object v1, v3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const v4, -0x5f3f60

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_6
    return-void

    .end local v10           #indicatorLeft:I
    .end local v11           #indicatorRight:I
    :cond_7
    move/from16 v10, v16

    .restart local v10       #indicatorLeft:I
    move/from16 v11, v17

    .restart local v11       #indicatorRight:I
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .parameter "red"
    .parameter "yellow"
    .parameter "green"

    .prologue
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1
    .parameter "showingGreen"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    invoke-virtual {p0}, Lcom/android/settings/applications/LinearColorBar;->invalidate()V

    :cond_0
    return-void
.end method
