.class Lcom/android/browser/RotateManager$7;
.super Ljava/lang/Object;
.source "RotateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/RotateManager;->onAnimationStart(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/RotateManager;


# direct methods
.method constructor <init>(Lcom/android/browser/RotateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/browser/RotateManager$7;->this$0:Lcom/android/browser/RotateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/browser/RotateManager$7;->this$0:Lcom/android/browser/RotateManager;

    #calls: Lcom/android/browser/RotateManager;->onRotateView3DReady()V
    invoke-static {v0}, Lcom/android/browser/RotateManager;->access$400(Lcom/android/browser/RotateManager;)V

    .line 549
    return-void
.end method
