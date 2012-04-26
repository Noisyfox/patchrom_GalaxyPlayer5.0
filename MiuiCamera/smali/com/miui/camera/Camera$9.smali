.class Lcom/miui/camera/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->hideSettingPanel(I)V
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
    .line 3884
    iput-object p1, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$8400(Lcom/miui/camera/Camera;)Landroid/widget/ScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3889
    iget-object v0, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$8400(Lcom/miui/camera/Camera;)Landroid/widget/ScreenView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 3891
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3892
    iget-object v0, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3894
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_2

    .line 3895
    iget-object v0, p0, Lcom/miui/camera/Camera$9;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->showExposureZoomView()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2800(Lcom/miui/camera/Camera;)V

    .line 3897
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3886
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3885
    return-void
.end method
