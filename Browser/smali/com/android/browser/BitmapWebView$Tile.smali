.class Lcom/android/browser/BitmapWebView$Tile;
.super Ljava/lang/Object;
.source "BitmapWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tile"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mBoundary:Landroid/graphics/Rect;

.field mPartialRect:Landroid/graphics/Rect;

.field mTexID:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    sget-object v0, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView$Tile;->mTexID:I

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    .line 269
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isPartial()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/browser/BitmapWebView$Tile;->mPartialRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IILandroid/graphics/Rect;I)V
    .locals 1
    .parameter "aX"
    .parameter "aY"
    .parameter "boundary"
    .parameter "texID"

    .prologue
    .line 273
    iput p1, p0, Lcom/android/browser/BitmapWebView$Tile;->x:I

    .line 274
    iput p2, p0, Lcom/android/browser/BitmapWebView$Tile;->y:I

    .line 276
    iput p4, p0, Lcom/android/browser/BitmapWebView$Tile;->mTexID:I

    .line 278
    iget-object v0, p0, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    return-void
.end method

.method public setPartialRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "partialRect"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/browser/BitmapWebView$Tile;->mPartialRect:Landroid/graphics/Rect;

    .line 289
    return-void
.end method
