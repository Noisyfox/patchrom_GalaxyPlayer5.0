.class abstract Lcom/android/browser/RotateManager;
.super Ljava/lang/Object;
.source "RotateManager.java"

# interfaces
.implements Lcom/android/browser/RotateRenderer$Animator;
.implements Lcom/android/browser/RotateRenderer$TextureLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/RotateManager$Callback;
    }
.end annotation


# static fields
.field public static final ANIMATION_PERIOD:I

.field private static ANIMATION_SCALE:I


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAniNumFrames:I

.field private mCallback:Lcom/android/browser/RotateManager$Callback;

.field protected mElapsedTextureLoad:J

.field mFrameLayout:Landroid/widget/FrameLayout;

.field mGLAcknowledgedCleanup:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mOldTargetOrientation:I

.field mRotateView2D:Lcom/android/browser/RotateView2D;

.field mRotateView3D:Lcom/android/browser/RotateView3D;

.field mScrPortraitH:I

.field mScrPortraitW:I

.field mState:I

.field mStatusBarHeight:I

.field mTargetOrientation:I

.field private mThread:Ljava/lang/Thread;

.field private mTimeEnd3DAnimate:J

.field private mTimeFirst2DDraw:J

.field private mTimeRemoveOverlay:J

.field private mTimeStart3DAnimate:J

.field private mTimeStartSetOrient:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/android/browser/RotateManager;->ANIMATION_SCALE:I

    .line 48
    :try_start_0
    const-string v0, "debug.browser.animation_scale"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/browser/RotateManager;->ANIMATION_SCALE:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    sget v0, Lcom/android/browser/RotateManager;->ANIMATION_SCALE:I

    mul-int/lit16 v0, v0, 0x140

    sput v0, Lcom/android/browser/RotateManager;->ANIMATION_PERIOD:I

    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/browser/RotateManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->deleteOverlay()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/RotateManager;)Lcom/android/browser/RotateManager$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mCallback:Lcom/android/browser/RotateManager$Callback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/RotateManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/android/browser/RotateManager;->mTimeRemoveOverlay:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/browser/RotateManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->printStats()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/RotateManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->onRotateView3DReady()V

    return-void
.end method

