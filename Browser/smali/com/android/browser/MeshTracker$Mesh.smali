.class Lcom/android/browser/MeshTracker$Mesh;
.super Ljava/lang/Object;
.source "MeshTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MeshTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mesh"
.end annotation


# instance fields
.field private mCols:I

.field private mCubics:[F

.field private mOrig:[F

.field private mPatch:Landroid/graphics/utils/BoundaryPatch;

.field private mRows:I

.field private mStretchX:F

.field private mStretchY:F

.field private mWhich:I


# direct methods
.method constructor <init>(III)V
    .locals 2
    .parameter "which"
    .parameter "rows"
    .parameter "cols"

    .prologue
    const/16 v1, 0x18

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/utils/BoundaryPatch;

    invoke-direct {v0}, Landroid/graphics/utils/BoundaryPatch;-><init>()V

    iput-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mPatch:Landroid/graphics/utils/BoundaryPatch;

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    .line 37
    iput p1, p0, Lcom/android/browser/MeshTracker$Mesh;->mWhich:I

    .line 38
    iput p2, p0, Lcom/android/browser/MeshTracker$Mesh;->mRows:I

    .line 39
    iput p3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCols:I

    .line 40
    return-void
.end method

.method private doit1(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v2, 0x3f40

    const/4 v6, 0x0

    .line 81
    const/high16 v1, 0x3f40

    .line 82
    .local v1, scale:F
    mul-float/2addr p1, v2

    .line 83
    mul-float/2addr p2, v2

    .line 86
    cmpg-float v2, p1, v6

    if-gez v2, :cond_0

    .line 87
    const/16 v0, 0xa

    .line 91
    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    iget-object v4, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    aget v4, v4, v5

    add-float/2addr v4, p1

    aput v4, v2, v3

    .line 92
    iget-object v2, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    add-float/2addr v4, p1

    aput v4, v2, v3

    .line 94
    cmpg-float v2, p2, v6

    if-gez v2, :cond_1

    .line 95
    const/4 v0, 0x1

    .line 99
    :goto_1
    iget-object v2, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    add-float/2addr v4, p2

    aput v4, v2, v3

    .line 100
    iget-object v2, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    add-float/2addr v4, p2

    aput v4, v2, v3

    .line 101
    return-void

    .line 89
    .end local v0           #index:I
    :cond_0
    const/4 v0, 0x4

    .restart local v0       #index:I
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x7

    goto :goto_1
.end method

.method private doit2(FF)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const v3, 0x3eb33333

    const/4 v8, 0x0

    const/high16 v7, 0x3e80

    .line 104
    const v2, 0x3eb33333

    .line 105
    .local v2, scale:F
    mul-float/2addr p1, v3

    .line 106
    mul-float/2addr p2, v3

    .line 107
    const/high16 v0, 0x3e80

    .line 110
    .local v0, cornerScale:F
    cmpg-float v3, p1, v8

    if-gez v3, :cond_0

    .line 111
    const/4 v1, 0x4

    .line 115
    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    add-float/2addr v5, p1

    aput v5, v3, v4

    .line 116
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    add-float/2addr v5, p1

    aput v5, v3, v4

    .line 118
    add-int/lit8 v1, v1, -0x1

    .line 119
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    mul-float v6, p1, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 120
    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v1, v3, 0xc

    .line 121
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    mul-float v6, p1, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 123
    cmpg-float v3, p2, v8

    if-gez v3, :cond_1

    .line 124
    const/4 v1, 0x7

    .line 128
    :goto_1
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    add-float/2addr v5, p2

    aput v5, v3, v4

    .line 129
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    add-float/2addr v5, p2

    aput v5, v3, v4

    .line 131
    add-int/lit8 v1, v1, -0x1

    .line 132
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-float v6, p2, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 133
    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v1, v3, 0xc

    .line 134
    iget-object v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-float v6, p2, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 135
    return-void

    .line 113
    .end local v1           #index:I
    :cond_0
    const/16 v1, 0xa

    .restart local v1       #index:I
    goto/16 :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private rebuildPatch()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mPatch:Landroid/graphics/utils/BoundaryPatch;

    iget-object v1, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/browser/MeshTracker$Mesh;->mRows:I

    iget v4, p0, Lcom/android/browser/MeshTracker$Mesh;->mCols:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/utils/BoundaryPatch;->setCubicBoundary([FIII)V

    .line 44
    return-void
.end method

.method private setSize(FF)V
    .locals 9
    .parameter "w"
    .parameter "h"

    .prologue
    const v8, 0x3f2aacda

    const v5, 0x3eaaa64c

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mCubics:[F

    .line 48
    .local v0, pts:[F
    mul-float v1, p1, v5

    .line 49
    .local v1, x1:F
    mul-float v3, p2, v5

    .line 50
    .local v3, y1:F
    mul-float v2, p1, v8

    .line 51
    .local v2, x2:F
    mul-float v4, p2, v8

    .line 52
    .local v4, y2:F
    aput v6, v0, v7

    const/4 v5, 0x1

    aput v6, v0, v5

    .line 53
    const/4 v5, 0x2

    aput v1, v0, v5

    const/4 v5, 0x3

    aput v6, v0, v5

    .line 54
    const/4 v5, 0x4

    aput v2, v0, v5

    const/4 v5, 0x5

    aput v6, v0, v5

    .line 56
    const/4 v5, 0x6

    aput p1, v0, v5

    const/4 v5, 0x7

    aput v6, v0, v5

    .line 57
    const/16 v5, 0x8

    aput p1, v0, v5

    const/16 v5, 0x9

    aput v3, v0, v5

    .line 58
    const/16 v5, 0xa

    aput p1, v0, v5

    const/16 v5, 0xb

    aput v4, v0, v5

    .line 60
    const/16 v5, 0xc

    aput p1, v0, v5

    const/16 v5, 0xd

    aput p2, v0, v5

    .line 61
    const/16 v5, 0xe

    aput v2, v0, v5

    const/16 v5, 0xf

    aput p2, v0, v5

    .line 62
    const/16 v5, 0x10

    aput v1, v0, v5

    const/16 v5, 0x11

    aput p2, v0, v5

    .line 64
    const/16 v5, 0x12

    aput v6, v0, v5

    const/16 v5, 0x13

    aput p2, v0, v5

    .line 65
    const/16 v5, 0x14

    aput v6, v0, v5

    const/16 v5, 0x15

    aput v4, v0, v5

    .line 66
    const/16 v5, 0x16

    aput v6, v0, v5

    const/16 v5, 0x17

    aput v3, v0, v5

    .line 68
    iget-object v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mOrig:[F

    const/16 v6, 0x18

    invoke-static {v0, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v5, p0, Lcom/android/browser/MeshTracker$Mesh;->mStretchX:F

    iget v6, p0, Lcom/android/browser/MeshTracker$Mesh;->mStretchY:F

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/MeshTracker$Mesh;->setStretch(FF)V

    .line 72
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mPatch:Landroid/graphics/utils/BoundaryPatch;

    invoke-virtual {v0, p1}, Landroid/graphics/utils/BoundaryPatch;->draw(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mPatch:Landroid/graphics/utils/BoundaryPatch;

    invoke-virtual {v0, p1}, Landroid/graphics/utils/BoundaryPatch;->setTexture(Landroid/graphics/Bitmap;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/MeshTracker$Mesh;->setSize(FF)V

    .line 77
    return-void
.end method

.method public setStretch(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/browser/MeshTracker$Mesh;->mStretchX:F

    .line 139
    iput p2, p0, Lcom/android/browser/MeshTracker$Mesh;->mStretchY:F

    .line 140
    iget v0, p0, Lcom/android/browser/MeshTracker$Mesh;->mWhich:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/android/browser/MeshTracker$Mesh;->rebuildPatch()V

    .line 149
    return-void

    .line 142
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/browser/MeshTracker$Mesh;->doit1(FF)V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/browser/MeshTracker$Mesh;->doit2(FF)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
