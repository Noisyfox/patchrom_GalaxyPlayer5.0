.class Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
.source "TFAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomItemInsertItemAnimation"
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
    .line 510
    const-class v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->$assertionsDisabled:Z

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

    .line 514
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 556
    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    .line 557
    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    .line 558
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mItemIndex:I

    .line 517
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .locals 3
    .parameter "curUpTime"

    .prologue
    .line 544
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    .line 545
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 528
    sget-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$000(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 531
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    .line 533
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 534
    .local v6, save:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 535
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 537
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$000(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;

    move-result-object v0

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mItemIndex:I

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$100(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertDrawCallback;->drawInsertItemAnimation(Landroid/graphics/Canvas;ILandroid/view/View;Landroid/graphics/Rect;F)V

    .line 539
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 540
    return-void
.end method

.method public isFinished()Z
    .locals 6

    .prologue
    .line 549
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 551
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    .line 553
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
    .line 520
    iput-wide p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mStartTime:J

    .line 521
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mDuration:J

    .line 522
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mItemIndex:I

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$CustomItemInsertItemAnimation;->mProgress:F

    .line 524
    return-void
.end method
