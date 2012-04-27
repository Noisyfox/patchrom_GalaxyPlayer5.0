.class public interface abstract Lcom/android/browser/BitmapWebView$Surface;
.super Ljava/lang/Object;
.source "BitmapWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Surface"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract draw(FFF)V
.end method

.method public abstract getTile(IILandroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;
.end method

.method public abstract height()I
.end method

.method public abstract onPaused()V
.end method

.method public abstract onResumed()V
.end method

.method public abstract pause()V
.end method

.method public abstract reArrangeTextures(IIII)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract resume()V
.end method

.method public abstract setWebView(Landroid/webkit/WebView;)V
.end method

.method public abstract stopDraw()V
.end method

.method public abstract updateTile(Lcom/android/browser/BitmapWebView$Tile;)V
.end method

.method public abstract updateTilesInQueue()V
.end method

.method public abstract width()I
.end method