.method private createOverlay(Z)V
    .locals 10
    .parameter "scaleToFit"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->refrainBitmapWebView()V

    .line 252
    :try_start_0
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 253
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 254
    .local v4, w:I
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 255
    .local v2, h:I
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v6, v4, v9

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 256
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v6, v2, v9

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 258
    new-instance v5, Lcom/android/browser/RotateView3D;

    iget-object v6, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, p1}, Lcom/android/browser/RotateView3D;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    .line 259
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/browser/RotateManager;->mGLAcknowledgedCleanup:Z

    .line 260
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, autobright:I
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 273
    :cond_0
    if-eq v0, v9, :cond_1

    .line 274
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v1

    .line 275
    .local v1, brightness:I
    if-gtz v1, :cond_2

    .line 276
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x3df5c28f

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 285
    .end local v1           #brightness:I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    invoke-virtual {v5}, Lcom/android/browser/RotateView3D;->getRenderer()Lcom/android/browser/RotateRenderer;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/browser/RotateRenderer;->setTextureLoader(Lcom/android/browser/RotateRenderer$TextureLoader;)V

    .line 286
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    invoke-virtual {v5}, Lcom/android/browser/RotateView3D;->getRenderer()Lcom/android/browser/RotateRenderer;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/browser/RotateRenderer;->setAnimator(Lcom/android/browser/RotateRenderer$Animator;)V

    .line 288
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .end local v0           #autobright:I
    .end local v2           #h:I
    .end local v4           #w:I
    :goto_1
    return-void

    .line 277
    .restart local v0       #autobright:I
    .restart local v1       #brightness:I
    .restart local v2       #h:I
    .restart local v4       #w:I
    :cond_2
    const/16 v5, 0x28

    if-ne v1, v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x3ee66666

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v0           #autobright:I
    .end local v1           #brightness:I
    .end local v2           #h:I
    .end local v4           #w:I
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 290
    .local v3, t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->deleteOverlay()V

    .line 292
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->cleanup()V

    .line 293
    iput v8, p0, Lcom/android/browser/RotateManager;->mState:I

    goto :goto_1

    .line 279
    .end local v3           #t:Ljava/lang/Throwable;
    .restart local v0       #autobright:I
    .restart local v1       #brightness:I
    .restart local v2       #h:I
    .restart local v4       #w:I
    :cond_3
    const/16 v5, 0x32

    if-ne v1, v5, :cond_4

    .line 280
    :try_start_1
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x3f11eb85

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 282
    :cond_4
    iget-object v5, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x3dcccccd

    div-int/lit8 v7, v1, 0xa

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private deleteOverlay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->checkThread()V

    .line 299
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->notifyCleanupToGLThread()V

    .line 307
    iput-object v3, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    .line 309
    :cond_0
    iput-object v3, p0, Lcom/android/browser/RotateManager;->mRotateView2D:Lcom/android/browser/RotateView2D;

    .line 310
    iput-object v3, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->resumeBitmapWebView()V

    .line 313
    return-void

    .line 302
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 303
    .local v0, t:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 436
    const-string v0, "Rotate"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private ms(JJ)Ljava/lang/String;
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onRotateView3DReady()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->checkThread()V

    .line 475
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    invoke-virtual {v0}, Lcom/android/browser/RotateView3D;->hideSurfaceUntilFlipped()V

    .line 481
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 482
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 483
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/browser/RotateManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget v0, p0, Lcom/android/browser/RotateManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 486
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 487
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/RotateManager;->setFullScreen(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/RotateManager;->mTimeStart3DAnimate:J

    .line 508
    sget v0, Lcom/android/browser/RotateManager;->ANIMATION_PERIOD:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/RotateManager;->startRotate(J)V

    goto :goto_0
.end method

.method private printStats()V
    .locals 7

    .prologue
    const-string v6, "=========================================================="

    .line 440
    iget-wide v1, p0, Lcom/android/browser/RotateManager;->mTimeEnd3DAnimate:J

    iget-wide v3, p0, Lcom/android/browser/RotateManager;->mTimeStart3DAnimate:J

    sub-long/2addr v1, v3

    long-to-float v0, v1

    .line 441
    .local v0, elapsed:F
    const-string v1, "=========================================================="

    invoke-direct {p0, v6}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture loading time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/browser/RotateManager;->mElapsedTextureLoad:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 443
    const-string v1, "..............."

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start 3D Animate  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/browser/RotateManager;->mTimeStartSetOrient:J

    iget-wide v4, p0, Lcom/android/browser/RotateManager;->mTimeStart3DAnimate:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/browser/RotateManager;->ms(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish 3D Animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/browser/RotateManager;->mTimeStart3DAnimate:J

    iget-wide v4, p0, Lcom/android/browser/RotateManager;->mTimeEnd3DAnimate:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/browser/RotateManager;->ms(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove Overlay    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/browser/RotateManager;->mTimeEnd3DAnimate:J

    iget-wide v4, p0, Lcom/android/browser/RotateManager;->mTimeRemoveOverlay:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/browser/RotateManager;->ms(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 453
    const/high16 v0, 0x3f80

    .line 455
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS               = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/RotateManager;->mAniNumFrames:I

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 456
    const-string v1, "=========================================================="

    invoke-direct {p0, v6}, Lcom/android/browser/RotateManager;->log(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private refrainBitmapWebView()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/android/browser/BrowserActivity;

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->refrainUpdateContents()V

    .line 319
    :cond_0
    return-void
.end method

.method private resumeBitmapWebView()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 323
    iget-object p0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/android/browser/BrowserActivity;

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->resumeUpdateContents()V

    .line 325
    :cond_0
    return-void
.end method

.method private setFullScreen(Z)V
    .locals 0
    .parameter "isFull"

    .prologue
    .line 461
    return-void
.end method


# virtual methods
.method declared-synchronized acknowledgeCleanup()V
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/browser/RotateManager;->mGLAcknowledgedCleanup:Z

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the original thread that created a view hierarchy can touch this function."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    return-void
.end method

.method protected abstract cleanup()V
.end method

.method getCurrentOrientation()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 116
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 122
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getRequestedOrientation()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getRequestedRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 132
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 138
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public initLayout(III)V
    .locals 0
    .parameter "scrPortraitW"
    .parameter "scrPortraitH"
    .parameter "statusBarHeight"

    .prologue
    .line 573
    iput p1, p0, Lcom/android/browser/RotateManager;->mScrPortraitW:I

    .line 574
    iput p2, p0, Lcom/android/browser/RotateManager;->mScrPortraitH:I

    .line 575
    iput p3, p0, Lcom/android/browser/RotateManager;->mStatusBarHeight:I

    .line 576
    return-void
.end method

.method declared-synchronized notifyCleanupToGLThread()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    new-instance v1, Lcom/android/browser/RotateManager$1;

    invoke-direct {v1, p0}, Lcom/android/browser/RotateManager$1;-><init>(Lcom/android/browser/RotateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/RotateView3D;->queueEvent(Ljava/lang/Runnable;)V

    .line 334
    :goto_0
    iget-boolean v0, p0, Lcom/android/browser/RotateManager;->mGLAcknowledgedCleanup:Z

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 341
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected now()J
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationStart(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 544
    iget v0, p0, Lcom/android/browser/RotateManager;->mAniNumFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/RotateManager;->mAniNumFrames:I

    .line 545
    iget v0, p0, Lcom/android/browser/RotateManager;->mAniNumFrames:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/browser/RotateManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 546
    new-instance v0, Lcom/android/browser/RotateManager$7;

    invoke-direct {v0, p0}, Lcom/android/browser/RotateManager$7;-><init>(Lcom/android/browser/RotateManager;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/RotateManager;->post(Ljava/lang/Runnable;)V

    .line 552
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/browser/RotateManager;->mState:I

    if-eqz v0, :cond_1

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->deleteOverlay()V

    .line 581
    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->setFullScreen(Z)V

    .line 582
    iput v1, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 583
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->cleanup()V

    .line 585
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method public onRotateView2DRender()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 349
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->checkThread()V

    .line 350
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget v1, p0, Lcom/android/browser/RotateManager;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->now()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/browser/RotateManager;->mTimeFirst2DDraw:J

    .line 357
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 364
    new-instance v1, Lcom/android/browser/RotateManager$2;

    invoke-direct {v1, p0}, Lcom/android/browser/RotateManager$2;-><init>(Lcom/android/browser/RotateManager;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/RotateManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 372
    :cond_2
    iget v1, p0, Lcom/android/browser/RotateManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 373
    iput v3, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 374
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 375
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/RotateView3D;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/android/browser/RotateManager;->mRotateView2D:Lcom/android/browser/RotateView2D;

    invoke-virtual {v1}, Lcom/android/browser/RotateView2D;->invalidate()V

    goto :goto_0

    .line 378
    :cond_3
    iget v1, p0, Lcom/android/browser/RotateManager;->mState:I

    if-ne v1, v3, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 412
    .local v0, ANIMATE_STATUS_SCROLL_DOWN:Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/browser/RotateManager;->setFullScreen(Z)V

    .line 413
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 414
    new-instance v1, Lcom/android/browser/RotateManager$5;

    invoke-direct {v1, p0}, Lcom/android/browser/RotateManager$5;-><init>(Lcom/android/browser/RotateManager;)V

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/RotateManager;->postDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method protected onRotateView3DAnimationDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->checkThread()V

    .line 514
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/RotateManager;->mTimeEnd3DAnimate:J

    .line 518
    iget v0, p0, Lcom/android/browser/RotateManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 519
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 524
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 525
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/RotateView3D;->setVisibility(I)V

    .line 526
    invoke-direct {p0, v2}, Lcom/android/browser/RotateManager;->setFullScreen(Z)V

    .line 527
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 528
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->deleteOverlay()V

    .line 529
    iput v2, p0, Lcom/android/browser/RotateManager;->mState:I

    .line 530
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->cleanup()V

    .line 531
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mCallback:Lcom/android/browser/RotateManager$Callback;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mCallback:Lcom/android/browser/RotateManager$Callback;

    iget v1, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    invoke-interface {v0, v1}, Lcom/android/browser/RotateManager$Callback;->orientationChangeCompleted(I)V

    .line 534
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/RotateManager;->mTimeRemoveOverlay:J

    .line 535
    invoke-direct {p0}, Lcom/android/browser/RotateManager;->printStats()V

    goto :goto_0
.end method

.method protected post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    .line 556
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 559
    :cond_0
    return-void
.end method

.method protected postDelayed(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mRotateView3D:Lcom/android/browser/RotateView3D;

    .line 563
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 564
    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    :cond_0
    return-void
.end method

.method protected setOrientation(IZ)Z
    .locals 7
    .parameter "orient"
    .parameter "scaleToFit"

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "RotateManager"

    .line 162
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:orient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",scaleToFit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/RotateManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->checkThread()V

    .line 166
    iget v0, p0, Lcom/android/browser/RotateManager;->mState:I

    if-eqz v0, :cond_0

    move v0, v3

    .line 231
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/RotateManager;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/RotateManager;->mTimeStartSetOrient:J

    .line 173
    iget v0, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    iput v0, p0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    .line 174
    iput p1, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    .line 175
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:mTargetOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOldTargetOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput v3, p0, Lcom/android/browser/RotateManager;->mAniNumFrames:I

    .line 177
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 179
    const-string v0, "RotateManager"

    const-string v0, "setOrientation:orient == mActivity.getRequestedOrientation()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 180
    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    if-eq v5, v0, :cond_5

    :cond_2
    iget v0, p0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    if-ne v5, v0, :cond_3

    iget v0, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    if-eqz v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    if-ne v4, v0, :cond_4

    iget v0, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    if-eq v6, v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/browser/RotateManager;->mOldTargetOrientation:I

    if-ne v6, v0, :cond_6

    iget v0, p0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    if-ne v4, v0, :cond_6

    .line 187
    :cond_5
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:mActivity.setRequestedOrientation1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v0, v3

    .line 189
    goto/16 :goto_0

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->subWindowActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:subWindowActive:mActivity.setRequestedOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v0, v3

    .line 195
    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->geoPromptActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:geoPromptActive:mActivity.setRequestedOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v0, v3

    .line 201
    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->customViewActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    const-string v0, "RotateManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation:customViewActive:mActivity.setRequestedOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v0, v3

    .line 207
    goto/16 :goto_0

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    .line 211
    const-string v0, "RotateManager"

    const-string v0, "setOrientation:mFrameLayout == null:createOverlay"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, p2}, Lcom/android/browser/RotateManager;->createOverlay(Z)V

    .line 214
    :cond_a
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    .line 215
    const-string v0, "RotateManager"

    const-string v0, "setOrientation:mFrameLayout == null:mActivity.setRequestedOrientation"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/browser/RotateManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 219
    iput v3, p0, Lcom/android/browser/RotateManager;->mState:I

    move v0, v3

    .line 220
    goto/16 :goto_0

    .line 227
    :cond_b
    const-string v0, "RotateManager"

    const-string v0, "setOrientation:USE_2D is false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/RotateManager;->mState:I

    move v0, v4

    .line 231
    goto/16 :goto_0
.end method

.method protected abstract startRotate(J)V
.end method
