.class public Lcom/miui/camera/ui/ReferenceLine;
.super Landroid/view/View;
.source "ReferenceLine.java"


# instance fields
.field private mLineType:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    .line 22
    iget-object v0, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v0, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/camera/ui/ReferenceLine;->mLineType:I

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const-wide v11, 0x3fe3d70a3d70a3d7L

    const-wide v6, 0x3fd851eb851eb852L

    const/16 v10, 0x14

    const/high16 v1, 0x41a0

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget v0, p0, Lcom/miui/camera/ui/ReferenceLine;->mLineType:I

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/miui/camera/ui/ReferenceLine;->getWidth()I

    move-result v9

    .line 44
    .local v9, width:I
    invoke-virtual {p0}, Lcom/miui/camera/ui/ReferenceLine;->getHeight()I

    move-result v8

    .line 47
    .local v8, height:I
    iget v0, p0, Lcom/miui/camera/ui/ReferenceLine;->mLineType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 48
    div-int/lit8 v0, v8, 0x3

    int-to-float v2, v0

    sub-int v0, v9, v10

    int-to-float v3, v0

    div-int/lit8 v0, v8, 0x3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    mul-int/lit8 v0, v8, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v2, v0

    sub-int v0, v9, v10

    int-to-float v3, v0

    mul-int/lit8 v0, v8, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    div-int/lit8 v0, v9, 0x3

    int-to-float v3, v0

    div-int/lit8 v0, v9, 0x3

    int-to-float v5, v0

    sub-int v0, v8, v10

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    mul-int/lit8 v0, v9, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v3, v0

    mul-int/lit8 v0, v9, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    sub-int v0, v8, v10

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 52
    :cond_2
    iget v0, p0, Lcom/miui/camera/ui/ReferenceLine;->mLineType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 53
    int-to-double v2, v8

    mul-double/2addr v2, v6

    double-to-int v0, v2

    int-to-float v2, v0

    sub-int v0, v9, v10

    int-to-float v3, v0

    int-to-double v4, v8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    int-to-double v2, v8

    mul-double/2addr v2, v11

    double-to-int v0, v2

    int-to-float v2, v0

    sub-int v0, v9, v10

    int-to-float v3, v0

    int-to-double v4, v8

    mul-double/2addr v4, v11

    double-to-int v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    int-to-double v2, v9

    mul-double/2addr v2, v6

    double-to-int v0, v2

    int-to-float v3, v0

    int-to-double v4, v9

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v5, v0

    sub-int v0, v8, v10

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    int-to-double v2, v9

    mul-double/2addr v2, v11

    double-to-int v0, v2

    int-to-float v3, v0

    int-to-double v4, v9

    mul-double/2addr v4, v11

    double-to-int v0, v4

    int-to-float v5, v0

    sub-int v0, v8, v10

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/camera/ui/ReferenceLine;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setLineType(I)V
    .locals 1
    .parameter "lineType"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/camera/ui/ReferenceLine;->mLineType:I

    if-eq p1, v0, :cond_0

    .line 31
    iput p1, p0, Lcom/miui/camera/ui/ReferenceLine;->mLineType:I

    .line 32
    invoke-virtual {p0}, Lcom/miui/camera/ui/ReferenceLine;->invalidate()V

    .line 34
    :cond_0
    return-void
.end method
