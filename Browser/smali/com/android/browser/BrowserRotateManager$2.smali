.class Lcom/android/browser/BrowserRotateManager$2;
.super Ljava/lang/Object;
.source "BrowserRotateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserRotateManager;->onAnimationStart(Lcom/android/browser/RotateRenderer;Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserRotateManager;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserRotateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/browser/BrowserRotateManager$2;->this$0:Lcom/android/browser/BrowserRotateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/browser/BrowserRotateManager$2;->this$0:Lcom/android/browser/BrowserRotateManager;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRotateManager;->onRotateView3DAnimationDone()V

    .line 307
    return-void
.end method
