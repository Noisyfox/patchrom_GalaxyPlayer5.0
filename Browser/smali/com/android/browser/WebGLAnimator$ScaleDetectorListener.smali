.class Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebGLAnimator.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebGLAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebGLAnimator;


# direct methods
.method private constructor <init>(Lcom/android/browser/WebGLAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/WebGLAnimator;Lcom/android/browser/WebGLAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2127
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;-><init>(Lcom/android/browser/WebGLAnimator;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v8, 0x1

    .line 2140
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mIsPinchCenterInited:Z
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$800(Lcom/android/browser/WebGLAnimator;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2141
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 2142
    .local v0, centerX:F
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 2143
    .local v1, centerY:F
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #setter for: Lcom/android/browser/WebGLAnimator;->mIsPinchCenterInited:Z
    invoke-static {v5, v8}, Lcom/android/browser/WebGLAnimator;->access$802(Lcom/android/browser/WebGLAnimator;Z)Z

    .line 2144
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mZoomScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$900(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 2145
    :cond_0
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #setter for: Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F
    invoke-static {v5, v0}, Lcom/android/browser/WebGLAnimator;->access$1002(Lcom/android/browser/WebGLAnimator;F)F

    .line 2146
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #setter for: Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F
    invoke-static {v5, v1}, Lcom/android/browser/WebGLAnimator;->access$1102(Lcom/android/browser/WebGLAnimator;F)F

    .line 2153
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    .line 2154
    .local v2, curSpan:F
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    .line 2157
    .local v3, prevSpan:F
    div-float v5, v2, v3

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v6}, Lcom/android/browser/WebGLAnimator;->access$1300(Lcom/android/browser/WebGLAnimator;)F

    move-result v6

    mul-float v4, v5, v6

    .line 2161
    .local v4, scale:F
    invoke-static {}, Lcom/android/browser/WebGLAnimator;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2162
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onScale: curspan = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prevSpan = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scale = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/browser/WebGLAnimator;->access$700(Lcom/android/browser/WebGLAnimator;Ljava/lang/String;)V

    .line 2164
    :cond_2
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$1300(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {}, Lcom/android/browser/WebGLAnimator;->access$1500()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    .line 2166
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$1300(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 2167
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$1300(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    const/high16 v6, 0x3fa0

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2172
    :goto_0
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mMinScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$1600(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    const v6, 0x3f28f5c3

    mul-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mMaxScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$1700(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    :cond_3
    move v5, v8

    .line 2184
    :goto_1
    return v5

    .line 2169
    :cond_4
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v5}, Lcom/android/browser/WebGLAnimator;->access$1300(Lcom/android/browser/WebGLAnimator;)F

    move-result v5

    const v6, 0x3f4ccccd

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_0

    .line 2176
    :cond_5
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #setter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v5, v4}, Lcom/android/browser/WebGLAnimator;->access$1302(Lcom/android/browser/WebGLAnimator;F)F

    .line 2177
    invoke-static {}, Lcom/android/browser/WebGLAnimator;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2178
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onScale: mTargetZoomScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F
    invoke-static {v7}, Lcom/android/browser/WebGLAnimator;->access$1300(Lcom/android/browser/WebGLAnimator;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mZoomCenterX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F
    invoke-static {v7}, Lcom/android/browser/WebGLAnimator;->access$1000(Lcom/android/browser/WebGLAnimator;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mZoomCenterY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F
    invoke-static {v7}, Lcom/android/browser/WebGLAnimator;->access$1100(Lcom/android/browser/WebGLAnimator;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/browser/WebGLAnimator;->access$400(Lcom/android/browser/WebGLAnimator;Ljava/lang/String;)V

    :cond_6
    move v5, v8

    .line 2181
    goto :goto_1

    .line 2184
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;->this$0:Lcom/android/browser/WebGLAnimator;

    const-string v1, "ScaleDetectorListener.onScaleBegin"

    #calls: Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/browser/WebGLAnimator;->access$700(Lcom/android/browser/WebGLAnimator;Ljava/lang/String;)V

    .line 2132
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 2137
    return-void
.end method
