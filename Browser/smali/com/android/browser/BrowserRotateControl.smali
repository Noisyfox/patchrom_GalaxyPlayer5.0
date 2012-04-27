.class public Lcom/android/browser/BrowserRotateControl;
.super Lcom/android/browser/RotateControl;
.source "BrowserRotateControl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/browser/RotateControl$Callback;


# instance fields
.field mLandscapeCapture:Landroid/graphics/Bitmap;

.field mLandscapeStatus:Landroid/graphics/Bitmap;

.field mLandscapeTitle:Landroid/graphics/Bitmap;

.field mPortraitCapture:Landroid/graphics/Bitmap;

.field mPortraitStatus:Landroid/graphics/Bitmap;

.field mPortraitTitle:Landroid/graphics/Bitmap;

.field mRatio:F

.field mStatusBar:Landroid/app/StatusBarManager;

.field mTitleBar:Lcom/android/browser/TitleBar;

.field mTitleHeight:I

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method private finalizeWebViewRotationStates()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setIgnoreDoubleTap(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setIgnoreFling(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPluginRefreshDelay(I)V

    .line 194
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeWebViewPriority()V

    .line 197
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/BrowserRotateControl$2;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserRotateControl$2;-><init>(Lcom/android/browser/BrowserRotateControl;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method


# virtual methods
.method grabTitleBar(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, -0x8000

    const/4 v5, 0x0

    .line 84
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getMeasuredWidth()I

    move-result v1

    .line 85
    .local v1, w:I
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getMeasuredHeight()I

    move-result v0

    .line 86
    .local v0, h:I
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/TitleBar;->measure(II)V

    .line 87
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-object v3, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3}, Lcom/android/browser/TitleBar;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4}, Lcom/android/browser/TitleBar;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/android/browser/TitleBar;->layout(IIII)V

    .line 88
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2, p1}, Lcom/android/browser/TitleBar;->draw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/TitleBar;->measure(II)V

    .line 90
    iget-object v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-object v3, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3}, Lcom/android/browser/TitleBar;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4}, Lcom/android/browser/TitleBar;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/android/browser/TitleBar;->layout(IIII)V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-super {p0}, Lcom/android/browser/RotateControl;->onDestroy()V

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 212
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 213
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 214
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 215
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 216
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitStatus:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 217
    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeStatus:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 219
    :goto_6
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitCapture:Landroid/graphics/Bitmap;

    .line 220
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeCapture:Landroid/graphics/Bitmap;

    .line 221
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    .line 222
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    .line 223
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitStatus:Landroid/graphics/Bitmap;

    .line 224
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeStatus:Landroid/graphics/Bitmap;

    .line 226
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mStatusBar:Landroid/app/StatusBarManager;

    .line 227
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 228
    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    .line 229
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_6

    .line 216
    :catch_1
    move-exception v0

    goto :goto_5

    .line 215
    :catch_2
    move-exception v0

    goto :goto_4

    .line 214
    :catch_3
    move-exception v0

    goto :goto_3

    .line 213
    :catch_4
    move-exception v0

    goto :goto_2

    .line 212
    :catch_5
    move-exception v0

    goto :goto_1

    .line 210
    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitCapture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/android/browser/RotateControl;->onGlobalLayout()V

    .line 68
    iget-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    .line 69
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BrowserRotateControl;->mRatio:F

    .line 72
    :try_start_0
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    iget v2, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitCapture:Landroid/graphics/Bitmap;

    .line 73
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    iget v2, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeCapture:Landroid/graphics/Bitmap;

    .line 74
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    iget v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    .line 75
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    iget v2, p0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    .line 76
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    iget v2, p0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mPortraitStatus:Landroid/graphics/Bitmap;

    .line 77
    iget v1, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    iget v2, p0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserRotateControl;->mLandscapeStatus:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/browser/RotateControl;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/browser/RotateControl;->onResume()V

    return-void
.end method

.method public bridge synthetic onSizeChanged()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/browser/RotateControl;->onSizeChanged()V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/browser/RotateControl;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public orientationChangeCompleted(I)V
    .locals 2
    .parameter "orient"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setIgnoreViewSizeChanged(Z)V

    .line 185
    invoke-direct {p0}, Lcom/android/browser/BrowserRotateControl;->finalizeWebViewRotationStates()V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/RotateControl;->orientationChangeCompleted(I)V

    .line 188
    return-void
.end method

.method public bridge synthetic resetOrientation()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/browser/RotateControl;->resetOrientation()I

    move-result v0

    return v0
.end method

.method public bridge synthetic rotateToDestination()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/browser/RotateControl;->rotateToDestination()V

    return-void
.end method

