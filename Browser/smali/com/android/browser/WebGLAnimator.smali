.class Lcom/android/browser/WebGLAnimator;
.super Ljava/lang/Object;
.source "WebGLAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;
    }
.end annotation


# static fields
.field private static ANIMATION_SCALE:I

.field private static final BOUNCE_ANIMATION_MS:I

.field private static final DBG:Z

.field private static final FLING_BOUNCE_ANIMATION_MS:I

.field private static final FLING_EXTRA_ANIMATION_MS:I

.field private static final MAX_HIDE_LOCKSCREEN_RESIZE_MS:I

.field private static final MAX_HIDE_LOCKSCREEN_SAME_SIZE_MS:I

.field private static MINIMUM_SCALE_INCREMENT:F

.field private static final MIN_HIDE_LOCKSCREEN_RESIZE_MS:I

.field private static final MIN_HIDE_LOCKSCREEN_SAME_SIZE_MS:I

.field private static final QUICK_BOUNCE_ANIMATION_MS:I

.field private static final ZOOM_ANIMATION_MS:I

.field private static final ZOOM_BOUNCE_ANIMATION_MS:I


# instance fields
.field bFlingToEdge:Z

.field private mAbortingAnimation:Z

.field mActiveTabsPageGestureDetector:Lcom/android/browser/ActiveTabsPageGestureDetector;

.field private mBouncePeriodMs:J

.field private mBounceStartMs:J

