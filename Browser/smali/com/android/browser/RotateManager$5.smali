.class Lcom/android/browser/RotateManager$5;
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
    .line 414
    iput-object p1, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    #calls: Lcom/android/browser/RotateManager;->deleteOverlay()V
    invoke-static {v0}, Lcom/android/browser/RotateManager;->access$000(Lcom/android/browser/RotateManager;)V

    .line 417
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/browser/RotateManager;->mState:I

    .line 418
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    invoke-virtual {v0}, Lcom/android/browser/RotateManager;->cleanup()V

    .line 419
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    #getter for: Lcom/android/browser/RotateManager;->mCallback:Lcom/android/browser/RotateManager$Callback;
    invoke-static {v0}, Lcom/android/browser/RotateManager;->access$100(Lcom/android/browser/RotateManager;)Lcom/android/browser/RotateManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    #getter for: Lcom/android/browser/RotateManager;->mCallback:Lcom/android/browser/RotateManager$Callback;
    invoke-static {v0}, Lcom/android/browser/RotateManager;->access$100(Lcom/android/browser/RotateManager;)Lcom/android/browser/RotateManager$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    iget v1, v1, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    invoke-interface {v0, v1}, Lcom/android/browser/RotateManager$Callback;->orientationChangeCompleted(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    iget-object v1, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    invoke-virtual {v1}, Lcom/android/browser/RotateManager;->now()J

    move-result-wide v1

    #setter for: Lcom/android/browser/RotateManager;->mTimeRemoveOverlay:J
    invoke-static {v0, v1, v2}, Lcom/android/browser/RotateManager;->access$202(Lcom/android/browser/RotateManager;J)J

    .line 423
    iget-object v0, p0, Lcom/android/browser/RotateManager$5;->this$0:Lcom/android/browser/RotateManager;

    #calls: Lcom/android/browser/RotateManager;->printStats()V
    invoke-static {v0}, Lcom/android/browser/RotateManager;->access$300(Lcom/android/browser/RotateManager;)V

    .line 424
    return-void
.end method
