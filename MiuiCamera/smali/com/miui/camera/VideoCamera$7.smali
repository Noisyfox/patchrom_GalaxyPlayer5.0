.class Lcom/miui/camera/VideoCamera$7;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/VideoCamera;->hideColoreffectView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/miui/camera/VideoCamera$7;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$7;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$1600(Lcom/miui/camera/VideoCamera;)Landroid/widget/ScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$7;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$1600(Lcom/miui/camera/VideoCamera;)Landroid/widget/ScreenView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$7;->this$0:Lcom/miui/camera/VideoCamera;

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1972
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1966
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1965
    return-void
.end method
