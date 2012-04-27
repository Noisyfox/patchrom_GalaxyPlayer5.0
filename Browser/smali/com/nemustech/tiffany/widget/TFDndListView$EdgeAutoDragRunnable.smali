.class Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;
.super Ljava/lang/Object;
.source "TFDndListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeAutoDragRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndListView;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFDndListView;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFDndListView;Lcom/nemustech/tiffany/widget/TFDndListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 768
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$100(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$100(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 770
    :cond_0
    const/4 v0, 0x0

    .line 771
    .local v0, delta:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I
    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$200(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v5

    #calls: Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I
    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$300(Lcom/nemustech/tiffany/widget/TFDndListView;I)I

    move-result v1

    .line 777
    .local v1, hittestres:I
    if-ne v1, v6, :cond_4

    .line 778
    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F
    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$400(Lcom/nemustech/tiffany/widget/TFDndListView;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 783
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 784
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-boolean v3, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 785
    .local v3, savedBlockExcessScroll:Z
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iput-boolean v6, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 786
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v4, v0, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->trackMotionScroll(II)V

    .line 787
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iput-boolean v3, v4, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    .line 789
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$500(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v2

    .line 790
    .local v2, prevDestPosition:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I
    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$200(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v6

    #calls: Lcom/nemustech/tiffany/widget/TFDndListView;->findDropDestinationPosition(I)I
    invoke-static {v5, v6}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$600(Lcom/nemustech/tiffany/widget/TFDndListView;I)I

    move-result v5

    #setter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I
    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$502(Lcom/nemustech/tiffany/widget/TFDndListView;I)I

    .line 797
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$500(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 799
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I
    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$500(Lcom/nemustech/tiffany/widget/TFDndListView;)I

    move-result v5

    #calls: Lcom/nemustech/tiffany/widget/TFDndListView;->adjustItemsYPosOffset(II)V
    invoke-static {v4, v2, v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$700(Lcom/nemustech/tiffany/widget/TFDndListView;II)V

    .line 800
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v4, v4, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 801
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #calls: Lcom/nemustech/tiffany/widget/TFDndListView;->checkDropGranted()Z
    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$900(Lcom/nemustech/tiffany/widget/TFDndListView;)Z

    move-result v5

    #setter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z
    invoke-static {v4, v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$802(Lcom/nemustech/tiffany/widget/TFDndListView;Z)Z

    .line 803
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 806
    :cond_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    const-wide/16 v5, 0x32

    invoke-virtual {v4, p0, v5, v6}, Lcom/nemustech/tiffany/widget/TFDndListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    .end local v0           #delta:I
    .end local v1           #hittestres:I
    .end local v2           #prevDestPosition:I
    .end local v3           #savedBlockExcessScroll:Z
    :cond_3
    return-void

    .line 779
    .restart local v0       #delta:I
    .restart local v1       #hittestres:I
    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 780
    const/high16 v4, -0x3ee0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F
    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->access$400(Lcom/nemustech/tiffany/widget/TFDndListView;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v0, v4

    goto :goto_0
.end method
