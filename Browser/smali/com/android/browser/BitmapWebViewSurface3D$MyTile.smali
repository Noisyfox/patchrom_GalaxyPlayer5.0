.class Lcom/android/browser/BitmapWebViewSurface3D$MyTile;
.super Lcom/android/browser/BitmapWebView$Tile;
.source "BitmapWebViewSurface3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebViewSurface3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$MyTile;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Lcom/android/browser/BitmapWebView$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method public setPartialRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "partialRect"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/browser/BitmapWebView$Tile;->setPartialRect(Landroid/graphics/Rect;)V

    .line 176
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$MyTile;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBmpPartialRects:[[Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/browser/BitmapWebView$Tile;->y:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView$Tile;->x:I

    aput-object p1, v0, v1

    .line 177
    return-void
.end method
