.class Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;
.super Ljava/lang/Object;
.source "TFDndListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragGrabHandleAnimator"
.end annotation


# instance fields
.field mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFDndListView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 1098
    return-void
.end method


# virtual methods
.method hide()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    const/high16 v1, 0x3f80

    #setter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$1002(Lcom/nemustech/tiffany/widget/TFDndListView;F)F

    .line 1111
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    const/16 v1, 0x64

    const/16 v3, -0x64

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 1112
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->run()V

    .line 1113
    return-void
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 1117
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    #setter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$1002(Lcom/nemustech/tiffany/widget/TFDndListView;F)F

    .line 1118
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 1119
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method show()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1104
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    const/4 v2, 0x0

    #setter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F
    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$1002(Lcom/nemustech/tiffany/widget/TFDndListView;F)F

    .line 1105
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    const/16 v3, 0x64

    const/16 v5, 0x1f4

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 1106
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->run()V

    .line 1107
    return-void
.end method
