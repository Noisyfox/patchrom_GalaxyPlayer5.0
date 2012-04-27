.class Lcom/android/browser/BitmapWebViewSurface3D$5;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebViewSurface3D;->drawTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$5;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1508
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$5;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iput-boolean v3, v0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 1509
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$5;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->updateTitleBarTextureBitmap()V

    .line 1510
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$5;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    sget-wide v1, Lcom/android/browser/TitleBar;->mGeneration:J

    iput-wide v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mTitleBarBitmapGeneration:J

    .line 1511
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$5;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iput-boolean v3, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mUpdatingTitleBar:Z

    .line 1512
    return-void
.end method
