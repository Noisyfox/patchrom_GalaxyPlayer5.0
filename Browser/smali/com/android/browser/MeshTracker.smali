.class Lcom/android/browser/MeshTracker;
.super Landroid/webkit/WebView$DragTracker;
.source "MeshTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/MeshTracker$Mesh;
    }
.end annotation


# instance fields
.field private mBGPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMesh:Lcom/android/browser/MeshTracker$Mesh;

.field private mWhich:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/webkit/WebView$DragTracker;-><init>()V

    .line 162
    iput p1, p0, Lcom/android/browser/MeshTracker;->mWhich:I

    .line 163
    return-void
.end method


# virtual methods
.method public onBitmapChange(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/browser/MeshTracker;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    iget-object v0, p0, Lcom/android/browser/MeshTracker;->mMesh:Lcom/android/browser/MeshTracker$Mesh;

    invoke-virtual {v0, p1}, Lcom/android/browser/MeshTracker$Mesh;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 188
    iget v0, p0, Lcom/android/browser/MeshTracker;->mWhich:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/browser/MeshTracker;->mBGPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/browser/MeshTracker;->mBGPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/browser/MeshTracker;->mMesh:Lcom/android/browser/MeshTracker$Mesh;

    invoke-virtual {v0, p1}, Lcom/android/browser/MeshTracker$Mesh;->draw(Landroid/graphics/Canvas;)V

    .line 196
    return-void

    .line 192
    :cond_1
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public onStartDrag(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v2, 0x10

    .line 170
    new-instance v0, Lcom/android/browser/MeshTracker$Mesh;

    iget v1, p0, Lcom/android/browser/MeshTracker;->mWhich:I

    invoke-direct {v0, v1, v2, v2}, Lcom/android/browser/MeshTracker$Mesh;-><init>(III)V

    iput-object v0, p0, Lcom/android/browser/MeshTracker;->mMesh:Lcom/android/browser/MeshTracker$Mesh;

    .line 171
    return-void
.end method

.method public onStopDrag()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/MeshTracker;->mMesh:Lcom/android/browser/MeshTracker$Mesh;

    .line 185
    return-void
.end method

.method public onStretchChange(FF)Z
    .locals 3
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/browser/MeshTracker;->mMesh:Lcom/android/browser/MeshTracker$Mesh;

    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/MeshTracker$Mesh;->setStretch(FF)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method