.method public setOrientation(ILcom/android/browser/RotateManager;)V
    .locals 24
    .parameter "orient"
    .parameter "rotateManager"

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/browser/RotateManager;->mState:I

    move v5, v0

    if-eqz v5, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setPluginRefreshDelay(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setIgnoreDoubleTap(Z)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setIgnoreFling(Z)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->reduceWebViewPriority()V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScale()F

    move-result v18

    .line 104
    .local v18, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getMaxZoomScale()F

    move-result v19

    .line 105
    .local v19, scaleMax:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v20

    .line 106
    .local v20, scrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v21

    .line 107
    .local v21, scrollY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->userScalable()Z

    move-result v13

    .line 108
    .local v13, scaleToFit:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_8

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 110
    .local v17, landscape:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    .line 112
    const-string v5, "BrowserRotateControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",scaleMax:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v5, "BrowserRotateControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrollX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",scrollY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v5, "BrowserRotateControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scaleToFit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",landscape:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v5, "BrowserRotateControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz v13, :cond_2

    if-eqz v17, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mRatio:F

    move v5, v0

    mul-float v18, v18, v5

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mRatio:F

    move v5, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mRatio:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v7, v0

    sub-int v7, v21, v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v21, v5, v6

    .line 127
    :cond_2
    if-eqz v17, :cond_4

    .line 128
    move/from16 v23, v21

    .line 129
    .local v23, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    move v6, v0

    sub-int v22, v5, v6

    .line 130
    .local v22, viewMax:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v18

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v6, v0

    add-int v16, v5, v6

    .line 132
    .local v16, docMax:I
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 133
    const/16 v23, 0x0

    .line 140
    :cond_3
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 141
    move/from16 v21, v23

    .line 145
    .end local v16           #docMax:I
    .end local v22           #viewMax:I
    .end local v23           #y:I
    :cond_4
    if-nez v13, :cond_5

    if-nez v17, :cond_b

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitCapture:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object v7, v5

    .line 147
    .local v7, mCapture:Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->grabScreen(Landroid/graphics/Canvas;IIF)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v6, v0

    if-eq v5, v6, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v6, v0

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v6, v0

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    .line 157
    :cond_6
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRotateControl;->grabTitleBar(Landroid/graphics/Canvas;)V

    .line 158
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRotateControl;->grabTitleBar(Landroid/graphics/Canvas;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mStatusBar:Landroid/app/StatusBarManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    move v8, v0

    const-wide/16 v9, 0x1f4

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/app/StatusBarManager;->grabScreen(IIJ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 161
    .local v15, bitmap:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitStatus:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateControl;->mPortraitStatus:Landroid/graphics/Bitmap;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mStatusBar:Landroid/app/StatusBarManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    move v8, v0

    const-wide/16 v9, 0x1f4

    invoke-virtual {v5, v6, v8, v9, v10}, Landroid/app/StatusBarManager;->grabScreen(IIJ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 166
    if-eqz v15, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mLandscapeStatus:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserRotateControl;->mLandscapeStatus:Landroid/graphics/Bitmap;

    .line 171
    :cond_7
    const-string v5, "BrowserRotateControl"

    const-string v6, "setOrientation befor"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/browser/BrowserRotateManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitTitle:Landroid/graphics/Bitmap;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mLandscapeTitle:Landroid/graphics/Bitmap;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mPortraitStatus:Landroid/graphics/Bitmap;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mLandscapeStatus:Landroid/graphics/Bitmap;

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserRotateControl;->mTitleHeight:I

    move v6, v0

    sub-int v6, v6, v21

    const/4 v12, 0x0

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    div-float v14, v19, v18

    move/from16 v6, p1

    invoke-virtual/range {v5 .. v14}, Lcom/android/browser/BrowserRotateManager;->setOrientation(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IZF)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 173
    const-string v5, "BrowserRotateControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setOrientation is true: orient"

    .end local v7           #mCapture:Landroid/graphics/Bitmap;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setIgnoreViewSizeChanged(Z)V

    goto/16 :goto_0

    .line 108
    .end local v15           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #landscape:Z
    :cond_8
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_1

    .line 134
    .restart local v16       #docMax:I
    .restart local v17       #landscape:Z
    .restart local v22       #viewMax:I
    .restart local v23       #y:I
    :cond_9
    if-gez v23, :cond_a

    .line 135
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 136
    :cond_a
    add-int v5, v23, v22

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 137
    sub-int v23, v16, v22

    goto/16 :goto_2

    .line 145
    .end local v16           #docMax:I
    .end local v22           #viewMax:I
    .end local v23           #y:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserRotateControl;->mLandscapeCapture:Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object v7, v5

    goto/16 :goto_3

    .line 176
    .restart local v7       #mCapture:Landroid/graphics/Bitmap;
    .restart local v15       #bitmap:Landroid/graphics/Bitmap;
    :cond_c
    const-string v5, "BrowserRotateControl"

    const-string v6, "setOrientation is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserRotateControl;->finalizeWebViewRotationStates()V

    goto/16 :goto_0
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/BrowserRotateControl;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 41
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHasRotateSupport(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setSizeChangedCallback(Ljava/lang/Runnable;)V

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHasRotateSupport(Z)V

    .line 51
    new-instance v0, Lcom/android/browser/BrowserRotateControl$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserRotateControl$1;-><init>(Lcom/android/browser/BrowserRotateControl;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setSizeChangedCallback(Ljava/lang/Runnable;)V

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/android/browser/BrowserRotateControl;->mWebView:Landroid/webkit/WebView;

    .line 59
    return-void
.end method
