.class Lcom/android/browser/ActiveTabsPage$LearnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ActiveTabsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LearnGestureListener"
.end annotation


# instance fields
.field mContext:Lcom/android/browser/ActiveTabsPage;

.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 901
    const-string v0, "onDownd"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 910
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mRespondToScroll:Z
    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$300(Lcom/android/browser/ActiveTabsPage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;
    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$700(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 914
    .local v1, tabCount:I
    const/16 v0, 0x1f4

    .line 916
    .local v0, VX:I
    const/high16 v2, -0x3c06

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    .line 917
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$808(Lcom/android/browser/ActiveTabsPage;)I

    .line 918
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I
    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$800(Lcom/android/browser/ActiveTabsPage;)I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 919
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    sub-int v3, v1, v5

    #setter for: Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I
    invoke-static {v2, v3}, Lcom/android/browser/ActiveTabsPage;->access$802(Lcom/android/browser/ActiveTabsPage;I)I

    .line 926
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I
    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$800(Lcom/android/browser/ActiveTabsPage;)I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mBlockWidth:I
    invoke-static {v4}, Lcom/android/browser/ActiveTabsPage;->access$900(Lcom/android/browser/ActiveTabsPage;)I

    move-result v4

    mul-int/2addr v3, v4

    #setter for: Lcom/android/browser/ActiveTabsPage;->mTargetX:I
    invoke-static {v2, v3}, Lcom/android/browser/ActiveTabsPage;->access$402(Lcom/android/browser/ActiveTabsPage;I)I

    .line 927
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mTargetX:I
    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)I

    move-result v2

    iget-object v3, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mScrollX:I
    invoke-static {v3}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 928
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #setter for: Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z
    invoke-static {v2, v5}, Lcom/android/browser/ActiveTabsPage;->access$102(Lcom/android/browser/ActiveTabsPage;Z)Z

    .line 929
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #setter for: Lcom/android/browser/ActiveTabsPage;->mScrollAnimationStarted:Z
    invoke-static {v2, v6}, Lcom/android/browser/ActiveTabsPage;->access$1002(Lcom/android/browser/ActiveTabsPage;Z)Z

    .line 930
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v2}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 933
    .end local v0           #VX:I
    .end local v1           #tabCount:I
    :cond_1
    return v5

    .line 920
    .restart local v0       #VX:I
    .restart local v1       #tabCount:I
    :cond_2
    const/high16 v2, 0x43fa

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$810(Lcom/android/browser/ActiveTabsPage;)I

    .line 922
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I
    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$800(Lcom/android/browser/ActiveTabsPage;)I

    move-result v2

    if-gez v2, :cond_0

    .line 923
    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #setter for: Lcom/android/browser/ActiveTabsPage;->mCurrentTabIndex:I
    invoke-static {v2, v6}, Lcom/android/browser/ActiveTabsPage;->access$802(Lcom/android/browser/ActiveTabsPage;I)I

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 882
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 888
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mScrollAnimation:Z
    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mThumbnailAnimation:Z
    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mRespondToScroll:Z
    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$300(Lcom/android/browser/ActiveTabsPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    const v0, 0x3f4ccccd

    .line 890
    .local v0, scrollFactor:F
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mScrollX:I
    invoke-static {v2}, Lcom/android/browser/ActiveTabsPage;->access$500(Lcom/android/browser/ActiveTabsPage;)I

    move-result v2

    int-to-float v2, v2

    div-float v3, p3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    #setter for: Lcom/android/browser/ActiveTabsPage;->mTargetX:I
    invoke-static {v1, v2}, Lcom/android/browser/ActiveTabsPage;->access$402(Lcom/android/browser/ActiveTabsPage;I)I

    .line 891
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z
    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$600(Lcom/android/browser/ActiveTabsPage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    #setter for: Lcom/android/browser/ActiveTabsPage;->mContinousScrollMode:Z
    invoke-static {v1, v4}, Lcom/android/browser/ActiveTabsPage;->access$602(Lcom/android/browser/ActiveTabsPage;Z)Z

    .line 893
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v1}, Lcom/android/browser/ActiveTabsPage;->invalidate()V

    .line 896
    .end local v0           #scrollFactor:F
    :cond_0
    return v4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 878
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->mContext:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, p1}, Lcom/android/browser/ActiveTabsPage;->onSingleTapUp(Landroid/view/MotionEvent;)V

    .line 873
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Lcom/android/browser/ActiveTabsPage;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$LearnGestureListener;->mContext:Lcom/android/browser/ActiveTabsPage;

    .line 868
    return-void
.end method
