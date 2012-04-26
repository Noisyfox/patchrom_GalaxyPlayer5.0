.class Lcom/miui/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->initializeSnapShrinkAnimation(Landroid/widget/FrameLayout$LayoutParams;)V
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
    .line 3416
    iput-object p1, p0, Lcom/miui/camera/Camera$7;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/miui/camera/Camera$7;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$8100(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/CameraFrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/CameraFrameLayout;->setAnimationInProgress(Z)V

    .line 3423
    iget-object v0, p0, Lcom/miui/camera/Camera$7;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$8200(Lcom/miui/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3424
    iget-object v0, p0, Lcom/miui/camera/Camera$7;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->postPictureTaken()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$8300(Lcom/miui/camera/Camera;)V

    .line 3425
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3419
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3417
    return-void
.end method
