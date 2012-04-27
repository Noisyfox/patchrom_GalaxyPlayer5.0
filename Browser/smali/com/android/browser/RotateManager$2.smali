.class Lcom/android/browser/RotateManager$2;
.super Ljava/lang/Object;
.source "RotateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/RotateManager;->onRotateView2DRender()V
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
    .line 364
    iput-object p1, p0, Lcom/android/browser/RotateManager$2;->this$0:Lcom/android/browser/RotateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/browser/RotateManager$2;->this$0:Lcom/android/browser/RotateManager;

    iget-object v0, v0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/browser/RotateManager$2;->this$0:Lcom/android/browser/RotateManager;

    iget-object v0, v0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/RotateView3D;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method
