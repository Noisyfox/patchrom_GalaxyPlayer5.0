.class public Lcom/android/browser/BitmapWebView;
.super Landroid/widget/FrameLayout;
.source "BitmapWebView.java"

# interfaces
.implements Landroid/webkit/OnPinchZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BitmapWebView$DrawInfo;,
        Lcom/android/browser/BitmapWebView$PrivateHandler;,
        Lcom/android/browser/BitmapWebView$Tile;,
        Lcom/android/browser/BitmapWebView$Surface;
    }
.end annotation


# static fields
.field static final DEBUG_PERFORMANCE:Z

.field static final DEBUG_POST_BITMAP:Z

.field static final OPTIMIZE_EVENTS:Z

.field static final TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

.field static final USE_POST_BITMAP:Z


# instance fields
.field mAM:Landroid/app/ActivityManager;

.field mAfterLoadFinishedCount:I

.field mAnimator:Lcom/android/browser/WebGLAnimator;

.field mBeginScale:F

.field mBitmapWebViewContainer:Landroid/view/View;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field mCheckBoardTileSize:I

.field mContentView:Landroid/view/View;

.field mContentsHeight:I

.field mContentsRect:Landroid/graphics/Rect;

.field mContentsWidth:I

.field mContext:Landroid/content/Context;

.field mDTCount:F

.field mDTEndScale:F

.field mDTEndScrollX:F

.field mDTEndScrollY:F

.field mDTInvEndZoomScale:F

.field mDTScale:F

.field mDTScaleDelta:F

.field mDTScrollXDelta:F

.field mDTScrollYDelta:F

.field mDTStartScale:F

.field mDTStartScrollX:F

.field mDTStartScrollY:F

.field mDTStartTick:J

.field mDTZoomCX:F

.field mDTZoomCY:F

