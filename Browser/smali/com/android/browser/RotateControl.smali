.class Lcom/android/browser/RotateControl;
.super Ljava/lang/Object;
.source "RotateControl.java"

# interfaces
.implements Lcom/android/browser/RotateManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/RotateControl$Callback;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mActivityLayoutInited:Z

.field private mCallback:Lcom/android/browser/RotateControl$Callback;

.field protected mContentView:Landroid/view/View;

.field private mDead:Z

.field private mHardKeyboardOpened:Z

.field private mHasFocus:Z

.field private mIsPluginFullScreen:Z

.field private mIsVisible:Z

.field private mOrientationEventListener:Landroid/view/WindowOrientationListener;

.field private mRotateManager:Lcom/android/browser/RotateManager;

.field protected mScrPortraitH:I

.field protected mScrPortraitW:I

.field private mSensorOrientation:I

.field private mSoftKeyboardOpened:Z

.field protected mStatusBarHeight:I


# direct methods
.method static synthetic access$000(Lcom/android/browser/RotateControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    return v0
.end method


# virtual methods
.method isPluginFullScreen()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    iput-boolean v2, p0, Lcom/android/browser/RotateControl;->mIsPluginFullScreen:Z

    .line 171
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/browser/BrowserActivity;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 173
    .local v0, webview:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    move v1, v2

    .line 180
    .end local v0           #webview:Landroid/webkit/WebView;
    :goto_0
    return v1

    .line 175
    .restart local v0       #webview:Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPluginFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iput-boolean v3, p0, Lcom/android/browser/RotateControl;->mIsPluginFullScreen:Z

    move v1, v3

    .line 177
    goto :goto_0

    .end local v0           #webview:Landroid/webkit/WebView;
    :cond_1
    move v1, v2

    .line 180
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mDead:Z

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/RotateControl;->mDead:Z

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mOrientationEventListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener;->disable()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    iput-object v1, p0, Lcom/android/browser/RotateControl;->mOrientationEventListener:Landroid/view/WindowOrientationListener;

    .line 372
    iput-object v1, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    .line 373
    iput-object v1, p0, Lcom/android/browser/RotateControl;->mContentView:Landroid/view/View;

    .line 374
    iput-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    .line 376
    :cond_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 110
    iget-boolean v3, p0, Lcom/android/browser/RotateControl;->mDead:Z

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-boolean v3, p0, Lcom/android/browser/RotateControl;->mActivityLayoutInited:Z

    if-nez v3, :cond_0

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/browser/RotateControl;->mActivityLayoutInited:Z

    .line 116
    iget-object v3, p0, Lcom/android/browser/RotateControl;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 117
    .local v2, viewW:I
    iget-object v3, p0, Lcom/android/browser/RotateControl;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 119
    .local v1, viewH:I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RotateControl.onLayout => viewW = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", viewH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v4, :cond_2

    .line 125
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    .line 126
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    .line 133
    :goto_1
    const/16 v3, 0x26

    iput v3, p0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    .line 135
    iget-object v3, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    iget v4, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    iget v5, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    iget v6, p0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/browser/RotateManager;->initLayout(III)V

    .line 136
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStatusBarHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/browser/RotateControl;->mStatusBarHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/browser/RotateControl;->mScrPortraitW:I

    .line 129
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/browser/RotateControl;->mScrPortraitH:I

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "================> onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    iput-boolean v3, p0, Lcom/android/browser/RotateControl;->mIsVisible:Z

    .line 284
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mOrientationEventListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener;->disable()V

    .line 285
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-virtual {v0}, Lcom/android/browser/RotateManager;->onPause()V

    .line 286
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getLandscapeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/browser/RotateControl;->isPluginFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "================> onResume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    iget-object v1, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-virtual {v1}, Lcom/android/browser/RotateManager;->getRequestedOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    iput v1, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    .line 301
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getLandscapeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 311
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/browser/RotateControl;->mIsVisible:Z

    .line 312
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mOrientationEventListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener;->enable()V

    .line 313
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-virtual {v0}, Lcom/android/browser/RotateManager;->onResume()V

    .line 314
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/browser/RotateControl;->isPluginFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onSizeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mDead:Z

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->isInputMethodActive()Z

    move-result v0

    .line 225
    .local v0, imeActive:Z
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mSoftKeyboardOpened:Z

    if-eq v0, v1, :cond_0

    .line 226
    iput-boolean v0, p0, Lcom/android/browser/RotateControl;->mSoftKeyboardOpened:Z

    .line 228
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mSoftKeyboardOpened:Z

    if-nez v1, :cond_0

    .line 229
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getLandscapeOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 231
    iput v2, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-virtual {v2}, Lcom/android/browser/RotateManager;->getCurrentOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 234
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasFocus"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 184
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mDead:Z

    if-eqz v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/browser/BrowserActivity;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/browser/BrowserActivity;

    iget-object v1, v1, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v1}, Lcom/android/browser/ActiveTabsPage;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/RotateControl;->onSizeChanged()V

    .line 191
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mHasFocus:Z

    if-eq p1, v1, :cond_0

    .line 192
    iput-boolean p1, p0, Lcom/android/browser/RotateControl;->mHasFocus:Z

    .line 193
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getLandscapeOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 195
    iput v3, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    goto :goto_0

    .line 197
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mHasFocus:Z

    if-eqz v1, :cond_6

    .line 198
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-virtual {v1}, Lcom/android/browser/RotateManager;->getCurrentOrientation()I

    move-result v0

    .line 199
    .local v0, realRotation:I
    iget-boolean v1, p0, Lcom/android/browser/RotateControl;->mIsPluginFullScreen:Z

    if-eqz v1, :cond_4

    .line 200
    iget v0, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    .line 201
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    iget v2, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    iput v2, v1, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    .line 202
    iput-boolean v3, p0, Lcom/android/browser/RotateControl;->mIsPluginFullScreen:Z

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 211
    .end local v0           #realRotation:I
    :cond_5
    :goto_1
    iput v4, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    goto :goto_0

    .line 207
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/RotateControl;->isPluginFullScreen()Z

    move-result v1

    if-nez v1, :cond_5

    .line 208
    iget-object v1, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public orientationChangeCompleted(I)V
    .locals 2
    .parameter "newViewOrient"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mDead:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/android/browser/RotateControl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/RotateControl$1;-><init>(Lcom/android/browser/RotateControl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public resetOrientation()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    iget-object v1, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-virtual {v1}, Lcom/android/browser/RotateManager;->getCurrentOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    .line 323
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    iget v0, v0, Lcom/android/browser/RotateManager;->mTargetOrientation:I

    return v0
.end method

.method rotateTo(I)V
    .locals 6
    .parameter "orient"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 241
    const-string v0, "RotateControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateTo: orient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mDead:Z

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 251
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getLandscapeOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 255
    :cond_2
    if-eq p1, v3, :cond_0

    .line 258
    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mHardKeyboardOpened:Z

    if-eqz v0, :cond_3

    if-eq p1, v5, :cond_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    iget-boolean v0, v0, Lcom/android/browser/ActiveTabsPage;->mEnterActiveTabsPage:Z

    if-eqz v0, :cond_0

    .line 267
    :cond_4
    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mHasFocus:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/browser/RotateControl;->mSoftKeyboardOpened:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/browser/BrowserActivity;

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mCallback:Lcom/android/browser/RotateControl$Callback;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/browser/RotateControl;->mCallback:Lcom/android/browser/RotateControl$Callback;

    iget-object v1, p0, Lcom/android/browser/RotateControl;->mRotateManager:Lcom/android/browser/RotateManager;

    invoke-interface {v0, p1, v1}, Lcom/android/browser/RotateControl$Callback;->setOrientation(ILcom/android/browser/RotateManager;)V

    goto :goto_0
.end method

.method public rotateToDestination()V
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/browser/RotateControl;->mSensorOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/browser/RotateControl;->rotateTo(I)V

    .line 279
    return-void
.end method
