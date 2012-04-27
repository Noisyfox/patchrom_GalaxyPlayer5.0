.class Lcom/android/browser/WebGLAnimator$1;
.super Ljava/lang/Object;
.source "WebGLAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebGLAnimator;->requestStateChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebGLAnimator;

.field final synthetic val$reqState:I

.field final synthetic val$startState:I


# direct methods
.method constructor <init>(Lcom/android/browser/WebGLAnimator;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    iput p2, p0, Lcom/android/browser/WebGLAnimator$1;->val$startState:I

    iput p3, p0, Lcom/android/browser/WebGLAnimator$1;->val$reqState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 580
    iget v0, p0, Lcom/android/browser/WebGLAnimator$1;->val$startState:I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mState:I
    invoke-static {v1}, Lcom/android/browser/WebGLAnimator;->access$100(Lcom/android/browser/WebGLAnimator;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    iget v1, p0, Lcom/android/browser/WebGLAnimator$1;->val$reqState:I

    #calls: Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V
    invoke-static {v0, v1}, Lcom/android/browser/WebGLAnimator;->access$200(Lcom/android/browser/WebGLAnimator;I)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    iget v3, p0, Lcom/android/browser/WebGLAnimator$1;->val$reqState:I

    #calls: Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/browser/WebGLAnimator;->access$300(Lcom/android/browser/WebGLAnimator;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ignored: startState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    iget v3, p0, Lcom/android/browser/WebGLAnimator$1;->val$startState:I

    #calls: Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/browser/WebGLAnimator;->access$300(Lcom/android/browser/WebGLAnimator;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mState:I
    invoke-static {v3}, Lcom/android/browser/WebGLAnimator;->access$100(Lcom/android/browser/WebGLAnimator;)I

    move-result v3

    #calls: Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/browser/WebGLAnimator;->access$300(Lcom/android/browser/WebGLAnimator;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/browser/WebGLAnimator;->access$400(Lcom/android/browser/WebGLAnimator;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    const/4 v1, 0x3

    #calls: Lcom/android/browser/WebGLAnimator;->isState(I)Z
    invoke-static {v0, v1}, Lcom/android/browser/WebGLAnimator;->access$500(Lcom/android/browser/WebGLAnimator;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator$1;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;
    invoke-static {v0}, Lcom/android/browser/WebGLAnimator;->access$600(Lcom/android/browser/WebGLAnimator;)Lcom/android/browser/BitmapWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    goto :goto_0
.end method