.field private mBounceStartPos:[I

.field private mBounceStartZoomScale:F

.field private mBounceTargetPos:[I

.field private mBounceTargetZoomScale:F

.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field mCenter:[F

.field private mContext:Landroid/content/Context;

.field private mDTBounceBack:Z

.field private mDTTargetZoomScale:F

.field private mDTZoomDuration:J

.field private mDTZoomStartMs:J

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDrawingLastFrame:Z

.field mEdgeAnimating:I

.field mEdgeToAnimate:I

.field private mFilteredPointerPos:[I

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field mFlingBounceStartMs:[J

.field mFlingEdgeGlowStartMs:[J

.field private mFlingExtra:[I

.field private mFlingFinal:[I

.field private mFlingOOBStartMs:[J

.field private mFlingTarget:[I

.field mGLHasPaused:Z

.field volatile mGLWakeupTime:J

.field volatile mGLWakeupTimeMin:J

.field mGlThreadID:I

.field private mHasPinched:Z

.field mHideLockedStartMs:J

.field private mIsPinchCenterInited:Z

.field private mLastPointerPos:[I

.field private mLastTrackMoveX:I

.field private mLastTrackMoveY:I

.field private mLastUIMovePos:[I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field mLastWebViewDrawFinishedMs:J

.field private mLocationOnScreen:[I

.field private mMaxScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinScale:F

.field private mMotionFilter:Lcom/android/browser/MotionFilter;

.field mNewScroll:[F

.field mNewScrollInt:[I

.field mNewScrollMax:[I

.field private mPinchFrames:J

.field private mPinchMotionFilter:Lcom/android/browser/MotionFilter;

.field private mPointerDevice:Landroid/view/PointerDevice;

.field private mPointerPos:[I

.field private mPrintFirstPinch:Z

.field private mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

.field private mScrollFrames:J

.field private mScrollMax:[I

.field private mScrollMin:[I

.field private mScrollPos:[I

.field private mScrollStart:[I

.field private mScrollStartMs:J

.field private mScrollStartScale:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSecondPointerDownMs:J

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mState:I

.field private mStates:[Landroid/view/PointerDevice$PointerState;

.field private mStationary:Z

.field private mStationaryPointerPos:[I

.field private mTargetZoomScale:F

.field private mTouchDown:[I

.field private mTouchDownMs:J

.field private mTouchDownStale:Z

.field private mTouchSlop:I

.field mVariableEdgeWidth:I

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

.field private mWebView:Landroid/webkit/WebView;

.field mWebViewDone:Z

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomScale:F

.field private mZoomView:Lcom/android/browser/BitmapWebView;

.field private stateNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "1"

    const-string v1, "debug.browser.animation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    .line 49
    :try_start_0
    const-string v0, "debug.browser.animation_scale"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit16 v0, v0, 0x12c

    sput v0, Lcom/android/browser/WebGLAnimator;->BOUNCE_ANIMATION_MS:I

    .line 69
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/browser/WebGLAnimator;->QUICK_BOUNCE_ANIMATION_MS:I

    .line 70
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit16 v0, v0, 0x118

    sput v0, Lcom/android/browser/WebGLAnimator;->ZOOM_ANIMATION_MS:I

    .line 71
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit8 v0, v0, 0x6e

    sput v0, Lcom/android/browser/WebGLAnimator;->ZOOM_BOUNCE_ANIMATION_MS:I

    .line 72
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit16 v0, v0, 0xb4

    sput v0, Lcom/android/browser/WebGLAnimator;->FLING_EXTRA_ANIMATION_MS:I

    .line 73
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/android/browser/WebGLAnimator;->FLING_BOUNCE_ANIMATION_MS:I

    .line 77
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit8 v0, v0, 0x0

    sput v0, Lcom/android/browser/WebGLAnimator;->MIN_HIDE_LOCKSCREEN_SAME_SIZE_MS:I

    .line 78
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit8 v0, v0, 0x0

    sput v0, Lcom/android/browser/WebGLAnimator;->MAX_HIDE_LOCKSCREEN_SAME_SIZE_MS:I

    .line 79
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit8 v0, v0, 0x0

    sput v0, Lcom/android/browser/WebGLAnimator;->MIN_HIDE_LOCKSCREEN_RESIZE_MS:I

    .line 80
    sget v0, Lcom/android/browser/WebGLAnimator;->ANIMATION_SCALE:I

    mul-int/lit8 v0, v0, 0x0

    sput v0, Lcom/android/browser/WebGLAnimator;->MAX_HIDE_LOCKSCREEN_RESIZE_MS:I

    .line 217
    const v0, 0x3c23d70a

    sput v0, Lcom/android/browser/WebGLAnimator;->MINIMUM_SCALE_INCREMENT:F

    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V
    .locals 10
    .parameter "context"
    .parameter "zoomView"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v7, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 135
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "NONE"

    aput-object v4, v3, v7

    const-string v4, "ONE_DOWN"

    aput-object v4, v3, v8

    const-string v4, "SCROLL"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "FLING"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "PINCH"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "ZOOM"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "BOUNCE"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->stateNames:[Ljava/lang/String;

    .line 164
    iput v8, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 168
    new-instance v3, Lcom/android/browser/MotionFilter;

    invoke-direct {v3}, Lcom/android/browser/MotionFilter;-><init>()V

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mMotionFilter:Lcom/android/browser/MotionFilter;

    .line 169
    new-instance v3, Lcom/android/browser/MotionFilter;

    invoke-direct {v3}, Lcom/android/browser/MotionFilter;-><init>()V

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mPinchMotionFilter:Lcom/android/browser/MotionFilter;

    .line 171
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mLocationOnScreen:[I

    .line 172
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    .line 173
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mStationaryPointerPos:[I

    .line 174
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mLastPointerPos:[I

    .line 175
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    .line 176
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    .line 177
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mLastUIMovePos:[I

    .line 178
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    .line 179
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    .line 180
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    .line 181
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    .line 183
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    .line 184
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    .line 185
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    .line 186
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    .line 187
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    .line 188
    new-array v3, v6, [J

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingOOBStartMs:[J

    .line 198
    iput v9, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    iput v9, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    .line 211
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 807
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    .line 808
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    .line 809
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    .line 810
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    .line 1162
    iput v7, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    .line 1163
    iput v7, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1164
    const/16 v3, 0x28

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    .line 1165
    iput-boolean v7, p0, Lcom/android/browser/WebGLAnimator;->bFlingToEdge:Z

    .line 1397
    iput-boolean v8, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    .line 1792
    new-array v3, v6, [J

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    .line 1793
    new-array v3, v6, [J

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    .line 2337
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mGlThreadID:I

    .line 242
    iput-object p1, p0, Lcom/android/browser/WebGLAnimator;->mContext:Landroid/content/Context;

    .line 243
    iput-object p2, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    .line 245
    new-instance v3, Lcom/android/browser/ActiveTabsPageGestureDetector;

    invoke-direct {v3, p1, p2}, Lcom/android/browser/ActiveTabsPageGestureDetector;-><init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mActiveTabsPageGestureDetector:Lcom/android/browser/ActiveTabsPageGestureDetector;

    .line 247
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 248
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 250
    .local v2, slop:I
    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mTouchSlop:I

    .line 252
    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mMinLockSnapReverseDistance:I

    .line 254
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    .line 255
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mMaximumFling:I

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 258
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mDisplayWidth:I

    .line 259
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mDisplayHeight:I

    .line 260
    check-cast p1, Lcom/android/browser/BrowserActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/WebGLAnimator;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 261
    return-void
.end method

.method private _setWebViewScrollAndZoom(ZZ)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, ","

    const-string v10, ", "

    .line 843
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 847
    if-eqz p1, :cond_f

    .line 848
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_e

    .line 849
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    move v1, v0

    move v0, v9

    .line 852
    :goto_0
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 853
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    move v1, v0

    move v0, v9

    .line 858
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    aput v3, v2, v8

    .line 859
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v4}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 861
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 862
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 863
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v4, v8

    .line 864
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v4, v9

    move v4, v8

    .line 866
    :goto_2
    if-ge v4, v11, :cond_1

    .line 867
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v6, v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    aget v7, v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    aget v7, v7, v4

    div-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v4

    .line 868
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    aget v6, v6, v4

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v5, v4

    .line 866
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 871
    :cond_1
    sget-boolean v4, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v4, :cond_2

    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOUNCE: contentW/H    = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOUNCE: newWebViewW/H = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOUNCE: newScale      = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOUNCE: newScale(WV)  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOUNCE: oldScroll     = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOUNCE: newScroll     = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOUNCE: oldMax        = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOUNCE: newMax        = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 882
    :cond_2
    if-eqz p1, :cond_8

    move v2, v0

    move v0, v8

    .line 883
    :goto_3
    if-ge v0, v11, :cond_5

    .line 884
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v0

    if-gez v3, :cond_4

    .line 886
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    aget v4, v4, v0

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, v2, v0

    move v2, v9

    .line 883
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 887
    :cond_4
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v4, v4, v0

    if-le v3, v4, :cond_3

    .line 889
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 890
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v0

    div-float/2addr v2, v1

    float-to-int v2, v2

    sub-int v2, v4, v2

    aput v2, v3, v0

    move v2, v9

    goto :goto_4

    .line 894
    :cond_5
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_6

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWebViewScrollAndZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->getConfigString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 898
    :cond_6
    if-eqz v2, :cond_7

    move v0, v8

    .line 925
    :goto_5
    return v0

    :cond_7
    move v0, v9

    .line 901
    goto :goto_5

    .line 904
    :cond_8
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_9

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWebViewScrollAndZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->getConfigString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    :cond_9
    move v0, v8

    .line 909
    :goto_6
    if-ge v0, v11, :cond_c

    .line 910
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_a

    .line 911
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 913
    :cond_a
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v1, v1, v0

    if-gez v1, :cond_b

    .line 914
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aput v8, v1, v0

    .line 909
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 918
    :cond_c
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mCenter:[F

    aget v5, v5, v9

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->setScrollAndZoom(FIIFFZ)V

    .line 921
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_d

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newScroll: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    :cond_d
    move v0, v9

    .line 925
    goto/16 :goto_5

    :cond_e
    move v1, v0

    move v0, v8

    goto/16 :goto_0

    :cond_f
    move v1, v0

    move v0, v8

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/android/browser/WebGLAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/browser/WebGLAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/browser/WebGLAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/WebGLAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/browser/WebGLAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/browser/WebGLAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/browser/WebGLAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    return v0
.end method

.method static synthetic access$1500()F
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/browser/WebGLAnimator;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/browser/WebGLAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/browser/WebGLAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/WebGLAnimator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/WebGLAnimator;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/WebGLAnimator;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/WebGLAnimator;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/browser/WebGLAnimator;)Lcom/android/browser/BitmapWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/WebGLAnimator;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/WebGLAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mIsPinchCenterInited:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/browser/WebGLAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/browser/WebGLAnimator;->mIsPinchCenterInited:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/browser/WebGLAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    return v0
.end method

.method private adjustSnapScrollMode()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3fc0

    .line 1467
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mLastPointerPos:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    .line 1469
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mLastPointerPos:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 1471
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1472
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1473
    iget v4, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    if-ne v4, v7, :cond_4

    .line 1475
    int-to-float v1, v3

    int-to-float v4, v2

    mul-float/2addr v4, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    if-le v3, v8, :cond_1

    .line 1477
    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1480
    :cond_1
    int-to-float v1, v2

    int-to-float v2, v3

    mul-float/2addr v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/browser/WebGLAnimator;->mSnapPositive:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMinLockSnapReverseDistance:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    .line 1484
    :goto_0
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1501
    :cond_2
    :goto_1
    return-void

    .line 1480
    :cond_3
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMinLockSnapReverseDistance:I

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 1488
    :cond_4
    int-to-float v0, v2

    int-to-float v4, v3

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    if-le v2, v8, :cond_5

    .line 1490
    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1493
    :cond_5
    int-to-float v0, v3

    int-to-float v2, v2

    mul-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapPositive:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMinLockSnapReverseDistance:I

    neg-int v0, v0

    if-ge v1, v0, :cond_2

    .line 1497
    :goto_2
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    goto :goto_1

    .line 1493
    :cond_6
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMinLockSnapReverseDistance:I

    if-le v1, v0, :cond_2

    goto :goto_2
.end method

.method private animateBounceLocked()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 1932
    const-string v0, "Browser"

    const-string v1, "BOUNCE ANIMATION DISABLED shouldn\'t be here!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartMs:J

    sub-long/2addr v0, v2

    long-to-int v6, v0

    .line 1935
    int-to-long v0, v6

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mBouncePeriodMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move v7, v4

    .line 1936
    :goto_0
    const/4 v0, 0x2

    if-ge v7, v0, :cond_0

    .line 1937
    iget-object v8, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mBouncePeriodMs:J

    int-to-long v2, v6

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v5, v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/browser/Kinetic;->getPosDecel(JJII)I

    move-result v0

    aput v0, v8, v7

    .line 1936
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1939
    :cond_0
    iget-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mBouncePeriodMs:J

    int-to-long v2, v6

    iget v4, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartZoomScale:F

    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    invoke-static/range {v0 .. v5}, Lcom/android/browser/Kinetic;->getScaleDecel(JJFF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1949
    :goto_1
    return v9

    .line 1941
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 1942
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v1, v1, v9

    aput v1, v0, v9

    .line 1943
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1944
    invoke-direct {p0, v9}, Lcom/android/browser/WebGLAnimator;->requestStateChange(I)V

    goto :goto_1
.end method

.method private animateFlingLocked()Z
    .locals 13

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 1812
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 1814
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    aput v2, v0, v1

    .line 1815
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    aput v2, v0, v1

    .line 1817
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 1818
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_2

    .line 1819
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1817
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1820
    :cond_2
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_1

    .line 1821
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_1

    .line 1826
    :cond_3
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    aput v2, v0, v1

    .line 1827
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    aput v2, v0, v1

    .line 1830
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 1831
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_5

    .line 1832
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1830
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1833
    :cond_5
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_4

    .line 1834
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_3

    .line 1839
    :cond_6
    const/4 v0, 0x0

    .line 1840
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v8

    .line 1841
    const/4 v1, 0x0

    move v10, v1

    move v11, v0

    :goto_4
    const/4 v0, 0x2

    if-ge v10, v0, :cond_10

    .line 1842
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    aget-wide v0, v0, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 1844
    const-string v0, "Browser"

    const-string v1, "BOUNCE ANIMATION DISABLED shouldn\'t be here!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v10

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v1, v1, v10

    if-eq v0, v1, :cond_7

    .line 1847
    iget-object v12, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    sget v0, Lcom/android/browser/WebGLAnimator;->FLING_BOUNCE_ANIMATION_MS:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    aget-wide v2, v2, v10

    sub-long v2, v8, v2

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v5, v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/browser/Kinetic;->getPosDecel(JJII)I

    move-result v0

    aput v0, v12, v10

    .line 1850
    :cond_7
    add-int/lit8 v0, v11, 0x1

    .line 1841
    :goto_5
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v11, v0

    goto :goto_4

    .line 1851
    :cond_8
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v10

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    aget v1, v1, v10

    if-ne v0, v1, :cond_9

    .line 1853
    add-int/lit8 v0, v11, 0x1

    goto :goto_5

    .line 1855
    :cond_9
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v0, v0, v10

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v0, v0, v10

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v10

    if-gt v0, v1, :cond_a

    .line 1856
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v1, v1, v10

    aput v1, v0, v10

    move v0, v11

    goto :goto_5

    .line 1859
    :cond_a
    const-string v0, "Browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOUNCE ANIMATION DISABLED shouldn\'t be here!!! mFlingTarget["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScrollMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScrollMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingOOBStartMs:[J

    aget-wide v0, v0, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    .line 1863
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingOOBStartMs:[J

    aput-wide v8, v0, v10

    .line 1865
    :cond_b
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingOOBStartMs:[J

    aget-wide v0, v0, v10

    sub-long v0, v8, v0

    .line 1866
    long-to-double v2, v0

    sget v4, Lcom/android/browser/WebGLAnimator;->FLING_EXTRA_ANIMATION_MS:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1867
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    aget v3, v3, v10

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1869
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v3, v3, v10

    if-gez v3, :cond_e

    .line 1870
    float-to-int v2, v2

    neg-int v2, v2

    .line 1871
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v3, v3, v10

    if-ge v2, v3, :cond_c

    .line 1872
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v2, v2, v10

    .line 1880
    :cond_c
    :goto_6
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aput v2, v3, v10

    .line 1882
    sget v2, Lcom/android/browser/WebGLAnimator;->FLING_EXTRA_ANIMATION_MS:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 1883
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    aput-wide v8, v0, v10

    .line 1884
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v10

    if-gez v0, :cond_f

    .line 1885
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v10

    aput v1, v0, v10

    .line 1886
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    const/4 v1, 0x0

    aput v1, v0, v10

    .line 1891
    :cond_d
    :goto_7
    add-int/lit8 v0, v11, 0x1

    goto/16 :goto_5

    .line 1875
    :cond_e
    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v3, v3, v10

    add-int/2addr v2, v3

    .line 1876
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v3, v3, v10

    if-le v2, v3, :cond_c

    .line 1877
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFlingTarget:[I

    aget v2, v2, v10

    goto :goto_6

    .line 1887
    :cond_f
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v10

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v10

    if-le v0, v1, :cond_d

    .line 1888
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v10

    aput v1, v0, v10

    .line 1889
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v10

    aput v1, v0, v10

    goto :goto_7

    .line 1897
    :cond_10
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->constraintScaleForScrollAndFling()V

    .line 1899
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_11

    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateFlingLocked["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: oldX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollPos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingFinal:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1905
    :cond_11
    const/4 v0, 0x2

    if-lt v11, v0, :cond_15

    .line 1907
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1909
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->needBounce()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1911
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    if-lez v0, :cond_13

    .line 1912
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x2

    if-ge v0, v1, :cond_13

    .line 1913
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    aget-wide v1, v1, v0

    sub-long v1, v8, v1

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elapsedEdgeGlow[%d]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1915
    sget v3, Lcom/android/browser/WebGLAnimator;->FLING_EXTRA_ANIMATION_MS:I

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_12

    .line 1916
    const/4 v0, 0x1

    .line 1927
    :goto_9
    return v0

    .line 1912
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1920
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->requestStateChange(I)V

    .line 1924
    :goto_a
    const/4 v0, 0x0

    goto :goto_9

    .line 1922
    :cond_14
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->requestStateChange(I)V

    goto :goto_a

    .line 1927
    :cond_15
    const/4 v0, 0x1

    goto :goto_9

    :cond_16
    move v0, v11

    goto/16 :goto_5
.end method

.method private declared-synchronized animateLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1504
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    .line 1506
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1518
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->unimplemented()V

    .line 1519
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->requestStateChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1520
    :goto_0
    monitor-exit p0

    return v0

    .line 1508
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->animateScrollLocked()Z

    move-result v0

    goto :goto_0

    .line 1510
    :sswitch_1
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->animateBounceLocked()Z

    move-result v0

    goto :goto_0

    .line 1512
    :sswitch_2
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->animateZoomLocked()Z

    move-result v0

    goto :goto_0

    .line 1514
    :sswitch_3
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->animatePinchLocked()Z

    move-result v0

    goto :goto_0

    .line 1516
    :sswitch_4
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->animateFlingLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1506
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method private animatePinchLocked()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v5, 0x4480

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1973
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

    .line 1974
    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->update()V

    .line 1976
    iget-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mPinchFrames:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mPinchFrames:J

    .line 1977
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mPinchMotionFilter:Lcom/android/browser/MotionFilter;

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/android/browser/MotionFilter;->filter(F)F

    move-result v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1980
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1981
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1986
    :cond_0
    :goto_0
    new-array v1, v9, [F

    .line 1987
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    aput v2, v1, v7

    .line 1988
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, v1, v8

    .line 1990
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1991
    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1993
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v4, v7

    .line 1994
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v8

    move v2, v7

    .line 1996
    :goto_1
    if-ge v2, v9, :cond_4

    .line 1997
    aget v3, v1, v2

    aget v4, v1, v2

    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1998
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v5, v5, v2

    int-to-float v5, v5

    add-float/2addr v5, v3

    aput v5, v4, v2

    .line 1999
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    aget v5, v5, v2

    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v4, v2

    .line 2000
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    neg-float v5, v3

    float-to-int v5, v5

    aput v5, v4, v2

    .line 2001
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v5, v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    div-float/2addr v5, v6

    sub-float v3, v5, v3

    float-to-int v3, v3

    aput v3, v4, v2

    .line 2002
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v2

    if-gez v3, :cond_3

    .line 2003
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v3, v2

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mNewScroll:[F

    aget v5, v5, v2

    float-to-int v5, v5

    sub-int/2addr v4, v5

    aput v4, v3, v2

    .line 2004
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 1996
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1982
    :cond_2
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1983
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    goto/16 :goto_0

    .line 2005
    :cond_3
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v4, v4, v2

    if-le v3, v4, :cond_1

    .line 2006
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollInt:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mNewScrollMax:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 2007
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v5, v4, v2

    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    div-float/2addr v3, v6

    float-to-int v3, v3

    sub-int v3, v5, v3

    aput v3, v4, v2

    .line 2008
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v2

    aput v4, v3, v2

    goto :goto_2

    .line 2013
    :cond_4
    sget-boolean v1, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v1, :cond_6

    .line 2014
    const-string v1, ""

    .line 2015
    iget-boolean v2, p0, Lcom/android/browser/WebGLAnimator;->mPrintFirstPinch:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mSecondPointerDownMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms @ frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mPinchFrames:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2017
    iput-boolean v7, p0, Lcom/android/browser/WebGLAnimator;->mPrintFirstPinch:Z

    .line 2020
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCALE: Prog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->isInProgress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Span="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->getFocusY()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTargetZoomScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mZoomScale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 2025
    :cond_6
    return v8
.end method

.method private animateScrollLocked()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/high16 v9, 0x3fc0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1526
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->getOneFingerXY([I)Z

    move-result v0

    .line 1529
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v2, v2, v7

    aput v2, v1, v7

    .line 1530
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v2, v2, v8

    aput v2, v1, v8

    .line 1531
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mMotionFilter:Lcom/android/browser/MotionFilter;

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    invoke-virtual {v1, v2}, Lcom/android/browser/MotionFilter;->filter([I)V

    .line 1533
    iget-boolean v1, p0, Lcom/android/browser/WebGLAnimator;->mStationary:Z

    if-eqz v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mStationaryPointerPos:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    .line 1535
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mStationaryPointerPos:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v3, v3, v8

    sub-int/2addr v2, v3

    .line 1536
    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    const/16 v4, 0x40

    if-le v3, v4, :cond_0

    .line 1537
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1538
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1539
    int-to-float v5, v3

    int-to-float v6, v4

    mul-float/2addr v6, v9

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->isWebViewFixedWidth()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1540
    iput v10, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1541
    if-lez v1, :cond_4

    move v3, v8

    :goto_0
    iput-boolean v3, p0, Lcom/android/browser/WebGLAnimator;->mSnapPositive:Z

    .line 1549
    :goto_1
    iput-boolean v7, p0, Lcom/android/browser/WebGLAnimator;->mStationary:Z

    .line 1550
    sget-boolean v3, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disabled mStationary: deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", deltaY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", snap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1554
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/WebGLAnimator;->mStationary:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1555
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->adjustSnapScrollMode()V

    .line 1557
    :cond_1
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 1558
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    aget v2, v2, v8

    aput v2, v1, v8

    :cond_2
    :goto_2
    move v1, v7

    .line 1564
    :goto_3
    if-ge v1, v10, :cond_a

    .line 1565
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 1566
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v3, v3, v1

    if-ge v2, v3, :cond_9

    .line 1568
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 1564
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v3, v7

    .line 1541
    goto/16 :goto_0

    .line 1542
    :cond_5
    int-to-float v4, v4

    int-to-float v3, v3

    mul-float/2addr v3, v9

    cmpl-float v3, v4, v3

    if-lez v3, :cond_7

    .line 1543
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1544
    if-lez v2, :cond_6

    move v3, v8

    :goto_5
    iput-boolean v3, p0, Lcom/android/browser/WebGLAnimator;->mSnapPositive:Z

    goto/16 :goto_1

    :cond_6
    move v3, v7

    goto :goto_5

    .line 1546
    :cond_7
    iput v7, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    goto/16 :goto_1

    .line 1559
    :cond_8
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1560
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFilteredPointerPos:[I

    aget v2, v2, v7

    aput v2, v1, v7

    goto :goto_2

    .line 1572
    :cond_9
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v3, v3, v1

    if-le v2, v3, :cond_3

    .line 1574
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v3, v3, v1

    aput v3, v2, v1

    goto :goto_4

    .line 1582
    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-ltz v1, :cond_b

    if-eqz v0, :cond_c

    .line 1583
    :cond_b
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v1, v2, v0}, Lcom/android/browser/WebGLAnimator;->getMotionEventFromXY(IIZ)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1584
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/browser/WebGLAnimator;->trackVelocity(Landroid/view/MotionEvent;ZZ)V

    .line 1585
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    :cond_c
    :goto_6
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v7

    if-gtz v1, :cond_d

    .line 1593
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aput v7, v1, v7

    .line 1596
    :cond_d
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mLastPointerPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v2, v2, v7

    aput v2, v1, v7

    .line 1597
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mLastPointerPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mPointerPos:[I

    aget v2, v2, v8

    aput v2, v1, v8

    .line 1599
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->constraintScaleForScrollAndFling()V

    .line 1601
    sget-boolean v1, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScrollLocked: mScrollPos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), dx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    aget v3, v3, v7

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v8

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    aget v3, v3, v8

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1604
    :cond_e
    if-nez v0, :cond_f

    .line 1611
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->needFling()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1612
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 1613
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    .line 1614
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    .line 1615
    const-string v0, "changeStateTo (SCROLL) => FLING  *** by GL THREAD ***"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 1631
    :cond_f
    return v8

    .line 1587
    :catch_0
    move-exception v1

    goto/16 :goto_6
.end method

.method private animateZoomLocked()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v4, 0x3f80

    .line 1953
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomStartMs:J

    sub-long/2addr v0, v2

    long-to-int v11, v0

    .line 1955
    .local v11, elapsed:I
    int-to-long v0, v11

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1956
    iget-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    int-to-long v2, v11

    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mDTTargetZoomScale:F

    invoke-static/range {v0 .. v5}, Lcom/android/browser/Kinetic;->getScaleDecel(JJFF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1969
    :goto_0
    return v12

    .line 1957
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mDTBounceBack:Z

    if-eqz v0, :cond_1

    int-to-long v0, v11

    const-wide/16 v2, 0x2

    iget-wide v5, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    mul-long/2addr v2, v5

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1958
    int-to-long v0, v11

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    sub-long/2addr v0, v2

    long-to-int v11, v0

    .line 1959
    iget-wide v5, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    int-to-long v7, v11

    iget v9, p0, Lcom/android/browser/WebGLAnimator;->mDTTargetZoomScale:F

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/android/browser/Kinetic;->getScaleDecel(JJFF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    goto :goto_0

    .line 1961
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mDTBounceBack:Z

    if-eqz v0, :cond_2

    .line 1962
    iput v4, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1966
    :goto_1
    invoke-direct {p0, v12}, Lcom/android/browser/WebGLAnimator;->requestStateChange(I)V

    goto :goto_0

    .line 1964
    :cond_2
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mDTTargetZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    goto :goto_1
.end method

.method private declared-synchronized changeStateTo(I)V
    .locals 9
    .parameter "newState"

    .prologue
    const/4 v8, 0x1

    const-string v0, "Scroll"

    .line 596
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 598
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 599
    .local v6, oldState:I
    iput p1, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 601
    if-eq v6, p1, :cond_0

    .line 602
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mGlThreadID:I

    if-ltz v0, :cond_0

    .line 604
    if-ne p1, v8, :cond_4

    .line 605
    const/4 v7, 0x0

    .line 610
    .local v7, prio:I
    :goto_0
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mGlThreadID:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    .line 614
    .end local v7           #prio:I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStateTo ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 617
    shl-int/lit8 v0, v6, 0x7

    or-int/2addr v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 718
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->unimplemented()V

    .line 721
    :goto_1
    :sswitch_0
    if-ne p1, v8, :cond_3

    .line 722
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setIsInProgress(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :cond_3
    monitor-exit p0

    return-void

    .line 607
    :cond_4
    const/4 v7, -0x4

    .restart local v7       #prio:I
    goto :goto_0

    .line 619
    .end local v7           #prio:I
    :sswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->startPinchFromScrollState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 596
    .end local v6           #oldState:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 623
    .restart local v6       #oldState:I
    :sswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownMs:J

    .line 624
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    .line 625
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->reset()V

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mIsPinchCenterInited:Z

    .line 627
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->update()V

    .line 628
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->getOneFingerXY([I)Z

    .line 629
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 630
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->refrainUpdateTextureBitmap()V

    .line 632
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownStale:Z

    .line 633
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartMs:J

    goto :goto_1

    .line 640
    :sswitch_3
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reduceWebViewPriority()V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mStationary:Z

    .line 642
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartMs:J

    .line 643
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartScale:F

    .line 644
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    .line 645
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 646
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    .line 647
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 648
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap(J)V

    goto/16 :goto_1

    .line 650
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    goto/16 :goto_1

    .line 655
    :sswitch_4
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_7

    const-string v1, "Scroll"

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartMs:J

    iget-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/WebGLAnimator;->showFPS(Ljava/lang/String;JJ)V

    .line 656
    :cond_7
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->hideLocked()V

    goto/16 :goto_1

    .line 660
    :sswitch_5
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_8

    const-string v1, "Scroll"

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartMs:J

    iget-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/WebGLAnimator;->showFPS(Ljava/lang/String;JJ)V

    .line 661
    :cond_8
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->hideLocked()V

    goto/16 :goto_1

    .line 667
    :sswitch_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mStationary:Z

    .line 668
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mStationaryPointerPos:[I

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->getOneFingerXY([I)Z

    .line 669
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->obtainNewVelocityTracker()Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 673
    :sswitch_7
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->initBounce()V

    goto/16 :goto_1

    .line 677
    :sswitch_8
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    .line 678
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    goto/16 :goto_1

    .line 683
    :sswitch_9
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setIsInProgress(Z)V

    .line 685
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->startPinch()V

    .line 686
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    goto/16 :goto_1

    .line 690
    :sswitch_a
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->hideLocked()V

    goto/16 :goto_1

    .line 694
    :sswitch_b
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->initBounce()V

    goto/16 :goto_1

    .line 698
    :sswitch_c
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->initBounce()V

    .line 699
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    goto/16 :goto_1

    .line 703
    :sswitch_d
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_9

    const-string v1, "Scroll"

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartMs:J

    iget-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/WebGLAnimator;->showFPS(Ljava/lang/String;JJ)V

    .line 704
    :cond_9
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->hideLocked()V

    goto/16 :goto_1

    .line 708
    :sswitch_e
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 709
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    .line 710
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    goto/16 :goto_1

    .line 714
    :sswitch_f
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->hideLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 617
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_2
        0x90 -> :sswitch_9
        0xa0 -> :sswitch_e
        0x101 -> :sswitch_0
        0x104 -> :sswitch_3
        0x110 -> :sswitch_9
        0x201 -> :sswitch_4
        0x208 -> :sswitch_8
        0x210 -> :sswitch_1
        0x240 -> :sswitch_7
        0x401 -> :sswitch_d
        0x404 -> :sswitch_6
        0x440 -> :sswitch_c
        0x801 -> :sswitch_a
        0x804 -> :sswitch_6
        0x840 -> :sswitch_b
        0x1001 -> :sswitch_f
        0x2001 -> :sswitch_5
        0x2004 -> :sswitch_6
    .end sparse-switch
.end method

.method private checkWebViewScrollAndZoom()Z
    .locals 2

    .prologue
    .line 828
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/WebGLAnimator;->_setWebViewScrollAndZoom(ZZ)Z

    move-result v0

    return v0
.end method

.method private constraintScaleForScrollAndFling()V
    .locals 3

    .prologue
    .line 1641
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1642
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    .line 1659
    .local v0, targetScale:F
    :goto_0
    return-void

    .line 1643
    .end local v0           #targetScale:F
    :cond_0
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1644
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    .restart local v0       #targetScale:F
    goto :goto_0

    .line 1646
    .end local v0           #targetScale:F
    :cond_1
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .restart local v0       #targetScale:F
    goto :goto_0
.end method

.method private getActionEx(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "ev"

    .prologue
    .line 1381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1388
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1382
    :pswitch_1
    const/16 v0, 0x80

    goto :goto_0

    .line 1383
    :pswitch_2
    const/16 v0, 0x100

    goto :goto_0

    .line 1384
    :pswitch_3
    const/16 v0, 0x200

    goto :goto_0

    .line 1385
    :pswitch_4
    const/16 v0, 0x400

    goto :goto_0

    .line 1386
    :pswitch_5
    const/16 v0, 0x800

    goto :goto_0

    .line 1381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getConfigString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, ","

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScrollPos = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), min = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), max = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") mZoomCenter = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mZoomScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMotionEventFromXY(IIZ)Landroid/view/MotionEvent;
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "fingerIsDown"

    .prologue
    .line 2384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2385
    .local v0, downTime:J
    move-wide v2, v0

    .line 2386
    .local v2, eventTime:J
    const/4 v7, 0x0

    .line 2387
    .local v7, metaState:I
    if-eqz p3, :cond_0

    const/4 v5, 0x2

    move v4, v5

    .line 2389
    .local v4, action:I
    :goto_0
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2391
    .local v8, ev:Landroid/view/MotionEvent;
    return-object v8

    .line 2387
    .end local v4           #action:I
    .end local v8           #ev:Landroid/view/MotionEvent;
    :cond_0
    const/4 v5, 0x1

    move v4, v5

    goto :goto_0
.end method

.method private getOneFingerXY([I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2405
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    if-nez v0, :cond_0

    .line 2406
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    invoke-virtual {v0}, Landroid/view/PointerDevice;->newPointerStates()[Landroid/view/PointerDevice$PointerState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    .line 2408
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    invoke-virtual {v0, v1}, Landroid/view/PointerDevice;->update([Landroid/view/PointerDevice$PointerState;)V

    move v0, v3

    .line 2411
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 2412
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/view/PointerDevice$PointerState;->pressed:Z

    if-ne v1, v4, :cond_3

    .line 2413
    sget-boolean v1, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v1, :cond_1

    .line 2414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOneFingerXY id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 2417
    :cond_1
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/view/PointerDevice$PointerState;->x:I

    aput v1, p1, v3

    .line 2418
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v0, v1, v0

    iget v0, v0, Landroid/view/PointerDevice$PointerState;->y:I

    aput v0, p1, v4

    move v0, v4

    .line 2424
    :goto_1
    if-nez v0, :cond_2

    .line 2425
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    invoke-virtual {v1, p1}, Landroid/view/PointerDevice;->getXY([I)V

    .line 2426
    sget-boolean v1, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v1, :cond_2

    .line 2427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOneFingerXY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 2431
    :cond_2
    return v0

    .line 2411
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private getStateName(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->stateNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 157
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->stateNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 161
    :goto_1
    return-object v1

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private hideLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    .line 766
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mHideLockedStartMs:J

    .line 769
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->requestRender()V

    .line 774
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->refrainUpdateTextureBitmap()V

    .line 777
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->pauseGLLocked()V

    .line 778
    iput-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mDrawingLastFrame:Z

    .line 781
    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 784
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 785
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    sget v3, Lcom/android/browser/WebGLAnimator;->MAX_HIDE_LOCKSCREEN_SAME_SIZE_MS:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTime:J

    .line 786
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    sget v3, Lcom/android/browser/WebGLAnimator;->MIN_HIDE_LOCKSCREEN_SAME_SIZE_MS:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTimeMin:J

    .line 791
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 793
    const-string v1, "mZoomView.hide()"

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 799
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    move v0, v6

    .line 800
    .local v0, updatePlugins:Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->setWebViewScrollAndZoom(Z)V

    .line 801
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 802
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->setGrabFromNextCanvasPost()V

    .line 805
    :cond_0
    return-void

    .line 788
    .end local v0           #updatePlugins:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    sget v3, Lcom/android/browser/WebGLAnimator;->MAX_HIDE_LOCKSCREEN_RESIZE_MS:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTime:J

    .line 789
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    sget v3, Lcom/android/browser/WebGLAnimator;->MIN_HIDE_LOCKSCREEN_RESIZE_MS:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTimeMin:J

    goto :goto_0

    .line 799
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method private initBounce()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, ", "

    .line 931
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartMs:J

    .line 934
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 939
    :cond_0
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartZoomScale:F

    .line 940
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    .line 941
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    .line 942
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    .line 944
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartZoomScale:F

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 947
    :cond_1
    sget v0, Lcom/android/browser/WebGLAnimator;->QUICK_BOUNCE_ANIMATION_MS:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mBouncePeriodMs:J

    :goto_0
    move v0, v3

    .line 952
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 953
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 954
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_3

    .line 955
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 952
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 949
    :cond_2
    sget v0, Lcom/android/browser/WebGLAnimator;->BOUNCE_ANIMATION_MS:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mBouncePeriodMs:J

    goto :goto_0

    .line 956
    :cond_3
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_4

    .line 957
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_2

    .line 959
    :cond_4
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_2

    .line 963
    :cond_5
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_6

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOUNCE: period  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mBouncePeriodMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOUNCE: min  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOUNCE: max  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOUNCE: target  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 969
    :cond_6
    return-void
.end method

.method private isState(I)Z
    .locals 1
    .parameter "mask"

    .prologue
    .line 296
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWebViewFixedWidth()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMinZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMaxZoomScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 146
    const-string v0, "WebGLAnimator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private logIfDBG(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "WebGLAnimator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    return-void
.end method

.method private needBounce()Z
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized needFling()Z
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1663
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move v0, v13

    .line 1789
    :goto_0
    monitor-exit p0

    return v0

    .line 1667
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 1668
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    const/4 v1, 0x1

    aget v8, v0, v1

    .line 1669
    const v0, 0x3f99999a

    .line 1671
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mMaximumFling:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1672
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mMaximumFling:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1674
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    neg-int v1, v1

    .line 1675
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    neg-int v2, v2

    .line 1676
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    neg-int v3, v3

    .line 1677
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    neg-int v0, v0

    .line 1679
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v4

    iget-wide v9, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownMs:J

    sub-long/2addr v4, v9

    const-wide/16 v9, 0xfa

    cmp-long v4, v4, v9

    if-gez v4, :cond_13

    .line 1686
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    move v1, v3

    .line 1689
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 1693
    :goto_1
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    if-eqz v2, :cond_3

    .line 1694
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v11, :cond_6

    move v0, v13

    .line 1701
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 1702
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_4

    move v0, v13

    .line 1708
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling: max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    move v2, v13

    .line 1718
    :goto_3
    if-ge v2, v11, :cond_8

    .line 1719
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v2

    .line 1723
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v2

    if-gez v3, :cond_7

    .line 1725
    const-string v3, "Browser"

    const-string v4, "BOUNCE ANIMATION DISABLED shouldn\'t be here!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 1728
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 1729
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1718
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v1, v13

    .line 1697
    goto :goto_2

    .line 1730
    :cond_7
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v4, v4, v2

    if-le v3, v4, :cond_5

    .line 1732
    const-string v3, "Browser"

    const-string v4, "BOUNCE ANIMATION DISABLED shouldn\'t be here!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartPos:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 1735
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 1736
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1739
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    move v1, v13

    .line 1742
    :cond_9
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mFlingBounceStartMs:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    move v0, v13

    .line 1747
    :cond_a
    if-nez v6, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    if-nez v8, :cond_d

    if-nez v1, :cond_d

    :cond_c
    move v0, v13

    .line 1748
    goto/16 :goto_0

    .line 1751
    :cond_d
    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v2

    .line 1752
    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mLastVelocity:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_12

    cmpl-float v3, v2, v7

    if-lez v3, :cond_12

    .line 1753
    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mLastVelY:F

    float-to-double v3, v3

    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mLastVelX:F

    float-to-double v9, v5

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    int-to-double v9, v0

    int-to-double v11, v1

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 1756
    const v4, 0x40b4f4ab

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_e

    const v4, 0x3f20d97c

    cmpg-float v4, v3, v4

    if-gez v4, :cond_11

    .line 1757
    :cond_e
    int-to-float v1, v1

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mLastVelX:F

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/android/browser/WebGLAnimator;->mLastVelocity:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1758
    int-to-float v0, v0

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mLastVelY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/browser/WebGLAnimator;->mLastVelocity:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling vx= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    :goto_5
    move v4, v0

    move v3, v1

    .line 1770
    :goto_6
    int-to-float v0, v3

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mLastVelX:F

    .line 1771
    int-to-float v0, v4

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mLastVelY:F

    .line 1772
    int-to-double v0, v3

    int-to-double v9, v4

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mLastVelocity:F

    .line 1774
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 1775
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1776
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 1777
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingOOBStartMs:[J

    const/4 v1, 0x0

    const-wide/16 v9, -0x1

    aput-wide v9, v0, v1

    .line 1778
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingOOBStartMs:[J

    const/4 v1, 0x1

    const-wide/16 v9, -0x1

    aput-wide v9, v0, v1

    .line 1780
    if-nez v6, :cond_f

    .line 1781
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1783
    :cond_f
    if-nez v8, :cond_10

    .line 1784
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1786
    :cond_10
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    sub-int v5, v13, v5

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v9, 0x1

    aget v7, v7, v9

    sub-int v7, v13, v7

    iget-object v9, p0, Lcom/android/browser/WebGLAnimator;->mFlingExtra:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    move v0, v14

    .line 1789
    goto/16 :goto_0

    .line 1761
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFling missed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x40c90fdb

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1764
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFling start last="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/browser/WebGLAnimator;->mLastVelocity:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScrollPos=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v0

    move v3, v1

    goto/16 :goto_6

    :cond_13
    move v0, v2

    goto/16 :goto_1
.end method

.method private now()J
    .locals 2

    .prologue
    .line 1193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private obtainNewVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 2370
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 2372
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2376
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2378
    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2379
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    .line 2380
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private pauseGLLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 744
    iput-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mGLHasPaused:Z

    .line 745
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTime:J

    .line 746
    iput-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    .line 748
    const-string v2, "pauseGLLocked enter"

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    .line 750
    .local v0, started:J
    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/WebGLAnimator;->mGLHasPaused:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 752
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v2

    goto :goto_0

    .line 755
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/WebGLAnimator;->mGLHasPaused:Z

    if-nez v2, :cond_1

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseGLLocked has failed -- GL thread is dead or stuck?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 758
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseGLLocked done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, mGLHasPaused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/browser/WebGLAnimator;->mGLHasPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private declared-synchronized requestStateChange(I)V
    .locals 3
    .parameter "reqState"

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 577
    .local v0, startState:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/browser/WebGLAnimator$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/browser/WebGLAnimator$1;-><init>(Lcom/android/browser/WebGLAnimator;II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 576
    .end local v0           #startState:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resumeUpdateTextureBitmap()V
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->resumeUpdateContents()V

    .line 1265
    return-void
.end method

.method private resumeUpdateTextureBitmap(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/WebGLAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/browser/WebGLAnimator$2;-><init>(Lcom/android/browser/WebGLAnimator;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1283
    return-void
.end method

.method private setWebViewScrollAndZoom()V
    .locals 2

    .prologue
    .line 832
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/WebGLAnimator;->_setWebViewScrollAndZoom(ZZ)Z

    .line 833
    return-void
.end method

.method private setWebViewScrollAndZoom(Z)V
    .locals 1
    .parameter "updatePlugins"

    .prologue
    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/browser/WebGLAnimator;->_setWebViewScrollAndZoom(ZZ)Z

    .line 837
    return-void
.end method

.method private shouldNotReachHere(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 2325
    return-void
.end method

.method private showFPS(Ljava/lang/String;JJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x1

    .line 1197
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 1198
    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    move-wide v0, v3

    .line 1201
    :cond_0
    long-to-double v2, p4

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    long-to-double v4, v0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 1202
    long-to-double v3, p4

    const-wide v5, 0x40c3880000000000L

    mul-double/2addr v3, v5

    long-to-double v5, v0

    div-double/2addr v3, v5

    double-to-int v3, v3

    rem-int/lit8 v3, v3, 0xa

    .line 1203
    long-to-double v4, p4

    const-wide v6, 0x40f86a0000000000L

    mul-double/2addr v4, v6

    long-to-double v0, v0

    div-double v0, v4, v0

    double-to-int v0, v0

    rem-int/lit8 v0, v0, 0xa

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " FPS = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method private startPinch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2064
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reduceWebViewPriority()V

    .line 2065
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aput v3, v0, v3

    .line 2066
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aput v3, v0, v4

    .line 2067
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 2068
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 2069
    iput-boolean v4, p0, Lcom/android/browser/WebGLAnimator;->mHasPinched:Z

    .line 2070
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPinchMotionFilter:Lcom/android/browser/MotionFilter;

    const/high16 v1, 0x4480

    invoke-virtual {v0, v1}, Lcom/android/browser/MotionFilter;->reset(F)V

    .line 2071
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->update()V

    .line 2072
    iput-boolean v4, p0, Lcom/android/browser/WebGLAnimator;->mPrintFirstPinch:Z

    .line 2073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mPinchFrames:J

    .line 2074
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 2075
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->requestRender()V

    .line 2076
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    .line 2077
    return-void
.end method

.method private startPinchFromScrollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2054
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    .line 2055
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPinchMotionFilter:Lcom/android/browser/MotionFilter;

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mTargetZoomScale:F

    const/high16 v2, 0x4480

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/browser/MotionFilter;->reset(F)V

    .line 2056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mHasPinched:Z

    .line 2057
    iput-boolean v3, p0, Lcom/android/browser/WebGLAnimator;->mIsPinchCenterInited:Z

    .line 2058
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

    invoke-virtual {v0}, Lcom/android/browser/DirectScaleGestureDetector;->reset()V

    .line 2059
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mMotionFilter:Lcom/android/browser/MotionFilter;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    invoke-virtual {v0, v1}, Lcom/android/browser/MotionFilter;->reset([I)V

    .line 2060
    iput-boolean v3, p0, Lcom/android/browser/WebGLAnimator;->mPrintFirstPinch:Z

    .line 2061
    return-void
.end method

.method private syncPointerDevice(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v2

    .line 279
    .local v2, started:J
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/view/PointerDevice;->syncWithMainLooper(J)V

    .line 280
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    .line 281
    .local v0, end:J
    sget-boolean v4, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v4, :cond_0

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPointerDevice -- waited for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method private trackVelocity(Landroid/view/MotionEvent;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v0, -0x1869f

    .line 2346
    if-eqz p2, :cond_0

    .line 2347
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->obtainNewVelocityTracker()Landroid/view/VelocityTracker;

    .line 2348
    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mLastTrackMoveX:I

    .line 2349
    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mLastTrackMoveY:I

    .line 2351
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2353
    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mLastTrackMoveX:I

    .line 2354
    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mLastTrackMoveY:I

    .line 2356
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2357
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2359
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2360
    :cond_2
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 2361
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2364
    :cond_3
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_4

    .line 2365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVelocityTracker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 2367
    :cond_4
    return-void
.end method

.method private unimplemented()V
    .locals 1

    .prologue
    .line 2320
    const-string v0, "unimplemented"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->shouldNotReachHere(Ljava/lang/String;)V

    .line 2321
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/WebGLAnimator;->abortAnimation(Z)V

    .line 512
    return-void
.end method

.method public abortAnimation(Z)V
    .locals 2
    .parameter "waitForHide"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    monitor-enter v0

    .line 518
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/browser/WebGLAnimator;->abortAnimationLocked(Z)V

    .line 519
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized abortAnimationLocked(Z)V
    .locals 4
    .parameter "waitForHide"

    .prologue
    const/4 v2, 0x1

    .line 522
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortAnimation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 523
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 573
    :goto_0
    monitor-exit p0

    return-void

    .line 526
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mAbortingAnimation:Z

    .line 527
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not consider this case: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->shouldNotReachHere(Ljava/lang/String;)V

    .line 563
    :goto_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTrackerQuickFlick:Landroid/view/VelocityTracker;

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setIsInProgress(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 529
    :sswitch_0
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    goto :goto_1

    .line 536
    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 537
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->needBounce()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 541
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 542
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mBounceTargetZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 545
    :cond_3
    if-eqz p1, :cond_4

    .line 546
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->hideLocked()V

    .line 555
    :goto_2
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 556
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    .line 557
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    goto :goto_1

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 549
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 550
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2

    .line 552
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->setWebViewScrollAndZoom()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public assertCalledOnGLThread()V
    .locals 0

    .prologue
    .line 2313
    return-void
.end method

.method public assertCalledOnUIThread()V
    .locals 0

    .prologue
    .line 2317
    return-void
.end method

.method public doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, ", "

    .line 2261
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMinZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    .line 2262
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMaxZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    .line 2265
    iget v0, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    div-float/2addr v0, p1

    .line 2267
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    aput v2, v1, v7

    .line 2268
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    aput v2, v1, v8

    .line 2274
    iget v1, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    div-float/2addr v1, v0

    .line 2275
    iget v2, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    div-float/2addr v2, v0

    .line 2278
    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v7

    int-to-float v3, v3

    .line 2279
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v8

    int-to-float v4, v4

    .line 2281
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomStartMs:J

    .line 2283
    cmpl-float v5, v0, v10

    if-nez v5, :cond_0

    .line 2284
    const v5, 0x3f866666

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mDTTargetZoomScale:F

    .line 2285
    iput-boolean v8, p0, Lcom/android/browser/WebGLAnimator;->mDTBounceBack:Z

    .line 2286
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    .line 2287
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    .line 2288
    sget v5, Lcom/android/browser/WebGLAnimator;->ZOOM_BOUNCE_ANIMATION_MS:I

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    .line 2299
    :goto_0
    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v6}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    .line 2301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doDoubleTap: ratio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", zoomCenter = ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") dst(after) = ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") dst(before) = ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") src(before) = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") zoomCenter(before) = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 2308
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    .line 2309
    return-void

    .line 2290
    :cond_0
    mul-float v5, v1, v0

    sub-float v5, v3, v5

    sub-float v6, v10, v0

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    .line 2291
    mul-float v5, v2, v0

    sub-float v5, v4, v5

    sub-float v6, v10, v0

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    .line 2292
    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    .line 2293
    iget v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v6, v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    .line 2294
    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mDTTargetZoomScale:F

    .line 2295
    iput-boolean v7, p0, Lcom/android/browser/WebGLAnimator;->mDTBounceBack:Z

    .line 2296
    sget v5, Lcom/android/browser/WebGLAnimator;->ZOOM_ANIMATION_MS:I

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/browser/WebGLAnimator;->mDTZoomDuration:J

    goto/16 :goto_0
.end method

.method getEdgeAnimationStatus()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    return v0
.end method

.method public getScrollX()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getScrollY()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getTouchDownMs()J
    .locals 2

    .prologue
    .line 2436
    iget-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownMs:J

    return-wide v0
.end method

.method public getZoomCenterX()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    return v0
.end method

.method public getZoomCenterY()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    return v0
.end method

.method public getZoomScale()F
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    return v0
.end method

.method initPointerDevice()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerDevice;->obtain(Landroid/content/Context;)Landroid/view/PointerDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    .line 269
    new-instance v0, Lcom/android/browser/DirectScaleGestureDetector;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/browser/WebGLAnimator$ScaleDetectorListener;-><init>(Lcom/android/browser/WebGLAnimator;Lcom/android/browser/WebGLAnimator$1;)V

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/DirectScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;Landroid/view/PointerDevice;)V

    iput-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScaleDetector:Lcom/android/browser/DirectScaleGestureDetector;

    goto :goto_0
.end method

.method public declared-synchronized interceptMotionEvent(Landroid/view/MotionEvent;)I
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 325
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 326
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->initPointerDevice()V

    .line 327
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->syncPointerDevice(Landroid/view/MotionEvent;)V

    .line 329
    sget-boolean v6, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v6, :cond_0

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptMotionEvent (mState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    invoke-direct {p0, v7}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ptrCnt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 331
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   ptr["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", x= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 331
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 337
    .end local v5           #i:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 338
    .local v3, ev_x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 339
    .local v4, ev_y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 374
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-lt v6, v8, :cond_2

    .line 376
    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mActiveTabsPageGestureDetector:Lcom/android/browser/ActiveTabsPageGestureDetector;

    invoke-virtual {v6, p1}, Lcom/android/browser/ActiveTabsPageGestureDetector;->interceptMotionEvent(Landroid/view/MotionEvent;)V

    .line 378
    :cond_2
    iget-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mAbortingAnimation:Z

    if-eqz v6, :cond_3

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 380
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mAbortingAnimation:Z

    .line 388
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v10, :cond_7

    .line 389
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 391
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->getActionEx(Landroid/view/MotionEvent;)I

    move-result v6

    const/16 v7, 0x800

    if-ne v6, v7, :cond_6

    .line 392
    const-string v6, "interceptMotionEvent ACTION_POINTER_UP special case"

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 393
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/browser/WebGLAnimator;->startScrolling(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v10

    .line 480
    :goto_2
    monitor-exit p0

    return v6

    .line 341
    :pswitch_0
    :try_start_1
    iput v3, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosX:F

    .line 342
    iput v4, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosY:F

    .line 344
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->resetEdgeAnimationStatus()V

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MotionEvent.ACTION_DOWN: mEdgeToAnimate  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mEdgeAnimating="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 325
    .end local v3           #ev_x:F
    .end local v4           #ev_y:F
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 349
    .restart local v3       #ev_x:F
    .restart local v4       #ev_y:F
    :pswitch_1
    :try_start_2
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosX:F

    sub-float v1, v3, v6

    .line 350
    .local v1, dX:F
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosY:F

    sub-float v2, v4, v6

    .line 351
    .local v2, dY:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 353
    sget-boolean v6, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v6, :cond_4

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptMotionEvent motion movement is too small! ignore it! mFirstTouchPosX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mFirstTouchPosY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , ev_x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ev_y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , dX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/browser/WebGLAnimator;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 359
    :cond_4
    const/4 v6, -0x1

    goto/16 :goto_2

    .line 364
    .end local v1           #dX:F
    .end local v2           #dY:F
    :pswitch_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosX:F

    .line 365
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mFirstTouchPosY:F

    goto/16 :goto_1

    .line 382
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aborting: ignore this event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    move v6, v11

    .line 383
    goto/16 :goto_2

    :cond_6
    move v6, v11

    .line 399
    goto/16 :goto_2

    .line 403
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_8

    .line 404
    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mLocationOnScreen:[I

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 405
    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mLocationOnScreen:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/browser/WebGLAnimator;->mLocationOnScreen:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/view/PointerDevice;->setCoordOrigin(II)V

    .line 408
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/browser/WebGLAnimator;->getActionEx(Landroid/view/MotionEvent;)I

    move-result v0

    .line 409
    .local v0, actionEX:I
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    or-int/2addr v6, v0

    sparse-switch v6, :sswitch_data_0

    .line 471
    const/16 v6, 0x400

    if-ne v0, v6, :cond_9

    .line 472
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/browser/WebGLAnimator;->mSecondPointerDownMs:J

    .line 474
    :cond_9
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    if-ne v6, v10, :cond_a

    move v6, v11

    .line 475
    goto/16 :goto_2

    .line 411
    :sswitch_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/android/browser/WebGLAnimator;->trackVelocity(Landroid/view/MotionEvent;ZZ)V

    .line 412
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    .line 413
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/browser/WebGLAnimator;->mSecondPointerDownMs:J

    move v6, v11

    .line 414
    goto/16 :goto_2

    .line 417
    :sswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/android/browser/WebGLAnimator;->trackVelocity(Landroid/view/MotionEvent;ZZ)V

    move v6, v11

    .line 418
    goto/16 :goto_2

    .line 421
    :sswitch_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    move v6, v11

    .line 422
    goto/16 :goto_2

    .line 429
    :sswitch_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/android/browser/WebGLAnimator;->trackVelocity(Landroid/view/MotionEvent;ZZ)V

    .line 430
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->needFling()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 431
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    .line 479
    :cond_a
    :goto_3
    :sswitch_4
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->isWebViewFixedWidth()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_b
    move v6, v11

    .line 480
    goto/16 :goto_2

    .line 432
    :cond_c
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->needBounce()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 433
    const/16 v6, 0x40

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    goto :goto_3

    .line 435
    :cond_d
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    .line 436
    iget-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mHasPinched:Z

    if-nez v6, :cond_a

    move v6, v11

    .line 437
    goto/16 :goto_2

    .line 447
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->restartScrolling()V

    move v6, v10

    .line 448
    goto/16 :goto_2

    .line 451
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->restartScrolling()V

    move v6, v10

    .line 452
    goto/16 :goto_2

    .line 455
    :sswitch_7
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->needBounce()Z

    move-result v6

    if-nez v6, :cond_e

    .line 456
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    goto :goto_3

    .line 458
    :cond_e
    const/16 v6, 0x40

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    goto :goto_3

    .line 463
    :sswitch_8
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->isWebViewFixedWidth()Z

    move-result v6

    if-nez v6, :cond_f

    .line 464
    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    :goto_4
    move v6, v10

    .line 468
    goto/16 :goto_2

    .line 466
    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownStale:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x88 -> :sswitch_5
        0xa0 -> :sswitch_5
        0xc0 -> :sswitch_5
        0x102 -> :sswitch_2
        0x104 -> :sswitch_3
        0x108 -> :sswitch_4
        0x110 -> :sswitch_7
        0x202 -> :sswitch_1
        0x404 -> :sswitch_8
        0x810 -> :sswitch_6
    .end sparse-switch
.end method

.method public isAbortingAnimation()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mAbortingAnimation:Z

    return v0
.end method

.method isShowScrollbar()Z
    .locals 2

    .prologue
    .line 736
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needEdgeAnimation()I
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v10, 0x41f0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "mEdgeAnimating="

    .line 994
    .line 997
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 999
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    .line 1000
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->bFlingToEdge:Z

    if-ne v0, v9, :cond_6

    .line 1001
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v8

    if-gt v0, v1, :cond_20

    .line 1002
    or-int/lit8 v0, v8, 0x1

    .line 1004
    :goto_0
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v8

    if-lt v1, v2, :cond_0

    .line 1005
    or-int/lit8 v0, v0, 0x2

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v9

    if-gt v1, v2, :cond_1

    .line 1008
    or-int/lit8 v0, v0, 0x4

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v9

    if-lt v1, v2, :cond_2

    .line 1011
    or-int/lit8 v0, v0, 0x8

    .line 1013
    :cond_2
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    const/16 v2, 0x78

    if-ge v1, v2, :cond_3

    .line 1014
    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    .line 1016
    :cond_3
    iput v8, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1017
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    if-ne v0, v1, :cond_4

    .line 1020
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(-1,0): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1021
    const/4 v0, -0x1

    .line 1157
    :cond_5
    :goto_1
    return v0

    .line 1024
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(-1): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1025
    const/4 v0, -0x1

    goto :goto_1

    .line 1026
    :cond_7
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(STATE_PINCH): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1028
    iput v8, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1029
    const/4 v0, -0x1

    goto :goto_1

    .line 1032
    :cond_8
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1d

    .line 1033
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1035
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 1036
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1037
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1041
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    iget v4, v4, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-ge v4, v5, :cond_1f

    move v4, v9

    .line 1044
    :goto_2
    iget-object v5, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    iget v5, v5, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    iget v6, v6, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-ge v5, v6, :cond_1e

    move v5, v9

    .line 1048
    :goto_3
    const/high16 v6, 0x4220

    cmpl-float v6, v2, v6

    if-gtz v6, :cond_9

    const/high16 v6, 0x4220

    cmpl-float v6, v3, v6

    if-lez v6, :cond_16

    .line 1049
    :cond_9
    if-eqz v5, :cond_a

    .line 1050
    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v7, v7, v8

    if-gt v6, v7, :cond_11

    .line 1051
    cmpg-float v6, v2, v3

    if-gez v6, :cond_a

    cmpl-float v6, v1, v12

    if-lez v6, :cond_a

    .line 1052
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1053
    if-eqz v4, :cond_a

    .line 1054
    sub-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_10

    .line 1055
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1074
    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    .line 1075
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v9

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v6, v6, v9

    if-gt v4, v6, :cond_14

    .line 1076
    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    cmpl-float v2, v0, v12

    if-lez v2, :cond_b

    .line 1077
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1078
    if-eqz v5, :cond_b

    .line 1079
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v10

    if-gez v2, :cond_13

    .line 1080
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1101
    :cond_b
    :goto_5
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1102
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    aget-wide v0, v0, v8

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 1103
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_c

    .line 1104
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    aput-wide v1, v0, v8

    .line 1106
    :cond_c
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    aget-wide v0, v0, v9

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 1107
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_d

    .line 1108
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v1

    aput-wide v1, v0, v9

    .line 1112
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(1): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1113
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    if-lez v0, :cond_e

    .line 1114
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1145
    :cond_e
    :goto_6
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_f

    .line 1147
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    .line 1149
    :cond_f
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1150
    if-eqz v0, :cond_5

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    if-ne v1, v2, :cond_5

    .line 1151
    const/16 v0, 0x10

    goto/16 :goto_1

    .line 1056
    :cond_10
    neg-float v6, v0

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_a

    .line 1057
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto/16 :goto_4

    .line 1061
    :cond_11
    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v7, v7, v8

    if-lt v6, v7, :cond_a

    .line 1062
    cmpg-float v6, v2, v3

    if-gez v6, :cond_a

    cmpg-float v6, v1, v12

    if-gez v6, :cond_a

    .line 1063
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1064
    if-eqz v4, :cond_a

    .line 1065
    add-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_12

    .line 1066
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto/16 :goto_4

    .line 1067
    :cond_12
    neg-float v6, v0

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_a

    .line 1068
    iget v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto/16 :goto_4

    .line 1081
    :cond_13
    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_b

    .line 1082
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto/16 :goto_5

    .line 1086
    :cond_14
    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v9

    iget-object v6, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v6, v6, v9

    if-lt v4, v6, :cond_b

    .line 1087
    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    cmpg-float v2, v0, v12

    if-gez v2, :cond_b

    .line 1088
    iget v2, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1089
    if-eqz v5, :cond_b

    .line 1090
    neg-float v2, v0

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v10

    if-gez v2, :cond_15

    .line 1091
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto/16 :goto_5

    .line 1092
    :cond_15
    neg-float v0, v0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_b

    .line 1093
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto/16 :goto_5

    .line 1116
    :cond_16
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1117
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(STATE_SCROLL): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1119
    :cond_17
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1120
    if-eqz v5, :cond_18

    .line 1121
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v8

    if-gt v0, v1, :cond_1a

    .line 1122
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1128
    :cond_18
    :goto_7
    if-eqz v4, :cond_19

    .line 1129
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v1, v1, v9

    if-gt v0, v1, :cond_1b

    .line 1130
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1136
    :cond_19
    :goto_8
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1137
    iput-boolean v9, p0, Lcom/android/browser/WebGLAnimator;->bFlingToEdge:Z

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(STATE_FLING): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1143
    :goto_9
    const/16 v0, 0x77

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    goto/16 :goto_6

    .line 1123
    :cond_1a
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v8

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v8

    if-lt v0, v1, :cond_18

    .line 1124
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto :goto_7

    .line 1131
    :cond_1b
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v1, v1, v9

    if-lt v0, v1, :cond_19

    .line 1132
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    goto :goto_8

    .line 1141
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needEdgeAnimation(STATE_PINCH): mEdgeToAnimate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEdgeAnimating="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1156
    :cond_1d
    iput v8, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1157
    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_1e
    move v5, v8

    goto/16 :goto_3

    :cond_1f
    move v4, v8

    goto/16 :goto_2

    :cond_20
    move v0, v8

    goto/16 :goto_0
.end method

.method public declared-synchronized onDrawFrameEnd()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2040
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mDrawingLastFrame:Z

    if-eqz v0, :cond_0

    .line 2041
    const-string v0, "onDrawFrameEnd: mDrawingLastFrame = true"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 2043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mDrawingLastFrame:Z

    .line 2044
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    .line 2046
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2049
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrameStart()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v8, 0x0

    .line 1426
    monitor-enter p0

    .line 1427
    :try_start_0
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mGLHasPaused:Z

    .line 1429
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1430
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    .line 1432
    const-string v2, "onDrawFrameStart: sleeping"

    invoke-direct {p0, v2}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 1435
    :goto_0
    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTime:J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 1436
    iget-boolean v4, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTimeMin:J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 1437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGLWakeupTimeMin - now() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTimeMin:J

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 1449
    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mGLWakeupTime:J

    .line 1450
    iget-boolean v4, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    if-eqz v4, :cond_1

    .line 1451
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1453
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawFrameStart: wake up, slept for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, mWebViewDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sleepTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 1456
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawFrameStart: do nothing in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    invoke-direct {p0, v1}, Lcom/android/browser/WebGLAnimator;->getStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1458
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    :goto_1
    return v0

    .line 1440
    :cond_3
    cmp-long v4, v2, v10

    if-lez v4, :cond_4

    move-wide v2, v10

    .line 1444
    :cond_4
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1445
    :catch_0
    move-exception v2

    .line 1446
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1462
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1461
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->animateLocked()Z

    move-result v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method onEdgeAnimationStart(I)V
    .locals 2
    .parameter

    .prologue
    .line 1174
    iput p1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEdgeAnimationStart: mEdgeAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public onPaused()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    .line 508
    return-void
.end method

.method public onPinchZoomListenerNewScale()V
    .locals 2

    .prologue
    .line 2230
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 2232
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mAbortingAnimation:Z

    if-eqz v0, :cond_1

    .line 2233
    const-string v0, "Aborting: onPinchZoomListenerNewScale"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 2243
    :cond_0
    :goto_0
    return-void

    .line 2237
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMaxZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMinZoomScale()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/WebGLAnimator;->onPinchZoomListenerScaleBegin(FF)V

    goto :goto_0
.end method

.method public declared-synchronized onPinchZoomListenerScaleBegin(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPinchZoomListenerScaleBegin maxWebViewScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minWebViewScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WebViewScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 2197
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mAbortingAnimation:Z

    if-eqz v0, :cond_0

    .line 2198
    const-string v0, "Aborting: onPinchZoomListenerScaleBegin"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    :goto_0
    monitor-exit p0

    return-void

    .line 2202
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->isState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2203
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->isWebViewFixedWidth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2206
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    aput v2, v0, v1

    .line 2207
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    aput v2, v0, v1

    .line 2211
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    div-float v0, p2, v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    .line 2212
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    .line 2214
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    .line 2219
    :cond_1
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mActiveTabsPageGestureDetector:Lcom/android/browser/ActiveTabsPageGestureDetector;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/browser/ActiveTabsPageGestureDetector;->onScaleBegin(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2221
    :cond_2
    :try_start_2
    const-string v0, "events should have been intercepted"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->shouldNotReachHere(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onPinchZoomListenerScaleEnd()V
    .locals 1

    .prologue
    .line 2250
    const-string v0, "event should have been intercepted"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->shouldNotReachHere(Ljava/lang/String;)V

    .line 2251
    return-void
.end method

.method public declared-synchronized onWebViewDrawFinished()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 1402
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebViewDrawFinished: mZoomView.isVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 1403
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mLastWebViewDrawFinishedMs:J

    .line 1404
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    if-nez v0, :cond_0

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mWebViewDone:Z

    .line 1407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1409
    :cond_0
    iget-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mHideLockedStartMs:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 1410
    const-string v0, ""

    .line 1411
    iget-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "; from finger lift = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/browser/WebGLAnimator;->mLastWebViewDrawFinishedMs:J

    iget-wide v3, p0, Lcom/android/browser/WebGLAnimator;->mBounceStartMs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWebViewDrawFinished: hideLocked() completed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/browser/WebGLAnimator;->mLastWebViewDrawFinishedMs:J

    iget-wide v4, p0, Lcom/android/browser/WebGLAnimator;->mHideLockedStartMs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mHideLockedStartMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    :cond_2
    monitor-exit p0

    return-void

    .line 1402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refrainUpdateTextureBitmap()V
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->refrainUpdateContents()V

    .line 1261
    return-void
.end method

.method public registerGLThread()V
    .locals 2

    .prologue
    .line 2339
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mGlThreadID:I

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGlThreadID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/WebGLAnimator;->mGlThreadID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->logIfDBG(Ljava/lang/String;)V

    .line 2341
    return-void
.end method

.method resetEdgeAnimationStatus()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 1182
    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeAnimating:I

    .line 1183
    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mEdgeToAnimate:I

    .line 1184
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mVariableEdgeWidth:I

    .line 1185
    iput-boolean v1, p0, Lcom/android/browser/WebGLAnimator;->bFlingToEdge:Z

    .line 1186
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    aput-wide v2, v0, v1

    .line 1187
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mFlingEdgeGlowStartMs:[J

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 1188
    const-string v0, "resetEdgeAnimationStatus:"

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method public restartScrolling()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 1211
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap()V

    .line 1215
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->checkWebViewScrollAndZoom()Z

    .line 1216
    sget-boolean v0, Lcom/android/browser/WebGLAnimator;->DBG:Z

    if-eqz v0, :cond_1

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartScrolling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->getConfigString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->log(Ljava/lang/String;)V

    .line 1219
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartMs:J

    .line 1221
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 1222
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 1231
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v0, v0, v2

    if-gez v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aput v2, v0, v2

    .line 1234
    :cond_2
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v0, v0, v3

    if-gez v0, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aput v2, v0, v3

    .line 1238
    :cond_3
    iput-boolean v2, p0, Lcom/android/browser/WebGLAnimator;->mStationary:Z

    .line 1239
    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollFrames:J

    .line 1241
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStartScale:F

    .line 1243
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->getOneFingerXY([I)Z

    .line 1244
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mMotionFilter:Lcom/android/browser/MotionFilter;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    invoke-virtual {v0, v1}, Lcom/android/browser/MotionFilter;->reset([I)V

    move v0, v2

    .line 1247
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 1248
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_5

    .line 1249
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    aget v2, v1, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v4, v4, v0

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 1250
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1247
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1251
    :cond_5
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_4

    .line 1252
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    aget v2, v1, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v4, v4, v0

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 1253
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_1

    .line 1256
    :cond_6
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    .line 1257
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    .line 288
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->initPointerDevice()V

    .line 289
    return-void
.end method

.method public startScrolling()V
    .locals 1

    .prologue
    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/WebGLAnimator;->startScrolling(Z)V

    .line 1292
    return-void
.end method

.method startScrolling(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/high16 v8, 0x3fc0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1323
    invoke-virtual {p0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnUIThread()V

    .line 1324
    iget v0, p0, Lcom/android/browser/WebGLAnimator;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1376
    :goto_0
    :sswitch_0
    return-void

    .line 1329
    :sswitch_1
    iput-boolean v7, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownStale:Z

    .line 1332
    :sswitch_2
    iput-boolean v6, p0, Lcom/android/browser/WebGLAnimator;->mHasPinched:Z

    .line 1333
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mZoomScale:F

    .line 1334
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMaxZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mMaxScale:F

    .line 1335
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMinZoomScale()F

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/browser/WebGLAnimator;->mMinScale:F

    .line 1336
    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterX:F

    .line 1337
    iput v2, p0, Lcom/android/browser/WebGLAnimator;->mZoomCenterY:F

    .line 1338
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    aput v2, v1, v6

    aput v2, v0, v6

    .line 1339
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollStart:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mScrollPos:[I

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    aput v2, v1, v7

    aput v2, v0, v7

    .line 1340
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aput v6, v0, v6

    .line 1341
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMin:[I

    aput v6, v0, v7

    .line 1342
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, v6

    .line 1343
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 1344
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v0, v0, v6

    if-gez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aput v6, v0, v6

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aget v0, v0, v7

    if-gez v0, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mScrollMax:[I

    aput v6, v0, v7

    .line 1350
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDownStale:Z

    if-eqz v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mPointerDevice:Landroid/view/PointerDevice;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Landroid/view/PointerDevice;->syncWithMainLooper(J)V

    .line 1352
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->getOneFingerXY([I)Z

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mMotionFilter:Lcom/android/browser/MotionFilter;

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    invoke-virtual {v0, v1}, Lcom/android/browser/MotionFilter;->reset([I)V

    .line 1356
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mLastUIMovePos:[I

    invoke-direct {p0, v0}, Lcom/android/browser/WebGLAnimator;->getOneFingerXY([I)Z

    .line 1357
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator;->mLastUIMovePos:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    aget v1, v1, v6

    sub-int/2addr v0, v1

    .line 1358
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator;->mLastUIMovePos:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/browser/WebGLAnimator;->mTouchDown:[I

    aget v2, v2, v7

    sub-int/2addr v1, v2

    .line 1360
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1361
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1362
    int-to-float v4, v2

    int-to-float v5, v3

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    invoke-direct {p0}, Lcom/android/browser/WebGLAnimator;->isWebViewFixedWidth()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1363
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1364
    if-lez v0, :cond_3

    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapPositive:Z

    .line 1372
    :goto_2
    invoke-direct {p0, v9}, Lcom/android/browser/WebGLAnimator;->changeStateTo(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 1364
    goto :goto_1

    .line 1365
    :cond_4
    int-to-float v0, v3

    int-to-float v2, v2

    mul-float/2addr v2, v8

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    .line 1366
    iput v9, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    .line 1367
    if-lez v1, :cond_5

    move v0, v7

    :goto_3
    iput-boolean v0, p0, Lcom/android/browser/WebGLAnimator;->mSnapPositive:Z

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_3

    .line 1369
    :cond_6
    iput v6, p0, Lcom/android/browser/WebGLAnimator;->mSnapScrollMode:I

    goto :goto_2

    .line 1324
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x40 -> :sswitch_1
    .end sparse-switch
.end method
