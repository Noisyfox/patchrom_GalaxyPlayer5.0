.class public Lcom/miui/camera/ui/ScreenShutterIndicator;
.super Landroid/view/View;
.source "ScreenShutterIndicator.java"


# instance fields
.field private mMargins:[I

.field private mScreenSnap:Z

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mScreenSnap:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/16 v12, 0x46

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    iget-boolean v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mScreenSnap:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/miui/camera/ui/ScreenShutterIndicator;->getWidth()I

    move-result v7

    .line 49
    .local v7, width:I
    invoke-virtual {p0}, Lcom/miui/camera/ui/ScreenShutterIndicator;->getHeight()I

    move-result v6

    .line 52
    .local v6, height:I
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v9

    sub-int/2addr v0, v8

    int-to-float v1, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v8

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v10

    sub-int v0, v7, v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v9

    int-to-float v1, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v8

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v9

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v8

    add-int/lit8 v0, v0, 0x46

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v10

    sub-int v0, v7, v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v8

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v10

    sub-int v0, v7, v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v8

    add-int/lit8 v0, v0, 0x46

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v9

    sub-int/2addr v0, v8

    int-to-float v1, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v11

    sub-int v0, v6, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v10

    sub-int v0, v7, v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v11

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v9

    int-to-float v1, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v11

    sub-int v0, v6, v0

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v9

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v11

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v10

    sub-int v0, v7, v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v11

    sub-int v0, v6, v0

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v10

    sub-int v0, v7, v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v0, v0, v11

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setMargins([I)V
    .locals 4
    .parameter "margins"

    .prologue
    const/4 v3, 0x4

    .line 35
    array-length v1, p1

    if-eq v1, v3, :cond_0

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mMargins:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/miui/camera/ui/ScreenShutterIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setScreenSnap(Z)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/camera/ui/ScreenShutterIndicator;->mScreenSnap:Z

    .line 31
    invoke-virtual {p0}, Lcom/miui/camera/ui/ScreenShutterIndicator;->invalidate()V

    .line 32
    return-void
.end method
