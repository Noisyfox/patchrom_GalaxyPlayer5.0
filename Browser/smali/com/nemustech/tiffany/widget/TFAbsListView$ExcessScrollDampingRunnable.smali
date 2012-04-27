.class Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDampingRunnable"
.end annotation


# instance fields
.field CMAXt:F

.field Ck:F

.field Cm:F

.field private mFirstRun:Z

.field private mStartTime:J

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

.field w0:F

.field x0:F

.field xdot0:F


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 2540
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Ck:F

    .line 2558
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Cm:F

    .line 2560
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 2561
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->xdot0:F

    .line 2562
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->x0:F

    .line 2563
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->w0:F

    return-void
.end method

.method private calcExcessScroll(F)F
    .locals 6
    .parameter "t"

    .prologue
    const/high16 v5, -0x4080

    .line 2597
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->x0:F

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->xdot0:F

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->w0:F

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->x0:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->w0:F

    mul-float/2addr v2, v5

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v1, v2

    .line 2598
    .local v0, ret:F
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$800(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2599
    mul-float/2addr v0, v5

    .line 2601
    :cond_0
    return v0
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2628
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2609
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->mFirstRun:Z

    if-eqz v3, :cond_1

    .line 2610
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->mFirstRun:Z

    .line 2611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2612
    .local v1, tNow:J
    iget-wide v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    div-float v0, v3, v4

    .line 2614
    .local v0, t:F
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->calcExcessScroll(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2620
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2622
    .end local v0           #t:F
    .end local v1           #tNow:J
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->awakenScrollBars()Z
    invoke-static {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Z

    .line 2623
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2624
    return-void
.end method

.method start(F)V
    .locals 3
    .parameter "flingSpeed"

    .prologue
    const/4 v2, 0x0

    .line 2573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->mFirstRun:Z

    .line 2574
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->cancel()V

    .line 2576
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v1, 0x2

    #setter for: Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I

    .line 2578
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 2579
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Ck:F

    .line 2580
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->x0:F

    .line 2588
    :goto_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Ck:F

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Cm:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->w0:F

    .line 2589
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Cm:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->xdot0:F

    .line 2591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->mStartTime:J

    .line 2593
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2594
    return-void

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v1, 0x3

    #setter for: Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollMode:I
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I

    .line 2583
    const v0, 0x44a28000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->CMAXt:F

    .line 2584
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->Ck:F

    .line 2585
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDampingRunnable;->x0:F

    goto :goto_0
.end method
