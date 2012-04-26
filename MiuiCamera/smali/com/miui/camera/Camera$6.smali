.class Lcom/miui/camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->hideSnapAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 3238
    iput-object p1, p0, Lcom/miui/camera/Camera$6;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3242
    iget-object v0, p0, Lcom/miui/camera/Camera$6;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3243
    iget-object v0, p0, Lcom/miui/camera/Camera$6;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->showSnapShrinkAnimation()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$8000(Lcom/miui/camera/Camera;)V

    .line 3244
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3239
    return-void
.end method
