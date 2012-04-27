.class Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomItemDeleteItemAnimation"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mDuration:J

.field mItemIndex:I

.field private mProgress:F

.field mStartTime:J

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    const-class v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 565
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 607
    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    .line 608
    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    .line 609
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    .line 568
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 3
    .parameter "curUpTime"

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 596
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 579
    sget-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$200(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 582
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 584
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 585
    .local v6, save:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 586
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 588
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$200(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;

    move-result-object v0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteDrawCallback;->drawDeleteItemAnimation(Landroid/graphics/Canvas;ILandroid/view/View;Landroid/graphics/Rect;F)V

    .line 590
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 591
    return-void
.end method

.method public isFinished()Z
    .locals 6

    .prologue
    .line 600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 602
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    .line 604
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public start(JII)V
    .locals 2
    .parameter "startTime"
    .parameter "itemIndex"
    .parameter "duration"

    .prologue
    .line 571
    iput-wide p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    .line 572
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    .line 573
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 575
    return-void
.end method