.field mDebugTiles:[[Landroid/graphics/Bitmap;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDoubleTapping:Z

.field mDragConfirmed:Z

.field mDrawFrameFlag:Z

.field mExtraTexNum:I

.field mFlinging:Z

.field private mGestureInProgress:Z

.field private mGrabFromNextCanvasPost:Z

.field private mIgnoreRequestLayout:Z

.field private mIgnoreUpdate3DSurface:Z

.field mIsDrawingWebView:Z

.field private mLastFixSurfaceStartMs:J

.field mLastTouchX:F

.field mLastTouchY:F

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxExtraTexNum:I

.field mMaxScale:F

.field mMaxScaleRangeByPinch:F

.field mMaxScaleRangeByPinchForExtraTexture:F

.field mMaxTensionDistX:I

.field mMaxTensionDistY:I

.field mMaximumFling:I

.field mMinScale:F

.field mMoveFirst:Z

.field mOldViewLeft:I

.field mOldViewTop:I

.field mOnRecalExtraTexture:Z

.field mPaint:Landroid/graphics/Paint;

.field private mParentOnScreenLocation:[I

.field mPaused:Z

.field private mPostGeneration:I

.field mPrevPreventDefault:I

.field mPrivateHandler:Landroid/os/Handler;

.field mQueueFullTick:J

.field mRefrainUpdateContentsStartMs:J

.field public mRotationStartTime:J

.field mScaling:Z

.field mScrollBarPadding:F

.field mScrollBarThickness:F

.field mScrollDX:F

.field mScrollDY:F

.field mScrollFilter:Landroid/graphics/DrawFilter;

.field mScroller:Landroid/widget/Scroller;

.field mShadowHeight:I

.field mSnapScrollMode:I

.field private mState:I

.field mSurface:Lcom/android/browser/BitmapWebView$Surface;

.field public mSystemStatusBarHeight:I

.field mTensionAni:Z

.field mTensionAniDx:I

.field mTensionAniDy:I

.field mTensionAniEndDx:I

.field mTensionAniEndDy:I

.field mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

.field mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

.field mTensionX:I

.field mTensionY:I

.field mTextureBitmapDirtyRegion:Landroid/graphics/Region;

.field mTextureHeight:I

.field mTextureRegion:Landroid/graphics/Rect;

.field mTextureWidth:I

.field mTileNumX:I

.field mTileNumY:I

.field mTiltebarBitmapUpdated:Z

.field mTitleBar:Landroid/view/View;

.field mTitleBarBitmap:Landroid/graphics/Bitmap;

.field mTitleBarHeight:I

.field mTitleBarVisibility:Z

.field mTotalTexNum:I

.field mTouchEventProcessing:Z

.field mTouchSlopSquare:I

.field mUpdateTexIgnoreTick:J

.field mValidTextureRegion:Landroid/graphics/Region;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewHeight:I

.field mViewLeft:I

.field mViewRect:Landroid/graphics/Rect;

.field mViewTop:I

.field mViewWidth:I

.field mVisible:Z

.field mWebView:Landroid/webkit/WebView;

.field mWebViewContainer:Landroid/view/View;

.field private mWebViewDrawCountAfterShow:I

.field mWebViewZoomScale:F

.field mZoomCenterX:F

.field mZoomCenterY:F

.field mZoomScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "1"

    .line 95
    const-string v0, "1"

    const-string v0, "debug.browser.no.opt.evt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    .line 96
    const-string v0, "1"

    const-string v0, "debug.browser.performance"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_PERFORMANCE:Z

    .line 97
    const-string v0, "0"

    const-string v1, "debug.browser.post"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/browser/BitmapWebView;->USE_POST_BITMAP:Z

    .line 98
    const-string v0, "1"

    const-string v0, "debug.browser.post.dbg"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/browser/BitmapWebView;->USE_POST_BITMAP:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_1

    :cond_2
    move v0, v2

    .line 98
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4080

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mGestureInProgress:Z

    .line 188
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mRotationStartTime:J

    .line 310
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iput v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 313
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mOnRecalExtraTexture:Z

    .line 314
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 320
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 321
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 322
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 330
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 343
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 344
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    .line 356
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 357
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 358
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 359
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 360
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 361
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 362
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 363
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    .line 366
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 367
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 369
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 370
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 374
    iput-object v5, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 376
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 378
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 382
    iput-object v5, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 383
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mRefrainUpdateContentsStartMs:J

    .line 384
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 2392
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mLastFixSurfaceStartMs:J

    .line 2736
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/browser/BitmapWebView;->mParentOnScreenLocation:[I

    .line 2789
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mIgnoreUpdate3DSurface:Z

    .line 392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/BitmapWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 401
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mGestureInProgress:Z

    .line 188
    const-wide/16 v10, 0x3e8

    iput-wide v10, p0, Lcom/android/browser/BitmapWebView;->mRotationStartTime:J

    .line 310
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 313
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mOnRecalExtraTexture:Z

    .line 314
    const/16 v10, 0x60

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    .line 320
    const/high16 v10, 0x4080

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 321
    const/high16 v10, 0x4080

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 322
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 330
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 343
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 344
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    .line 356
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 357
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 358
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 359
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 360
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 361
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 362
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 363
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 365
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    .line 366
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 367
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 369
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 370
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 374
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 376
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 378
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 382
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 383
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lcom/android/browser/BitmapWebView;->mRefrainUpdateContentsStartMs:J

    .line 384
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 2392
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/browser/BitmapWebView;->mLastFixSurfaceStartMs:J

    .line 2736
    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mParentOnScreenLocation:[I

    .line 2789
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mIgnoreUpdate3DSurface:Z

    .line 405
    :try_start_0
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    .line 407
    new-instance v10, Lcom/android/browser/WebGLAnimator;

    invoke-direct {v10, p1, p0}, Lcom/android/browser/WebGLAnimator;-><init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;)V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    .line 408
    new-instance v10, Lcom/android/browser/BitmapWebView$PrivateHandler;

    invoke-direct {v10, p0}, Lcom/android/browser/BitmapWebView$PrivateHandler;-><init>(Lcom/android/browser/BitmapWebView;)V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    .line 409
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    .line 410
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    .line 411
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    .line 412
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    .line 415
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    .line 416
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 417
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 421
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    .line 423
    new-instance v10, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 424
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    .line 425
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    .line 426
    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/android/browser/BitmapWebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 427
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 429
    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    .line 430
    .local v2, density:F
    iget v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    mul-float/2addr v10, v2

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinch:F

    .line 431
    iget v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float/2addr v10, v2

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    .line 432
    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 433
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float v8, v10, v11

    .line 434
    .local v8, width:F
    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/browser/BitmapWebView;->mMaxScaleRangeByPinchForExtraTexture:F

    mul-float v5, v10, v11

    .line 435
    .local v5, height:F
    const/high16 v10, 0x4380

    div-float v10, v8, v10

    float-to-int v9, v10

    .line 436
    .local v9, widthtile:I
    const/high16 v10, 0x4380

    div-float v10, v5, v10

    float-to-int v6, v10

    .line 437
    .local v6, heighttile:I
    mul-int v10, v9, v6

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mMaxExtraTexNum:I

    .line 438
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mExtraTexNum:I

    .line 439
    const-string v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/browser/BitmapWebView;->mAM:Landroid/app/ActivityManager;

    .line 440
    new-instance v10, Landroid/widget/Scroller;

    invoke-direct {v10, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    .line 442
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 443
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v10

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mMaximumFling:I

    .line 444
    const/high16 v10, 0x40a0

    mul-float/2addr v10, v2

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mScrollBarThickness:F

    .line 445
    const/high16 v10, 0x4000

    mul-float/2addr v10, v2

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mScrollBarPadding:F

    .line 446
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const v11, 0x3fa66666

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    .line 447
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const v11, 0x3fa66666

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    .line 449
    const/high16 v10, 0x3fc0

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_2

    .line 452
    const/16 v10, 0x8

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    .line 460
    :goto_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 461
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->createSurface()Lcom/android/browser/BitmapWebView$Surface;

    move-result-object v10

    iput-object v10, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    .line 462
    iget-object v10, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x108036f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 464
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mShadowHeight:I

    .line 467
    :cond_0
    iget v10, p0, Lcom/android/browser/BitmapWebView;->mShadowHeight:I

    const/16 v11, 0x9

    if-gt v10, v11, :cond_1

    .line 468
    const/16 v10, 0x9

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mShadowHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #density:F
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v5           #height:F
    .end local v6           #heighttile:I
    .end local v8           #width:F
    .end local v9           #widthtile:I
    :cond_1
    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 481
    return-void

    .line 456
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    .restart local v2       #density:F
    .restart local v3       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v5       #height:F
    .restart local v6       #heighttile:I
    .restart local v8       #width:F
    .restart local v9       #widthtile:I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 457
    .local v7, slop:I
    mul-int v10, v7, v7

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    .line 458
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 471
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    .end local v2           #density:F
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v5           #height:F
    .end local v6           #heighttile:I
    .end local v7           #slop:I
    .end local v8           #width:F
    .end local v9           #widthtile:I
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 473
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "BitmapWebView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BitmapWebView: constructor fail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/16 v10, 0x9

    invoke-virtual {p0, v10}, Lcom/android/browser/BitmapWebView;->setState(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/browser/BitmapWebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/browser/BitmapWebView;->set3DSurfaceLayout(Z)V

    return-void
.end method

.method private invalidateAllTextures()V
    .locals 3

    .prologue
    const/high16 v2, 0x1000

    const/4 v1, 0x0

    .line 1081
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1082
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1083
    return-void
.end method

.method private set3DSurfaceLayout(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v9, "BitmapWebView"

    const-string v8, " "

    .line 2756
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mSystemStatusBarHeight:I

    .line 2757
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 2758
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mParentOnScreenLocation:[I

    invoke-virtual {v0, v2}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    .line 2759
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mParentOnScreenLocation:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/browser/BitmapWebView;->mSystemStatusBarHeight:I

    .line 2761
    const-string v2, "BitmapWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSystemStatusBarHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mSystemStatusBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 2764
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 2766
    const-string v5, "BitmapWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set3DSurfaceLayout: displayW/H = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " parent = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getHeight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    if-eqz p1, :cond_1

    .line 2770
    iput-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mIgnoreUpdate3DSurface:Z

    .line 2771
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mParentOnScreenLocation:[I

    aget v5, v5, v4

    neg-int v5, v5

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mParentOnScreenLocation:[I

    aget v7, v7, v1

    neg-int v7, v7

    invoke-direct {v0, v3, v2, v5, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2774
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    check-cast v0, Lcom/android/browser/BitmapWebViewSurface3D;

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BitmapWebViewSurface3D;->updateWindow(ZZZII)V

    .line 2775
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mIgnoreUpdate3DSurface:Z

    .line 2783
    :goto_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSystemStatusBarHeight:I

    if-eq v6, v0, :cond_0

    .line 2784
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->fix3DSurfaceSize()V

    .line 2786
    :cond_0
    return-void

    .line 2777
    :cond_1
    iput-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mIgnoreUpdate3DSurface:Z

    .line 2778
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0xfa0

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method abortAnimation()V
    .locals 1

    .prologue
    .line 3481
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->abortAnimation()V

    .line 3484
    :cond_0
    return-void
.end method

.method public alwaysAllowWebViewDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1051
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1058
    :goto_0
    return v0

    .line 1054
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewDrawCountAfterShow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewDrawCountAfterShow:I

    .line 1055
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewDrawCountAfterShow:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    move v0, v2

    .line 1056
    goto :goto_0

    .line 1058
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method calcTextureRegion(II)Landroid/graphics/Rect;
    .locals 8
    .parameter "viewLeft"
    .parameter "viewTop"

    .prologue
    const/high16 v7, 0x4380

    .line 1977
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p1

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 1978
    .local v0, left:I
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1981
    .local v4, top:I
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/browser/BitmapWebView;->pinLoc(III)I

    move-result v0

    .line 1982
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/browser/BitmapWebView;->pinLoc(III)I

    move-result v4

    .line 1986
    int-to-float v5, v0

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1987
    .local v2, tilex:I
    int-to-float v5, v4

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1991
    .local v3, tiley:I
    mul-int/lit16 v0, v2, 0x100

    .line 1992
    mul-int/lit16 v4, v3, 0x100

    .line 1994
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    add-int/2addr v6, v4

    invoke-direct {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1997
    .local v1, region:Landroid/graphics/Rect;
    return-object v1
.end method

.method canHandleTouchEvent()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1395
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 1406
    :goto_0
    return v3

    .line 1399
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 1400
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1401
    .local v0, childCount:I
    sub-int v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1403
    .local v1, topChild:Landroid/view/View;
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    if-eq v1, v3, :cond_2

    if-ne v1, p0, :cond_3

    :cond_2
    move v3, v5

    .line 1404
    goto :goto_0

    :cond_3
    move v3, v4

    .line 1406
    goto :goto_0
.end method

.method checkTension()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2652
    invoke-virtual {p0, v3}, Lcom/android/browser/BitmapWebView;->checkTensionAni(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2654
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2655
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2657
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2658
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 2659
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2661
    :cond_0
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mTensionX:I

    .line 2662
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mTensionY:I

    .line 2663
    return-void
.end method

.method checkTensionAni(Z)Z
    .locals 6
    .parameter "checkonly"

    .prologue
    .line 2508
    const/4 v2, 0x0

    .line 2509
    .local v2, needtensionani:Z
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 2510
    .local v1, dy:I
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-gez v3, :cond_3

    .line 2512
    const/4 v2, 0x1

    .line 2513
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    neg-int v0, v3

    .line 2521
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-gez v3, :cond_4

    .line 2523
    const/4 v2, 0x1

    .line 2524
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v1, v3

    .line 2532
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 2533
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->startTensionAni(II)V

    .line 2535
    :cond_2
    return v2

    .line 2515
    :cond_3
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v3, v4, :cond_0

    .line 2517
    const/4 v2, 0x1

    .line 2518
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    goto :goto_0

    .line 2526
    :cond_4
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v3, v4, :cond_1

    .line 2528
    const/4 v2, 0x1

    .line 2529
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v4, v5

    sub-int v1, v3, v4

    goto :goto_1
.end method

.method checkTensionX(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x4020

    .line 2983
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    if-gt v0, v1, :cond_1

    .line 2984
    const/4 v0, 0x0

    .line 3014
    :cond_0
    :goto_0
    return v0

    .line 2986
    :cond_1
    add-int v0, p1, p2

    .line 2989
    if-gez v0, :cond_3

    .line 2991
    if-gez p2, :cond_2

    .line 2996
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 2998
    :cond_2
    if-lez p2, :cond_5

    .line 2999
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 3002
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v0, v1, :cond_5

    .line 3004
    if-lez p2, :cond_4

    .line 3008
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 3010
    :goto_1
    if-gez p2, :cond_0

    .line 3011
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1

    :cond_5
    move v0, p2

    goto :goto_0
.end method

.method checkTensionY(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x4020

    .line 3020
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-gt v0, v1, :cond_1

    .line 3021
    const/4 v0, 0x0

    .line 3049
    :cond_0
    :goto_0
    return v0

    .line 3023
    :cond_1
    add-int v0, p1, p2

    .line 3026
    if-gez v0, :cond_3

    .line 3028
    if-gez p2, :cond_2

    .line 3032
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 3034
    :cond_2
    if-lez p2, :cond_5

    .line 3035
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 3038
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-le v0, v1, :cond_5

    .line 3040
    if-lez p2, :cond_4

    .line 3044
    int-to-float v0, p2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 3046
    :goto_1
    if-gez p2, :cond_0

    .line 3047
    int-to-float v0, p2

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1

    :cond_5
    move v0, p2

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2692
    iget-boolean v6, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    if-nez v6, :cond_0

    .line 2733
    :goto_0
    return-void

    .line 2695
    :cond_0
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2696
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 2697
    .local v4, left:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 2699
    .local v5, top:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    .line 2700
    .local v2, finalX:I
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    .line 2704
    .local v3, finalY:I
    if-ne v4, v2, :cond_1

    if-ne v5, v3, :cond_1

    .line 2706
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2707
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2708
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->checkTension()V

    goto :goto_0

    .line 2713
    :cond_1
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    sub-int v0, v4, v6

    .line 2714
    .local v0, dx:I
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    sub-int v1, v5, v6

    .line 2716
    .local v1, dy:I
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    invoke-virtual {p0, v6, v0}, Lcom/android/browser/BitmapWebView;->checkTensionX(II)I

    move-result v0

    .line 2717
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v6, v1}, Lcom/android/browser/BitmapWebView;->checkTensionY(II)I

    move-result v1

    .line 2719
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2720
    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v6, v7}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2722
    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    invoke-virtual {p0, v8, v8, v6, v7}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2724
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestFlingIng()V

    goto :goto_0

    .line 2729
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #finalX:I
    .end local v3           #finalY:I
    .end local v4           #left:I
    .end local v5           #top:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 2730
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->checkTension()V

    goto :goto_0
.end method

.method createSurface()Lcom/android/browser/BitmapWebView$Surface;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 490
    const-string v1, "BitmapWebView"

    const-string v2, "createSurface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v0, Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/browser/BitmapWebViewSurface3D;-><init>(Landroid/content/Context;Lcom/android/browser/BitmapWebView;Lcom/android/browser/WebGLAnimator;)V

    .line 509
    .local v0, surfaceView:Landroid/view/SurfaceView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    check-cast v0, Lcom/android/browser/BitmapWebView$Surface;

    .end local v0           #surfaceView:Landroid/view/SurfaceView;
    return-object v0
.end method

.method public debug()V
    .locals 0

    .prologue
    .line 3739
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->saveTextureBitmap()V

    .line 3740
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2800
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/BitmapWebView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2801
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v1, :cond_0

    .line 2802
    check-cast v0, Lcom/android/browser/BitmapWebViewSurface3D;

    .end local v0           #v:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/browser/BitmapWebViewSurface3D;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2804
    :cond_0
    return-void
.end method

.method public doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 12
    .parameter "oldScale"
    .parameter "zoomInfo"

    .prologue
    const/high16 v11, 0x3f80

    const/high16 v10, 0x4120

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 767
    sget-boolean v5, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v5, :cond_1

    .line 768
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v5, p1, p2}, Lcom/android/browser/WebGLAnimator;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    div-float v4, v5, p1

    .line 773
    .local v4, ratio:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 774
    .local v0, cx:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 776
    .local v1, cy:F
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_0

    .line 779
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 782
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 783
    .local v2, p:[F
    aput v0, v2, v7

    .line 784
    aput v1, v2, v8

    .line 786
    const/4 v5, 0x2

    new-array v3, v5, [F

    .line 787
    .local v3, pz:[F
    aput v9, v3, v7

    .line 788
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v8

    .line 790
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 791
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 795
    aget v5, v2, v7

    aget v6, v3, v7

    sub-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    sub-float/2addr v5, v6

    aput v5, v2, v7

    .line 796
    aget v5, v2, v8

    aget v6, v3, v8

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    sub-float/2addr v5, v6

    aput v5, v2, v8

    .line 799
    aget v5, v2, v7

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    .line 800
    aget v5, v2, v8

    iget v6, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    .line 801
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 802
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    iput v9, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 807
    iput-boolean v8, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 808
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 811
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScale:F

    .line 812
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    .line 813
    div-float v5, v11, v4

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTInvEndZoomScale:F

    .line 814
    iput v11, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    .line 815
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mDTCount:F

    .line 816
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    .line 817
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    .line 819
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScaleDelta:F

    .line 820
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScrollXDelta:F

    .line 821
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mDTScrollYDelta:F

    .line 825
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 826
    iget v5, p2, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    iput v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartTick:J

    .line 832
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mDTStartScale:F

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 836
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public doDrag(II)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 855
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->startScrolling()V

    .line 860
    :cond_0
    const/4 v0, 0x1

    .line 879
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doFling(II)Z
    .locals 1
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 892
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x1

    .line 902
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method doTensionAni()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 2599
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    if-nez v4, :cond_0

    .line 2601
    const/high16 v2, 0x3f80

    .line 2608
    .local v2, scalex:F
    :goto_0
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    if-nez v4, :cond_1

    .line 2610
    const/high16 v3, 0x3f80

    .line 2619
    .local v3, scaley:F
    :goto_1
    cmpl-float v4, v2, v7

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v7

    if-ltz v4, :cond_2

    .line 2621
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 2622
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 2623
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 2624
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2625
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 2626
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 2648
    :goto_2
    return-void

    .line 2605
    .end local v2           #scalex:F
    .end local v3           #scaley:F
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .restart local v2       #scalex:F
    goto :goto_0

    .line 2614
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    .restart local v3       #scaley:F
    goto :goto_1

    .line 2631
    :cond_2
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2632
    .local v0, dx:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2635
    .local v1, dy:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2636
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2638
    const/4 v4, 0x1

    invoke-virtual {p0, v8, v8, v7, v4}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2640
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2641
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2643
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestTensionAni()V

    goto :goto_2
.end method

.method doubleTapAni()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    .line 695
    iget-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-nez v3, :cond_0

    .line 759
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartTick:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 704
    .local v0, interval:I
    const/16 v3, 0x1f4

    if-ge v0, v3, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v3

    if-ne v3, v9, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestDoubleTapAni()V

    goto :goto_0

    .line 713
    :cond_1
    int-to-float v3, v0

    const/high16 v4, 0x43fa

    div-float v2, v3, v4

    .line 714
    .local v2, ratio:F
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTInvEndZoomScale:F

    sub-float/2addr v3, v7

    mul-float/2addr v3, v2

    add-float/2addr v3, v7

    div-float v1, v7, v3

    .line 718
    .local v1, newScale:F
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 719
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTStartScrollY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 722
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    invoke-virtual {p0, v3, v4, v1, v10}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 725
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 730
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 731
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 733
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestDoubleTapAni()V

    goto :goto_0

    .line 737
    .end local v1           #newScale:F
    .end local v2           #ratio:F
    :cond_2
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollX:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 738
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTEndScrollY:F

    iput v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 740
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    invoke-virtual {p0, v3, v4, v5, v9}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 742
    const-string v3, "BitmapWebView"

    const-string v4, "doubleTapAni done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mDTEndScale:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCX:F

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mDTZoomCY:F

    iget-object v8, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 750
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 751
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 753
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    .line 754
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "shiftx"
    .parameter "shifty"
    .parameter "pic"

    .prologue
    const/4 v6, 0x0

    .line 1446
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v0

    return-object v0
.end method

.method drawTile(IIIILandroid/graphics/Picture;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v1, p1, 0x100

    add-int/2addr v0, v1

    .line 1453
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v2, p2, 0x100

    add-int/2addr v1, v2

    .line 1455
    add-int v2, p1, p3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    rem-int/2addr v2, v3

    .line 1456
    add-int v3, p2, p4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    rem-int/2addr v3, v4

    .line 1458
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit16 v5, v0, 0x100

    add-int/lit16 v6, v1, 0x100

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1459
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    .line 1461
    if-eqz p6, :cond_0

    .line 1462
    invoke-static {p7, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1464
    const/4 v0, 0x0

    .line 1571
    :goto_0
    return-object v0

    .line 1468
    :cond_0
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v5, v2, v3, v4}, Lcom/android/browser/BitmapWebView$Surface;->getTile(IILandroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v6

    .line 1469
    if-nez v6, :cond_2

    .line 1471
    iget-wide v0, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1478
    const/4 v0, 0x0

    goto :goto_0

    .line 1482
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    .line 1487
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, v6, Lcom/android/browser/BitmapWebView$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1488
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/browser/BitmapWebView$Tile;->setPartialRect(Landroid/graphics/Rect;)V

    .line 1490
    if-eqz p6, :cond_7

    .line 1493
    sget-boolean v2, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-nez v2, :cond_3

    .line 1494
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1497
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1498
    invoke-virtual {v2, p7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1499
    iget v3, v4, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1500
    iget v3, v4, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1502
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1504
    invoke-virtual {v6, v2}, Lcom/android/browser/BitmapWebView$Tile;->setPartialRect(Landroid/graphics/Rect;)V

    .line 1507
    :cond_4
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1509
    sget-boolean v2, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    .line 1510
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1513
    :cond_5
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 1514
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 1516
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1517
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1518
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1519
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1521
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-eqz v0, :cond_6

    .line 1522
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1523
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1524
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x7fffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1526
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x461c4000

    const v4, 0x461c4000

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1527
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1529
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1530
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x447a

    const/high16 v4, 0x447a

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1531
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x437f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x437f

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1532
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41f0

    const/high16 v3, 0x41f0

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1533
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4362

    const/high16 v3, 0x4362

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1534
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4362

    const/high16 v3, 0x41f0

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1535
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41f0

    const/high16 v3, 0x4362

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1536
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4300

    const/high16 v3, 0x4300

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    move-object v0, v6

    .line 1539
    goto/16 :goto_0

    .line 1542
    :cond_7
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1544
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 1558
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 1559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    .line 1569
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    move-object v0, v6

    .line 1571
    goto/16 :goto_0
.end method

.method fix3DSurfaceSize()V
    .locals 1

    .prologue
    .line 2375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->fix3DSurfaceSize(Z)V

    .line 2376
    return-void
.end method

.method fix3DSurfaceSize(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    instance-of v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v0, :cond_0

    .line 2381
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2386
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_0

    .line 2387
    iget-object p0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    .end local p0
    check-cast p0, Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->fixSurfaceSize()V

    .line 2390
    :cond_0
    return-void

    .line 2384
    .restart local p0
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 2381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method fling(Landroid/view/VelocityTracker;II)V
    .locals 11
    .parameter "tracker"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 2446
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 2503
    :goto_0
    return-void

    .line 2450
    :cond_0
    if-eqz p1, :cond_1

    .line 2452
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaximumFling:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2453
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int p2, v0

    .line 2454
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int p3, v0

    .line 2466
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 2467
    .local v10, flingMaxW:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v9, v0

    .line 2470
    .local v9, flingMaxH:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    sub-int v5, v0, v10

    .line 2471
    .local v5, minX:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    neg-int v0, v0

    if-ge v5, v0, :cond_2

    .line 2472
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    neg-int v5, v0

    .line 2474
    :cond_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int v6, v0, v10

    .line 2475
    .local v6, maxX:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    add-int/2addr v0, v1

    if-le v6, v0, :cond_3

    .line 2476
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    add-int v6, v0, v1

    .line 2478
    :cond_3
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    sub-int v7, v0, v9

    .line 2479
    .local v7, minY:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    neg-int v0, v0

    if-ge v7, v0, :cond_4

    .line 2480
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    neg-int v7, v0

    .line 2482
    :cond_4
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int v8, v0, v9

    .line 2483
    .local v8, maxY:I
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    add-int/2addr v0, v1

    if-le v8, v0, :cond_5

    .line 2484
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    add-int v8, v0, v1

    .line 2487
    :cond_5
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2488
    const/4 p3, 0x0

    .line 2489
    :cond_6
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 2490
    const/4 p2, 0x0

    .line 2494
    :cond_7
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    neg-int v3, p2

    neg-int v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2497
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 2499
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    .line 2502
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestFlingIng()V

    goto/16 :goto_0
.end method

.method public forceHighQualityImage()Z
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1284
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1282
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getBGBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 3664
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3665
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 3666
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3891
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->USE_POST_BITMAP:Z

    if-nez v0, :cond_0

    move-object v0, v5

    .line 3925
    :goto_0
    return-object v0

    .line 3894
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mGrabFromNextCanvasPost:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-nez v0, :cond_1

    move-object v0, v5

    .line 3902
    goto :goto_0

    .line 3905
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 3906
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    .line 3908
    sget-boolean v2, Lcom/android/browser/BitmapWebView;->DEBUG_PERFORMANCE:Z

    if-eqz v2, :cond_2

    .line 3909
    const-string v2, "GL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCacheBitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 3915
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3916
    iput-object v5, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    .line 3918
    :cond_4
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 3920
    :try_start_0
    sget-object v2, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3925
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mCacheBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 3921
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getCacheBitmapOffsetX()I
    .locals 1

    .prologue
    .line 3930
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheBitmapOffsetY()I
    .locals 1

    .prologue
    .line 3935
    const/4 v0, 0x0

    return v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    return v0
.end method

.method getCheckerBoardBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 3411
    const/4 v0, 0x0

    .line 3413
    if-nez v0, :cond_0

    .line 3414
    const/16 v0, 0x40

    const/16 v1, 0x40

    sget-object v2, Lcom/android/browser/BitmapWebView;->TEXTURE_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3416
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3417
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 3418
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3419
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3421
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 3422
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3423
    const v4, -0x333334

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3427
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3429
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3430
    const/4 v7, 0x0

    move v14, v7

    move v7, v5

    move v5, v14

    :goto_0
    const/16 v8, 0x40

    iget v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    div-int/2addr v8, v9

    if-ge v5, v8, :cond_5

    .line 3431
    const/4 v8, 0x0

    move v14, v8

    move v8, v6

    move v6, v14

    :goto_1
    const/16 v9, 0x40

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    div-int/2addr v9, v10

    if-ge v6, v9, :cond_4

    .line 3434
    iget v9, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v9, v5

    iget v10, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v10, v6

    iget v11, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v11, v5

    iget v12, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    mul-int/2addr v12, v6

    iget v13, p0, Lcom/android/browser/BitmapWebView;->mCheckBoardTileSize:I

    add-int/2addr v12, v13

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3437
    rem-int/lit8 v9, v7, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 3439
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object v9, v2

    .line 3454
    :goto_2
    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3431
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v3

    .line 3442
    goto :goto_2

    .line 3447
    :cond_2
    rem-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    move-object v9, v3

    .line 3448
    goto :goto_2

    :cond_3
    move-object v9, v2

    .line 3450
    goto :goto_2

    .line 3430
    :cond_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v8

    goto :goto_0

    .line 3458
    :cond_5
    return-object v0
.end method

.method declared-synchronized getDrawFrameFlag()Z
    .locals 1

    .prologue
    .line 3468
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDrawInfo(Lcom/android/browser/BitmapWebView$DrawInfo;Landroid/graphics/Rect;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3553
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    .line 3554
    if-eq v0, v8, :cond_0

    .line 3556
    const-string v1, "BitmapWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw : STATUS is not OK, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 3659
    :goto_0
    return v0

    .line 3560
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-nez v0, :cond_2

    :cond_1
    move v0, v9

    .line 3561
    goto :goto_0

    .line 3563
    :cond_2
    if-nez p2, :cond_d

    .line 3564
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    .line 3566
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v1

    .line 3568
    :try_start_0
    iget-object v2, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3569
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3571
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3572
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3573
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-nez v3, :cond_5

    .line 3575
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_4

    .line 3577
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3594
    :goto_2
    iget-object v0, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3596
    new-instance v0, Landroid/graphics/RegionIterator;

    iget-object v3, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-direct {v0, v3}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3597
    iget-object v3, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isComplex()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3599
    iget-object v0, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->validRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3616
    :goto_3
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3617
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-ne v0, v8, :cond_9

    .line 3619
    iput-boolean v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3620
    iput-boolean v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    :goto_4
    move v0, v8

    .line 3659
    goto :goto_0

    .line 3569
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3582
    :cond_4
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    div-float/2addr v3, v4

    .line 3583
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v7, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 3584
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3585
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3586
    iget v0, v3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v4, v3, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 3592
    :cond_5
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 3605
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3607
    :cond_7
    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3609
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    .line 3610
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 3613
    :cond_8
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 3624
    :cond_9
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-ne v0, v8, :cond_b

    .line 3626
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3627
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3628
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-ne v0, v8, :cond_a

    .line 3630
    iput-boolean v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3631
    iput-boolean v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto :goto_4

    .line 3635
    :cond_a
    iput-boolean v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3636
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_4

    .line 3641
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3642
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3644
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-ne v0, v8, :cond_c

    .line 3646
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3647
    iput-boolean v9, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_4

    .line 3651
    :cond_c
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawBG:Z

    .line 3652
    iput-boolean v8, p1, Lcom/android/browser/BitmapWebView$DrawInfo;->bDrawCB:Z

    goto/16 :goto_4

    :cond_d
    move-object v0, p2

    goto/16 :goto_1
.end method

.method public getFlingFactor()F
    .locals 1

    .prologue
    .line 918
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getPluginMode()I
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x2

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    return v0
.end method

.method getState()I
    .locals 7

    .prologue
    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 535
    .local v1, tick:J
    iget-wide v3, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/browser/BitmapWebView;->mQueueFullTick:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 536
    const/4 v0, 0x7

    .line 543
    .local v0, status:I
    :goto_0
    return v0

    .line 539
    .end local v0           #status:I
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .restart local v0       #status:I
    goto :goto_0
.end method

.method getTitleBarHeight()I
    .locals 1

    .prologue
    .line 3674
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    if-gez v0, :cond_0

    .line 3675
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    .line 3677
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarHeight:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2867
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-nez v0, :cond_0

    .line 2885
    :goto_0
    return-void

    .line 2870
    :cond_0
    iput-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    .line 2873
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    instance-of v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v0, :cond_1

    .line 2874
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->updateFinalFlashPos()V

    .line 2875
    invoke-direct {p0, v1}, Lcom/android/browser/BitmapWebView;->set3DSurfaceLayout(Z)V

    .line 2880
    :goto_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2881
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2883
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPluginRefreshDelay(I)V

    goto :goto_0

    .line 2877
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_1
.end method

.method public ignoreUpdate3DSurface()Z
    .locals 1

    .prologue
    .line 2792
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIgnoreUpdate3DSurface:Z

    return v0
.end method

.method initWebViewVariables(ZZ)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2004
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    .line 2013
    if-eq v0, v8, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    move v0, v7

    .line 2104
    :goto_0
    return v0

    .line 2019
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    .line 2021
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    .line 2022
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    .line 2024
    if-eqz v0, :cond_2

    if-nez v1, :cond_e

    .line 2026
    :cond_2
    const-string v2, "BitmapWebView"

    const-string v3, "initWebViewVariables contWidth == 0 || contHeight == 0 "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 2028
    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    :cond_4
    move v9, v1

    move v1, v0

    move v0, v9

    .line 2031
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    .line 2032
    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    .line 2034
    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    :cond_5
    move v0, v7

    .line 2035
    goto :goto_0

    .line 2037
    :cond_6
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 2038
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 2040
    if-ge v1, v2, :cond_7

    move v1, v2

    .line 2042
    :cond_7
    if-ge v0, v3, :cond_8

    move v0, v3

    .line 2046
    :cond_8
    if-nez p1, :cond_9

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-ne v1, v4, :cond_9

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    if-ne v0, v4, :cond_9

    move v0, v7

    .line 2049
    goto :goto_0

    .line 2054
    :cond_9
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 2055
    iget v5, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    .line 2059
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 2060
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    .line 2061
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    .line 2062
    iput v3, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    .line 2063
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 2064
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 2068
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_c

    .line 2069
    iput v7, p0, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    .line 2074
    :goto_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    if-le v0, v8, :cond_a

    if-eq p2, v8, :cond_a

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v6, :cond_a

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_d

    .line 2079
    :cond_a
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->reArrangeTextures()Z

    move-result v0

    .line 2083
    :goto_3
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BitmapWebView;->calcTextureRegion(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2098
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2099
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mContentsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2101
    if-ne v0, v8, :cond_b

    .line 2102
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    :cond_b
    move v0, v8

    .line 2104
    goto/16 :goto_0

    .line 2071
    :cond_c
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mAfterLoadFinishedCount:I

    goto :goto_2

    :cond_d
    move v0, v7

    goto :goto_3

    :cond_e
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_1
.end method

.method public isDrawingWebView()Z
    .locals 1

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    return v0
.end method

.method isMobilePage()Z
    .locals 1

    .prologue
    .line 3874
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3875
    const/4 v0, 0x1

    .line 3877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    return v0
.end method

.method onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3518
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->destroy()V

    .line 3519
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3520
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3523
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3525
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3527
    :goto_0
    iput-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    .line 3530
    :cond_1
    iput-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 3532
    return-void

    .line 3525
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onDrawFinished()V
    .locals 0

    .prologue
    .line 1360
    return-void
.end method

.method public onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 952
    sget-boolean v1, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v1}, Lcom/android/browser/WebGLAnimator;->onPinchZoomListenerNewScale()V

    move v1, v7

    .line 1009
    :goto_0
    return v1

    .line 957
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v1, :cond_1

    move v1, v7

    .line 958
    goto :goto_0

    .line 960
    :cond_1
    const/4 v0, 0x0

    .line 970
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v1

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 973
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 976
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 978
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    const/high16 v2, 0x3fa0

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 987
    :goto_1
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    const v2, 0x3f28f5c3

    mul-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    const/high16 v2, 0x3fc0

    mul-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    :cond_2
    move v1, v7

    .line 988
    goto :goto_0

    .line 982
    :cond_3
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 990
    :cond_4
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    .line 993
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mBeginScale:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 996
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 999
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget-object v3, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1004
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v7}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    move v1, v7

    .line 1006
    goto/16 :goto_0

    :cond_5
    move v1, v5

    .line 1009
    goto/16 :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 1087
    invoke-virtual {p0, v0, v0}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 1088
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 1094
    return-void
.end method

.method onPaused()V
    .locals 1

    .prologue
    .line 3494
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->onPaused()V

    .line 3497
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->onPaused()V

    .line 3498
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 3499
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 3500
    return-void
.end method

.method onResumed()V
    .locals 1

    .prologue
    .line 3511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 3512
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->update3DSurfaceLayout()V

    .line 3513
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->onResumed()V

    .line 3514
    return-void
.end method

.method public onScale(Landroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .locals 1
    .parameter "zoomInfo"

    .prologue
    .line 1099
    const/4 v0, 0x1

    return v0
.end method

.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 1106
    invoke-virtual {p0, p1}, Lcom/android/browser/BitmapWebView;->onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;FF)Z
    .locals 4
    .parameter "detector"
    .parameter "maxScale"
    .parameter "minScale"

    .prologue
    const/4 v3, 0x1

    .line 1113
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0, p2, p3}, Lcom/android/browser/WebGLAnimator;->onPinchZoomListenerScaleBegin(FF)V

    move v0, v3

    .line 1161
    :goto_0
    return v0

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->canHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1119
    goto :goto_0

    .line 1121
    :cond_1
    iput p3, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    .line 1122
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    .line 1124
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mMinScale:F

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    move v0, v3

    .line 1125
    goto :goto_0

    .line 1127
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    move v0, v3

    .line 1128
    goto :goto_0

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1132
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 1134
    iput-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 1136
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 1137
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 1141
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 1142
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mBeginScale:F

    .line 1151
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    .line 1154
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mWebViewZoomScale:F

    .line 1158
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    move v0, v3

    .line 1161
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1168
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->onPinchZoomListenerScaleEnd()V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-eqz v0, :cond_0

    .line 1175
    iput-boolean v3, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    .line 1177
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->stopDraw()V

    .line 1179
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 1186
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1187
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 1015
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->startScrolling()V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    if-ne p1, p3, :cond_2

    if-eq p2, p4, :cond_0

    .line 1024
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-eq v0, v1, :cond_0

    .line 1033
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    goto :goto_0
.end method

.method public onUpdateContents(Landroid/graphics/Region;)V
    .locals 10
    .parameter "dirtyRegion"

    .prologue
    const/4 v9, 0x1

    .line 1202
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1203
    .local v3, updateRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1204
    .local v0, iter:Landroid/graphics/RegionIterator;
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    .line 1205
    .local v1, scaleX:F
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    .line 1207
    .local v2, scaleY:F
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1209
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1214
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 1217
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1219
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1220
    return-void
.end method

.method public onWebViewDrawFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1063
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_PERFORMANCE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDrawingWebView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isDrawingWebView()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1064
    :cond_0
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    if-nez v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->onWebViewDrawFinished()V

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIsDrawingWebView:Z

    if-nez v0, :cond_2

    .line 1068
    invoke-direct {p0}, Lcom/android/browser/BitmapWebView;->invalidateAllTextures()V

    .line 1069
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mRefrainUpdateContentsStartMs:J

    .line 1070
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1073
    :cond_2
    return-void
.end method

.method public onWebViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1240
    sget-boolean v1, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v1, :cond_1

    .line 1242
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v1, p1}, Lcom/android/browser/WebGLAnimator;->interceptMotionEvent(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1243
    .local v0, ret:I
    if-ne v2, v0, :cond_0

    move v1, v2

    .line 1260
    .end local v0           #ret:I
    :goto_0
    return v1

    .line 1245
    .restart local v0       #ret:I
    :cond_0
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 1246
    const-string v1, "BitmapWebView"

    const-string v2, "WebGLAnimator asks BitmapWebView not to handle it!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v1, 0x0

    goto :goto_0

    .line 1260
    .end local v0           #ret:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/BitmapWebView;->onWebViewTouchEventDirectScrollMode(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWebViewTouchEventDirectScrollMode(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/high16 v4, -0x4080

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3155
    .line 3157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 3163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v10, :cond_1

    .line 3165
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 3166
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 3168
    if-ne v0, v11, :cond_0

    .line 3169
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    :cond_0
    move v0, v9

    .line 3404
    :goto_0
    return v0

    .line 3174
    :cond_1
    packed-switch v0, :pswitch_data_0

    move v0, v9

    goto :goto_0

    .line 3177
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    if-nez v0, :cond_2

    move v0, v9

    .line 3180
    goto :goto_0

    .line 3183
    :cond_2
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    .line 3188
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 3189
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    move v0, v10

    .line 3190
    goto :goto_0

    .line 3193
    :cond_3
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 3194
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    sub-float/2addr v3, v2

    float-to-int v3, v3

    .line 3199
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-nez v4, :cond_4

    mul-int v4, v0, v0

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTouchSlopSquare:I

    if-ge v4, v5, :cond_4

    move v0, v10

    .line 3202
    goto :goto_0

    .line 3205
    :cond_4
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-boolean v4, v4, Landroid/webkit/WebView;->mStopSelection:Z

    if-nez v4, :cond_5

    move v0, v9

    .line 3208
    goto :goto_0

    .line 3213
    :cond_5
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    if-nez v4, :cond_8

    .line 3216
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3218
    :cond_6
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v10, :cond_a

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v11, :cond_a

    .line 3230
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v10, :cond_8

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v11, :cond_8

    .line 3235
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    .line 3236
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    iput v4, p0, Lcom/android/browser/BitmapWebView;->mPrevPreventDefault:I

    .line 3238
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->cancelTouch()V

    .line 3239
    sget-boolean v4, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-nez v4, :cond_8

    .line 3240
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->reduceWebViewPriority()V

    .line 3245
    :cond_8
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    .line 3247
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_b

    .line 3248
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eqz v0, :cond_9

    .line 3249
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->abortAnimation()V

    .line 3252
    :cond_9
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    move v0, v9

    goto/16 :goto_0

    :cond_a
    move v0, v9

    .line 3226
    goto/16 :goto_0

    .line 3254
    :cond_b
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eqz v0, :cond_c

    .line 3256
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 3257
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3258
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v9}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 3259
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->hide()V

    .line 3261
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 3264
    :cond_c
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    move v0, v9

    .line 3266
    goto/16 :goto_0

    .line 3270
    :cond_d
    iget-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-nez v4, :cond_f

    .line 3272
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 3273
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3274
    int-to-float v6, v4

    const/high16 v7, 0x4000

    int-to-float v8, v5

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_11

    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getMinZoomScale()F

    move-result v6

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getMaxZoomScale()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11

    .line 3275
    iput v11, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 3280
    :cond_e
    :goto_1
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 3284
    sget-boolean v4, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v4, :cond_12

    .line 3285
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v4}, Lcom/android/browser/WebGLAnimator;->startScrolling()V

    .line 3293
    :cond_f
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iput-boolean v10, v4, Landroid/webkit/WebView;->mUserScroll:Z

    .line 3298
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    if-ne v4, v11, :cond_13

    move v3, v9

    .line 3304
    :goto_3
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    move v0, v9

    .line 3310
    :goto_4
    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 3311
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 3314
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-nez v0, :cond_10

    .line 3316
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v12, v12, v0, v10}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 3325
    :cond_10
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 3326
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 3327
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3329
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    if-eqz v0, :cond_15

    move v0, v10

    .line 3330
    goto/16 :goto_0

    .line 3276
    :cond_11
    int-to-float v5, v5

    const/high16 v6, 0x4000

    int-to-float v4, v4

    mul-float/2addr v4, v6

    cmpl-float v4, v5, v4

    if-lez v4, :cond_e

    .line 3277
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    goto :goto_1

    .line 3287
    :cond_12
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->show()V

    goto :goto_2

    .line 3301
    :cond_13
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    invoke-virtual {p0, v4, v3}, Lcom/android/browser/BitmapWebView;->checkTensionY(II)I

    move-result v3

    goto :goto_3

    .line 3307
    :cond_14
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    invoke-virtual {p0, v4, v0}, Lcom/android/browser/BitmapWebView;->checkTensionX(II)I

    move-result v0

    goto :goto_4

    :cond_15
    move v0, v9

    .line 3334
    goto/16 :goto_0

    .line 3337
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->canHandleTouchEvent()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v9

    .line 3340
    goto/16 :goto_0

    .line 3343
    :cond_16
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopFling()V

    .line 3344
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->stopTension()V

    .line 3345
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    .line 3346
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mDragConfirmed:Z

    .line 3347
    iput v9, p0, Lcom/android/browser/BitmapWebView;->mSnapScrollMode:I

    .line 3348
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchX:F

    .line 3350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mLastTouchY:F

    .line 3351
    iput-boolean v10, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    move v0, v9

    .line 3354
    goto/16 :goto_0

    .line 3357
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    if-nez v0, :cond_17

    move v0, v9

    .line 3360
    goto/16 :goto_0

    .line 3363
    :cond_17
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTouchEventProcessing:Z

    .line 3365
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mMoveFirst:Z

    if-ne v0, v10, :cond_18

    .line 3369
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3370
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0, v9, v9}, Lcom/android/browser/BitmapWebView;->fling(Landroid/view/VelocityTracker;II)V

    .line 3372
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 3375
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->sendTextSelectionMoveEvent()V

    move v0, v10

    goto/16 :goto_0

    :cond_18
    move v0, v9

    .line 3398
    goto/16 :goto_0

    .line 3174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public overrideDoubleTap()Z
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x1

    return v0
.end method

.method pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3473
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->pause()V

    .line 3474
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3475
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3476
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 3477
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 3478
    return-void
.end method

.method pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "textureMax"
    .parameter "contentsMax"

    .prologue
    .line 1961
    if-ge p3, p2, :cond_1

    .line 1963
    const/4 p1, 0x0

    .line 1971
    :cond_0
    :goto_0
    return p1

    .line 1964
    :cond_1
    if-gez p1, :cond_2

    .line 1966
    const/4 p1, 0x0

    goto :goto_0

    .line 1967
    :cond_2
    add-int v0, p1, p2

    if-le v0, p3, :cond_0

    .line 1969
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method public postCacheBitmap(Landroid/graphics/Bitmap;)V
    .locals 14
    .parameter

    .prologue
    const/high16 v13, 0x4120

    const/4 v11, 0x1

    const/high16 v3, 0x447a

    const/4 v1, 0x0

    const-string v12, "GL"

    .line 3940
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4008
    :cond_0
    :goto_0
    return-void

    .line 3946
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mGrabFromNextCanvasPost:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-eqz v0, :cond_0

    .line 3952
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mGrabFromNextCanvasPost:Z

    .line 3959
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    .line 3960
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    .line 3963
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 3964
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScale()F

    move-result v5

    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getTitleBarHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 3965
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3966
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3968
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3969
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v10, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3971
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-eqz v0, :cond_4

    .line 3972
    const-string v0, "GL"

    const-string v0, "============================================================"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3974
    new-instance v2, Landroid/graphics/RegionIterator;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-direct {v2, v4}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 3975
    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3976
    const-string v4, "GL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated region = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3978
    :cond_3
    const-string v0, "GL"

    const-string v0, "============================================================"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3979
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mPostGeneration:I

    .line 3981
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3982
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3983
    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3984
    const v4, 0x447a4000

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3985
    const v4, 0x447a8000

    iget-object v5, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3986
    const v6, 0x447a8000

    iget-object v7, p0, Lcom/android/browser/BitmapWebView;->mPaint:Landroid/graphics/Paint;

    move-object v2, v0

    move v3, v13

    move v4, v1

    move v5, v13

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3992
    :cond_4
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-eqz v0, :cond_5

    .line 3993
    invoke-virtual {p0, v11, v11}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 3995
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v10}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;ZLandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 3999
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 4000
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4001
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-nez v0, :cond_6

    .line 4002
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4005
    :cond_6
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_PERFORMANCE:Z

    if-eqz v0, :cond_0

    .line 4006
    const-string v0, "GL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postCacheBitmap elapsed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method declared-synchronized reArrangeTextures()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2119
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 2120
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 2127
    const/high16 v0, 0x4020

    .line 2128
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    if-le v1, v2, :cond_0

    .line 2129
    const/high16 v0, 0x3fc0

    .line 2131
    :cond_0
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2132
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    if-le v0, v1, :cond_1

    .line 2133
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    .line 2134
    :cond_1
    div-int/lit16 v1, v0, 0x100

    .line 2135
    rem-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    .line 2136
    add-int/lit8 v0, v1, 0x1

    .line 2138
    :goto_0
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    div-int/lit16 v1, v1, 0x100

    .line 2139
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsHeight:I

    rem-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 2140
    add-int/lit8 v1, v1, 0x1

    .line 2142
    :cond_2
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    mul-int/lit8 v2, v2, 0x6

    div-int/lit16 v2, v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2143
    if-nez v1, :cond_3

    move v1, v5

    .line 2147
    :cond_3
    iget v2, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    div-int/lit16 v2, v2, 0x100

    .line 2148
    iget v3, p0, Lcom/android/browser/BitmapWebView;->mContentsWidth:I

    rem-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_4

    .line 2149
    add-int/lit8 v2, v2, 0x1

    .line 2152
    :cond_4
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 2153
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 2154
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    if-le v0, v1, :cond_5

    .line 2155
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    .line 2157
    :cond_5
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTotalTexNum:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 2158
    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    div-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 2160
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    if-ge v2, v0, :cond_6

    .line 2161
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    .line 2168
    :cond_6
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    .line 2169
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    .line 2177
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/browser/BitmapWebView$Surface;->reArrangeTextures(IIII)V

    .line 2195
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2198
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 2199
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2202
    :try_start_2
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeRequestUpdateWebViewTexture()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2207
    monitor-exit p0

    return v5

    .line 2199
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2119
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public refrainUpdateContents()V
    .locals 2

    .prologue
    .line 1223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mRefrainUpdateContentsStartMs:J

    .line 1224
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    return-void
.end method

.method removeFlingIng()V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1343
    return-void
.end method

.method removeRequestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    return-void
.end method

.method removeTensionAni()V
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1331
    return-void
.end method

.method requestDoubleTapAni()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1349
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1352
    return-void
.end method

.method requestDraw(FFFZ)V
    .locals 1
    .parameter "zoomcx"
    .parameter "zoomcy"
    .parameter "scale"
    .parameter "setflag"

    .prologue
    const/4 v0, 0x1

    .line 1369
    iput p3, p0, Lcom/android/browser/BitmapWebView;->mZoomScale:F

    .line 1370
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterX:F

    .line 1371
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mZoomCenterY:F

    .line 1373
    if-ne p4, v0, :cond_0

    .line 1374
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setDrawFrameFlag(Z)V

    .line 1376
    :cond_0
    if-nez p4, :cond_2

    .line 1378
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/BitmapWebView$Surface;->draw(FFF)V

    .line 1384
    :cond_1
    :goto_0
    return-void

    .line 1382
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/BitmapWebView$Surface;->draw(FFF)V

    goto :goto_0
.end method

.method requestFlingIng()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1338
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2808
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIgnoreRequestLayout:Z

    if-nez v0, :cond_0

    .line 2809
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2811
    :cond_0
    return-void
.end method

.method requestRender()V
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->requestRender()V

    .line 1364
    return-void
.end method

.method requestSurfaceChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1388
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1390
    return-void
.end method

.method requestTensionAni()V
    .locals 4

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1327
    return-void
.end method

.method requestUpdateContents(Landroid/graphics/Region;)V
    .locals 3
    .parameter "region"

    .prologue
    const/4 v2, 0x1

    .line 1303
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1304
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1305
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1306
    return-void
.end method

.method requestUpdateWebViewTexture()V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1319
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 3504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 3505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mPaused:Z

    .line 3506
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->resume()V

    .line 3507
    return-void
.end method

.method public resumeUpdateContents()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1228
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->isMobilePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 1229
    invoke-direct {p0}, Lcom/android/browser/BitmapWebView;->invalidateAllTextures()V

    .line 1231
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mRefrainUpdateContentsStartMs:J

    .line 1232
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1234
    return-void
.end method

.method saveTextureBitmap()V
    .locals 0

    .prologue
    .line 3785
    return-void
.end method

.method scroll(II)V
    .locals 5
    .parameter "newx"
    .parameter "newy"

    .prologue
    .line 2289
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-ne p2, v0, :cond_0

    .line 2304
    :goto_0
    return-void

    .line 2294
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    .line 2295
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    .line 2297
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 2298
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 2303
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v2, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/browser/BitmapWebView;->updateViewRect(IIII)V

    goto :goto_0
.end method

.method scrollPlugins(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2950
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_1

    .line 2979
    :cond_0
    return-void

    .line 2952
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 2955
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    .line 2956
    invoke-virtual {v0}, Landroid/webkit/ViewManager;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2958
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ViewManager$ChildView;

    .line 2959
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2962
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2964
    instance-of v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v2, :cond_3

    .line 2965
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 2967
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 2968
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 2971
    iget-object v2, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2974
    :cond_3
    const-string v0, "BitmapWebView"

    const-string v2, "scrollPlugins : no AbsoluteLayout params"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized setDrawFrameFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 3463
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3464
    monitor-exit p0

    return-void

    .line 3463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setGrabFromNextCanvasPost()V
    .locals 1

    .prologue
    .line 3882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mGrabFromNextCanvasPost:Z

    .line 3883
    return-void
.end method

.method public setIsInProgress(Z)V
    .locals 1
    .parameter "InProgress"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->changeProgressState(Z)V

    .line 948
    return-void
.end method

.method setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 548
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    .line 550
    .local v0, currState:I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 552
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 553
    iput v2, p0, Lcom/android/browser/BitmapWebView;->mState:I

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mState:I

    goto :goto_0
.end method

.method setTitleBar(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3682
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    .line 3683
    return-void
.end method

.method public setTitleBarVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1040
    return-void
.end method

.method setVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    check-cast v0, Landroid/view/View;

    .line 3688
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3689
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3690
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/BitmapWebView;->setVisibility(I)V

    .line 3691
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter "webview"
    .parameter "webViewContainer"
    .parameter "bitmapWebviewContainer"
    .parameter "contentView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1416
    iput-object p1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    .line 1417
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v1, p1}, Lcom/android/browser/WebGLAnimator;->setWebView(Landroid/webkit/WebView;)V

    .line 1418
    iput-object p2, p0, Lcom/android/browser/BitmapWebView;->mWebViewContainer:Landroid/view/View;

    .line 1419
    iput-object p3, p0, Lcom/android/browser/BitmapWebView;->mBitmapWebViewContainer:Landroid/view/View;

    .line 1420
    iput-object p4, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    .line 1423
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v1, v2}, Lcom/android/browser/BitmapWebView$Surface;->setWebView(Landroid/webkit/WebView;)V

    .line 1424
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1425
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1427
    invoke-virtual {p0, v4, v4}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 1429
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1430
    .local v0, region:Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 1432
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setTouchInterval(I)V

    .line 1435
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPreventDefaultTimeout(I)V

    .line 1438
    :cond_0
    sget-boolean v1, Lcom/android/browser/BitmapWebView;->USE_POST_BITMAP:Z

    if-eqz v1, :cond_1

    .line 1441
    :cond_1
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mRotationStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2862
    :cond_0
    :goto_0
    return-void

    .line 2821
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 2823
    const-string v0, "BitmapWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t show BitmapWebView, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2827
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-eq v0, v4, :cond_0

    .line 2830
    iput v5, p0, Lcom/android/browser/BitmapWebView;->mWebViewDrawCountAfterShow:I

    .line 2833
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    instance-of v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v0, :cond_4

    .line 2834
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    check-cast v0, Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->hideSurfaceUntilFlipped()V

    .line 2838
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mIgnoreRequestLayout:Z

    .line 2839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebView;->set3DSurfaceLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2841
    iput-boolean v5, p0, Lcom/android/browser/BitmapWebView;->mIgnoreRequestLayout:Z

    .line 2853
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    .line 2854
    iput-boolean v5, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    .line 2855
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->updateTitleBarTextureBitmap()V

    .line 2857
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_5

    .line 2858
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPluginRefreshDelay(I)V

    goto :goto_0

    .line 2841
    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/android/browser/BitmapWebView;->mIgnoreRequestLayout:Z

    throw v0

    .line 2844
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->bringToFront()V

    .line 2845
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mDoubleTapping:Z

    if-ne v0, v4, :cond_3

    .line 2847
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2848
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 2860
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPluginRefreshDelay(I)V

    goto :goto_0
.end method

.method public startDrag()V
    .locals 1

    .prologue
    .line 1265
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 1273
    :cond_0
    return-void
.end method

.method startTensionAni(II)V
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 2547
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    .line 2548
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    .line 2549
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2550
    iput v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2554
    move v0, p1

    .line 2555
    .local v0, dx:I
    move v1, p2

    .line 2561
    .local v1, dy:I
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    if-nez v4, :cond_0

    .line 2563
    const/4 v0, 0x0

    .line 2564
    const/high16 v2, 0x3f80

    .line 2572
    .local v2, scalex:F
    :goto_0
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    if-nez v4, :cond_1

    .line 2574
    const/4 v1, 0x0

    .line 2575
    const/high16 v3, 0x3f80

    .line 2584
    .local v3, scaley:F
    :goto_1
    iput-boolean v9, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    .line 2585
    iput v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    .line 2586
    iput v1, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    .line 2588
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scrollPlugins(II)V

    .line 2589
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BitmapWebView;->scroll(II)V

    .line 2591
    invoke-virtual {p0, v8, v8, v7, v9}, Lcom/android/browser/BitmapWebView;->requestDraw(FFFZ)V

    .line 2593
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestTensionAni()V

    .line 2594
    return-void

    .line 2568
    .end local v2           #scalex:F
    .end local v3           #scaley:F
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorX:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDx:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 2569
    .restart local v2       #scalex:F
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDx:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 2579
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniInterpolatorY:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/android/browser/BitmapWebView;->mTensionAniDy:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    iget v6, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    .line 2580
    .restart local v3       #scaley:F
    iget v4, p0, Lcom/android/browser/BitmapWebView;->mTensionAniEndDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1
.end method

.method public status()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1289
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method stopFling()V
    .locals 1

    .prologue
    .line 2668
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    if-nez v0, :cond_0

    .line 2680
    :goto_0
    return-void

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2672
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeFlingIng()V

    .line 2679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mFlinging:Z

    goto :goto_0
.end method

.method stopTension()V
    .locals 1

    .prologue
    .line 2684
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    if-nez v0, :cond_0

    .line 2689
    :goto_0
    return-void

    .line 2687
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->removeTensionAni()V

    .line 2688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mTensionAni:Z

    goto :goto_0
.end method

.method surfaceChanged()V
    .locals 8

    .prologue
    const-wide/16 v5, 0x0

    const/high16 v2, 0x40a0

    const/4 v4, 0x1

    const-string v7, "BitmapWebView"

    const-string v3, " "

    .line 2396
    const-string v0, "BitmapWebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapWebView.surfaceChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/BitmapWebView;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v1}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v1}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2402
    :cond_0
    iget-wide v0, p0, Lcom/android/browser/BitmapWebView;->mLastFixSurfaceStartMs:J

    cmp-long v0, v0, v5

    if-gtz v0, :cond_1

    .line 2403
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mLastFixSurfaceStartMs:J

    .line 2405
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mLastFixSurfaceStartMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2406
    const-string v0, "BitmapWebView"

    const-string v0, "BitmapWebView.surfaceChanged fail-safe retry."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    instance-of v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v0, :cond_2

    .line 2411
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebView;->set3DSurfaceLayout(Z)V

    .line 2440
    :cond_2
    :goto_0
    return-void

    .line 2414
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/browser/BitmapWebView;->fix3DSurfaceSize(Z)V

    .line 2415
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestSurfaceChanged()V

    goto :goto_0

    .line 2419
    :cond_4
    iput-wide v5, p0, Lcom/android/browser/BitmapWebView;->mLastFixSurfaceStartMs:J

    .line 2422
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2424
    invoke-virtual {p0, v4, v4}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    .line 2425
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistX:I

    .line 2426
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v0}, Lcom/android/browser/BitmapWebView$Surface;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mMaxTensionDistY:I

    .line 2428
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 2430
    invoke-virtual {p0, v0}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 2432
    invoke-virtual {p0, v4}, Lcom/android/browser/BitmapWebView;->setState(I)V

    .line 2434
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 2437
    iput-boolean v4, p0, Lcom/android/browser/BitmapWebView;->mGrabFromNextCanvasPost:Z

    .line 2438
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public update3DSurfaceLayout()V
    .locals 3

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    instance-of v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v0, :cond_0

    .line 2741
    iget-boolean v0, p0, Lcom/android/browser/BitmapWebView;->mVisible:Z

    invoke-direct {p0, v0}, Lcom/android/browser/BitmapWebView;->set3DSurfaceLayout(Z)V

    .line 2747
    new-instance v0, Lcom/android/browser/BitmapWebView$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BitmapWebView$2;-><init>(Lcom/android/browser/BitmapWebView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/BitmapWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2753
    :cond_0
    return-void
.end method

.method updateFinalFlashPos()V
    .locals 1

    .prologue
    .line 2889
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    instance-of v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;

    if-eqz v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->isAbortingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2891
    iget-object p0, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    .end local p0
    check-cast p0, Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {p0}, Lcom/android/browser/BitmapWebViewSurface3D;->hideSurfaceUntilFlipped()V

    .line 2894
    :cond_0
    return-void
.end method

.method updateTitleBarTextureBitmap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2898
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarVisibility:Z

    if-nez v1, :cond_1

    .line 2920
    :cond_0
    :goto_0
    return-void

    .line 2901
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    if-eq v1, v2, :cond_0

    .line 2904
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2907
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBarBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2913
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/browser/TitleBar;->mDisableGenerationCounting:Z

    .line 2914
    iget-object v1, p0, Lcom/android/browser/BitmapWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2916
    sput-boolean v3, Lcom/android/browser/TitleBar;->mDisableGenerationCounting:Z

    .line 2919
    iput-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mTiltebarBitmapUpdated:Z

    goto :goto_0

    .line 2916
    :catchall_0
    move-exception v1

    sput-boolean v3, Lcom/android/browser/TitleBar;->mDisableGenerationCounting:Z

    throw v1
.end method

.method updateViewRect(IIII)V
    .locals 18
    .parameter "viewRectLeft"
    .parameter "viewRectTop"
    .parameter "viewRectRight"
    .parameter "viewRectBottom"

    .prologue
    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v14, v0

    div-int/lit8 v5, v14, 0x2

    .line 2311
    .local v5, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move v14, v0

    div-int/lit8 v6, v14, 0x2

    .line 2312
    .local v6, dy:I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move-object v0, v12

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2318
    .local v12, textureRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v12, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->calcTextureRegion(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 2329
    .local v7, newTextureRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->left:I

    div-int/lit16 v10, v14, 0x100

    .line 2330
    .local v10, oldtilex:I
    iget v14, v7, Landroid/graphics/Rect;->left:I

    div-int/lit16 v8, v14, 0x100

    .line 2331
    .local v8, newtilex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->top:I

    div-int/lit16 v11, v14, 0x100

    .line 2332
    .local v11, oldtiley:I
    iget v14, v7, Landroid/graphics/Rect;->top:I

    div-int/lit16 v9, v14, 0x100

    .line 2335
    .local v9, newtiley:I
    if-ne v10, v8, :cond_0

    if-eq v11, v9, :cond_1

    .line 2339
    :cond_0
    new-instance v13, Landroid/graphics/Region;

    invoke-direct {v13, v7}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 2340
    .local v13, updateRegion:Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    sget-object v15, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2342
    invoke-virtual {v13}, Landroid/graphics/Region;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2346
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->requestUpdateContents(Landroid/graphics/Region;)V

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v14, v0

    monitor-enter v14

    .line 2352
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    sget-object v17, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mValidTextureRegion:Landroid/graphics/Region;

    move-object v15, v0

    sget-object v16, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2357
    monitor-exit v14

    .line 2371
    .end local v7           #newTextureRegion:Landroid/graphics/Rect;
    .end local v8           #newtilex:I
    .end local v9           #newtiley:I
    .end local v10           #oldtilex:I
    .end local v11           #oldtiley:I
    .end local v13           #updateRegion:Landroid/graphics/Region;
    :cond_1
    return-void

    .line 2357
    .restart local v7       #newTextureRegion:Landroid/graphics/Rect;
    .restart local v8       #newtilex:I
    .restart local v9       #newtiley:I
    .restart local v10       #oldtilex:I
    .restart local v11       #oldtiley:I
    .restart local v13       #updateRegion:Landroid/graphics/Region;
    :catchall_0
    move-exception v15

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method updateViewRectGL(IIIIII)V
    .locals 7
    .parameter "newViewLeft"
    .parameter "newViewTop"
    .parameter "viewRectLeft"
    .parameter "viewRectTop"
    .parameter "viewRectRight"
    .parameter "viewRectBottom"

    .prologue
    .line 2261
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->OPTIMIZE_EVENTS:Z

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->assertCalledOnGLThread()V

    .line 2265
    :cond_0
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne p5, v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p4, v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne p6, v0, :cond_1

    .line 2283
    :goto_0
    return-void

    .line 2273
    :cond_1
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    .line 2274
    iget v0, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    iput v0, p0, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    .line 2275
    iput p1, p0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    .line 2276
    iput p2, p0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    .line 2278
    iget-object v6, p0, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/android/browser/BitmapWebView$1;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BitmapWebView$1;-><init>(Lcom/android/browser/BitmapWebView;IIII)V

    invoke-virtual {v6, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method updateWebViewTexture()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1580
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->getDrawFrameFlag()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v2, :cond_2

    .line 1582
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1584
    .local v0, tick:J
    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1585
    iput-wide v0, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 1589
    :cond_0
    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1605
    .end local v0           #tick:J
    :goto_0
    return-void

    .line 1595
    .restart local v0       #tick:J
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BitmapWebView;->requestUpdateWebViewTexture()V

    goto :goto_0

    .line 1600
    .end local v0           #tick:J
    :cond_2
    iput-wide v4, p0, Lcom/android/browser/BitmapWebView;->mUpdateTexIgnoreTick:J

    .line 1602
    iget-object v2, p0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v2}, Lcom/android/browser/BitmapWebView$Surface;->updateTilesInQueue()V

    goto :goto_0
.end method

.method updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z
    .locals 2
    .parameter "regionToUpdate"
    .parameter "timelimit"

    .prologue
    const/4 v1, 0x0

    .line 1610
    sget-boolean v0, Lcom/android/browser/BitmapWebView;->DEBUG_POST_BITMAP:Z

    if-eqz v0, :cond_0

    .line 1611
    const/4 v0, 0x0

    .line 1613
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;ZLandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method updateWebViewTextureBitmap(Landroid/graphics/Region;ZLandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1619
    const/4 v3, 0x1

    .line 1955
    :goto_0
    return v3

    .line 1620
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1622
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1623
    new-instance v4, Landroid/graphics/Region;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 1632
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1640
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v6, v0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1647
    invoke-virtual {v4}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1650
    const/4 v3, 0x1

    goto :goto_0

    .line 1654
    :cond_2
    new-instance v5, Landroid/graphics/RegionIterator;

    invoke-direct {v5, v4}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 1658
    const/4 v4, 0x0

    .line 1659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1661
    const/4 v8, 0x0

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTextureWidth:I

    move v7, v0

    rem-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x100

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTextureHeight:I

    move v13, v0

    rem-int/2addr v7, v13

    div-int/lit16 v7, v7, 0x100

    .line 1680
    :cond_3
    invoke-virtual {v5, v3}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1686
    iget v13, v3, Landroid/graphics/Rect;->left:I

    div-int/lit16 v13, v13, 0x100

    .line 1688
    iget v14, v3, Landroid/graphics/Rect;->right:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    div-int/lit16 v14, v14, 0x100

    .line 1689
    iget v15, v3, Landroid/graphics/Rect;->top:I

    div-int/lit16 v15, v15, 0x100

    .line 1690
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    .line 1698
    :goto_1
    if-gt v13, v14, :cond_3

    move/from16 v17, v15

    .line 1699
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    .line 1701
    :try_start_0
    aget-object v18, p1, v17

    const/16 v19, 0x1

    aput-boolean v19, v18, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1701
    :catch_0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 1698
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1715
    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v15, v0

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v15, v0

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-direct {v3, v5, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1723
    iget v5, v3, Landroid/graphics/Rect;->left:I

    div-int/lit16 v5, v5, 0x100

    .line 1725
    iget v13, v3, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    div-int/lit16 v13, v13, 0x100

    .line 1726
    iget v14, v3, Landroid/graphics/Rect;->top:I

    div-int/lit16 v14, v14, 0x100

    .line 1727
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    div-int/lit16 v3, v3, 0x100

    .line 1729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v15, v0

    if-lt v3, v15, :cond_6

    .line 1732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v3, v0

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    .line 1735
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v15, v0

    if-lt v13, v15, :cond_7

    .line 1738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v13, v0

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    .line 1745
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mOldViewLeft:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewLeft:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    move v15, v13

    move v13, v5

    .line 1758
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mOldViewTop:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewTop:I

    move/from16 v16, v0

    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    move/from16 v16, v14

    move v14, v3

    .line 1769
    :goto_5
    if-eqz p3, :cond_e

    .line 1775
    const/4 v3, 0x0

    move v4, v3

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v3, v0

    if-gt v4, v3, :cond_d

    .line 1776
    const/4 v3, 0x0

    move v5, v3

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v3, v0

    if-gt v5, v3, :cond_c

    move-object/from16 v3, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 1777
    invoke-virtual/range {v3 .. v10}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v3

    .line 1778
    if-eqz v3, :cond_9

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object v9, v0

    invoke-interface {v9, v3}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1780
    invoke-virtual {v3}, Lcom/android/browser/BitmapWebView$Tile;->isPartial()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object v9, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v3, v10}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1783
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1776
    :cond_9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_7

    :cond_a
    move v15, v5

    .line 1754
    goto :goto_4

    :cond_b
    move/from16 v16, v3

    .line 1766
    goto :goto_5

    .line 1775
    :cond_c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 1787
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_e
    move/from16 v5, v16

    move/from16 v17, v4

    .line 1794
    :goto_8
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_12

    move/from16 v3, v17

    .line 1867
    :cond_f
    if-nez v3, :cond_10

    .line 1870
    const/4 v4, 0x0

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewWidth:I

    move v13, v0

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v5, v13

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureRegion:Landroid/graphics/Rect;

    move-object v14, v0

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mViewHeight:I

    move v14, v0

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 1882
    div-int/lit16 v14, v5, 0x100

    .line 1883
    div-int/lit16 v13, v13, 0x100

    move v15, v4

    .line 1886
    :goto_9
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 1950
    :cond_10
    sget-boolean v4, Lcom/android/browser/BitmapWebView;->DEBUG_PERFORMANCE:Z

    if-eqz v4, :cond_11

    const-string v4, "GL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWebViewTextureBitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_11
    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1953
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_12
    move v4, v15

    .line 1803
    :goto_a
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_13

    move/from16 v3, v17

    .line 1851
    :goto_b
    move/from16 v0, v16

    move v1, v14

    if-le v0, v1, :cond_1a

    .line 1853
    if-le v5, v14, :cond_f

    if-lez v5, :cond_f

    .line 1854
    add-int/lit8 v4, v5, -0x1

    move v5, v4

    move/from16 v17, v3

    goto/16 :goto_8

    .line 1809
    :cond_13
    if-ltz v4, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v3, v0

    if-ge v4, v3, :cond_27

    if-ltz v5, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v3, v0

    if-lt v5, v3, :cond_14

    move/from16 v3, v17

    .line 1810
    goto :goto_b

    .line 1812
    :cond_14
    aget-object v3, p1, v5

    aget-boolean v3, v3, v4

    const/16 v18, 0x1

    move v0, v3

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v3, p0

    .line 1815
    invoke-virtual/range {v3 .. v8}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v3

    .line 1816
    if-nez v3, :cond_15

    .line 1818
    const/4 v3, 0x1

    .line 1819
    goto :goto_b

    .line 1824
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object/from16 v18, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    sget-object v19, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1827
    aget-object v3, p1, v5

    const/16 v18, 0x0

    aput-boolean v18, v3, v4

    .line 1829
    const/4 v3, 0x1

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v11

    const-wide/16 v20, 0x1

    cmp-long v3, v18, v20

    if-lez v3, :cond_16

    .line 1831
    const/4 v3, 0x1

    .line 1832
    goto :goto_b

    .line 1838
    :cond_16
    if-le v15, v13, :cond_18

    .line 1840
    if-le v4, v13, :cond_27

    if-gtz v4, :cond_17

    move/from16 v3, v17

    goto :goto_b

    .line 1841
    :cond_17
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto/16 :goto_a

    .line 1845
    :cond_18
    if-ge v4, v13, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v3, v0

    const/16 v18, 0x1

    sub-int v3, v3, v18

    if-lt v4, v3, :cond_19

    move/from16 v3, v17

    goto/16 :goto_b

    .line 1846
    :cond_19
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_a

    .line 1858
    :cond_1a
    if-ge v5, v14, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v4, v0

    const/16 v17, 0x1

    sub-int v4, v4, v17

    if-ge v5, v4, :cond_f

    .line 1859
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move/from16 v17, v3

    goto/16 :goto_8

    .line 1889
    :cond_1b
    sub-int v4, v14, v15

    .line 1890
    add-int v5, v14, v15

    .line 1891
    sub-int v16, v13, v15

    .line 1892
    add-int v17, v13, v15

    .line 1895
    if-gez v4, :cond_1c

    if-gez v16, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move/from16 v18, v0

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 1899
    :cond_1c
    if-gez v4, :cond_1d

    .line 1900
    const/4 v4, 0x0

    .line 1901
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move/from16 v18, v0

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_26

    .line 1902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumX:I

    move v5, v0

    const/16 v18, 0x1

    sub-int v5, v5, v18

    move/from16 v18, v5

    .line 1903
    :goto_c
    if-gez v16, :cond_1e

    .line 1904
    const/4 v5, 0x0

    move/from16 v16, v5

    .line 1905
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_1f

    .line 1906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BitmapWebView;->mTileNumY:I

    move v5, v0

    const/16 v17, 0x1

    sub-int v5, v5, v17

    move/from16 v17, v5

    :cond_1f
    move/from16 v19, v3

    .line 1909
    :goto_d
    move v0, v4

    move/from16 v1, v18

    if-gt v0, v1, :cond_23

    move/from16 v5, v16

    .line 1910
    :goto_e
    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_25

    .line 1912
    aget-object v3, p1, v5

    aget-boolean v3, v3, v4

    if-nez v3, :cond_21

    .line 1910
    :cond_20
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_e

    :cond_21
    move-object/from16 v3, p0

    .line 1915
    invoke-virtual/range {v3 .. v8}, Lcom/android/browser/BitmapWebView;->drawTile(IIIILandroid/graphics/Picture;)Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v3

    .line 1917
    if-nez v3, :cond_22

    .line 1919
    const/4 v3, 0x1

    .line 1920
    add-int/lit8 v4, v18, 0x1

    .line 1921
    add-int/lit8 v5, v17, 0x1

    move/from16 v24, v4

    move v4, v3

    move/from16 v3, v24

    .line 1909
    :goto_f
    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v4

    move v4, v3

    goto :goto_d

    .line 1925
    :cond_22
    aget-object v20, p1, v5

    const/16 v21, 0x0

    aput-boolean v21, v20, v4

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Lcom/android/browser/BitmapWebView$Surface;->updateTile(Lcom/android/browser/BitmapWebView$Tile;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    iget-object v3, v3, Lcom/android/browser/BitmapWebView$Tile;->mBoundary:Landroid/graphics/Rect;

    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1930
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    .line 1932
    const/4 v3, 0x1

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v11

    const-wide/16 v22, 0x1

    cmp-long v3, v20, v22

    if-lez v3, :cond_20

    .line 1934
    const/4 v3, 0x1

    .line 1935
    add-int/lit8 v4, v18, 0x1

    .line 1936
    add-int/lit8 v5, v17, 0x1

    move/from16 v24, v4

    move v4, v3

    move/from16 v3, v24

    .line 1937
    goto :goto_f

    .line 1942
    :cond_23
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move/from16 v3, v19

    goto/16 :goto_9

    .line 1955
    :cond_24
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_25
    move v3, v4

    move/from16 v4, v19

    goto :goto_f

    :cond_26
    move/from16 v18, v5

    goto/16 :goto_c

    :cond_27
    move/from16 v3, v17

    goto/16 :goto_b
.end method
