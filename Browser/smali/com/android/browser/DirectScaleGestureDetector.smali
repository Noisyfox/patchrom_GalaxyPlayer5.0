.class public Lcom/android/browser/DirectScaleGestureDetector;
.super Landroid/webkit/WebviewScaleGestureDetector;
.source "DirectScaleGestureDetector.java"

# interfaces
.implements Lcom/android/browser/MotionEventBuilder$EventListener;


# instance fields
.field mCurrentSpan:F

.field private mFocusX:I

.field private mFocusY:I

.field mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field private mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

.field mPreviousSpan:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;Landroid/view/PointerDevice;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "pointerDevice"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebviewScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V

    .line 38
    iput-object p2, p0, Lcom/android/browser/DirectScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 39
    new-instance v0, Lcom/android/browser/MotionEventBuilder;

    invoke-direct {v0, p3, p0}, Lcom/android/browser/MotionEventBuilder;-><init>(Landroid/view/PointerDevice;Lcom/android/browser/MotionEventBuilder$EventListener;)V

    iput-object v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    .line 40
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mCurrentSpan:F

    return v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusX:I

    int-to-float v0, v0

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusY:I

    int-to-float v0, v0

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mPreviousSpan:F

    return v0
.end method

.method public declared-synchronized onNewEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/high16 v8, -0x8000

    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    iget v2, v6, Lcom/android/browser/MotionEventBuilder;->x0:I

    .line 73
    .local v2, x0:I
    iget-object v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    iget v4, v6, Lcom/android/browser/MotionEventBuilder;->y0:I

    .line 74
    .local v4, y0:I
    iget-object v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    iget v3, v6, Lcom/android/browser/MotionEventBuilder;->x1:I

    .line 75
    .local v3, x1:I
    iget-object v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    iget v5, v6, Lcom/android/browser/MotionEventBuilder;->y1:I

    .line 79
    .local v5, y1:I
    if-eq v2, v8, :cond_2

    if-eq v4, v8, :cond_2

    if-eq v3, v8, :cond_2

    if-eq v5, v8, :cond_2

    .line 80
    sub-int v6, v3, v2

    int-to-float v0, v6

    .line 81
    .local v0, dx:F
    sub-int v6, v5, v4

    int-to-float v1, v6

    .line 82
    .local v1, dy:F
    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    iput v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mCurrentSpan:F

    .line 84
    iget v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusX:I

    if-eq v6, v8, :cond_0

    iget v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusY:I

    if-ne v6, v8, :cond_1

    .line 85
    :cond_0
    add-int v6, v2, v3

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusX:I

    .line 86
    add-int v6, v4, v5

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusY:I

    .line 87
    iget v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mCurrentSpan:F

    iput v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mPreviousSpan:F

    .line 89
    :cond_1
    iget-object v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    .line 90
    iget v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mCurrentSpan:F

    iput v6, p0, Lcom/android/browser/DirectScaleGestureDetector;->mPreviousSpan:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_2
    monitor-exit p0

    return-void

    .line 72
    .end local v2           #x0:I
    .end local v3           #x1:I
    .end local v4           #y0:I
    .end local v5           #y1:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    invoke-virtual {v0}, Lcom/android/browser/MotionEventBuilder;->reset()V

    .line 44
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusX:I

    .line 45
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mFocusY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/DirectScaleGestureDetector;->mMotionEventBuilder:Lcom/android/browser/MotionEventBuilder;

    invoke-virtual {v0}, Lcom/android/browser/MotionEventBuilder;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
