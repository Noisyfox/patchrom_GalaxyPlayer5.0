.class public Lcom/miui/camera/CameraGlobal;
.super Lcom/miui/camera/Global;
.source "CameraGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/CameraGlobal$1;,
        Lcom/miui/camera/CameraGlobal$SizeComparator;
    }
.end annotation


# static fields
.field private static sGlobal:Lcom/miui/camera/CameraGlobal;


# instance fields
.field public mAntiShake:Z

.field public mAntiShakeTiming:Z

.field public mAntiShakeTimingStartTime:J

.field public mAntibanding:Ljava/lang/String;

.field public mAutofocus:Z

.field public mBurst:Z

.field public mColoreffect:I

.field public mControlBarHeight:I

.field public mDelaySnapTiming:Z

.field public mDelaysnap:Z

.field public mDelaysnapIndex:I

.field public mDelaysnapValue:I

.field public mDeviceStable:Z

.field public mFlashViewSpreaded:Z

.field public mFlashmode:I

.field public mFocusRectangleLength:I

.field public mFocusmode:Ljava/lang/String;

.field public mGpsHasSignal:Z

.field public mIsFullScreen:Z

.field public mKeepBursting:Z

.field public mLayoutSetting:Lcom/miui/camera/LayoutSetting;

.field public mPicturesizeHeight:I

.field public mPicturesizeWidth:I

.field public mPlayback:Z

.field public mPlaybacking:Z

.field public mPreviewsizeHeight:I

.field public mPreviewsizeRatio:Ljava/lang/String;

.field public mPreviewsizeWidth:I

.field public mRecordlocation:Z

.field public mReferenceline:I

.field public mRingerModeChanged:Z

.field public mScenemode:Ljava/lang/String;

.field public mScreenShutter:Z

.field public final mSizeComparator:Lcom/miui/camera/CameraGlobal$SizeComparator;

.field public mSound:Z

.field public mSoundIdFail:I

.field public mSoundIdInProgress:I

.field public mSoundIdInProgress1:I

.field public mSoundIdInProgress2:I

.field public mSoundIdSuccess:I

.field public mSoundPool:Landroid/media/SoundPool;

.field public final mSupportTouchFocus:Z

.field public mSystemVolumeIndex:I

.field public mWhitebalance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/miui/camera/Global;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mRingerModeChanged:Z

    .line 71
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    .line 79
    iput v2, p0, Lcom/miui/camera/CameraGlobal;->mDelaysnapValue:I

    .line 101
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    .line 102
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    .line 103
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mGpsHasSignal:Z

    .line 104
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mFlashViewSpreaded:Z

    .line 105
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTiming:Z

    .line 119
    const-string v0, "com.miui.camera.CameraGlobal"

    const-string v1, "initialize global variables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/miui/camera/CameraGlobal$1;->$SwitchMap$com$miui$camera$Constants$DEVICE:[I

    iget-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    invoke-virtual {v1}, Lcom/miui/camera/Constants$DEVICE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mSupportTouchFocus:Z

    .line 132
    :goto_0
    new-instance v0, Lcom/miui/camera/CameraGlobal$SizeComparator;

    invoke-direct {v0, p0}, Lcom/miui/camera/CameraGlobal$SizeComparator;-><init>(Lcom/miui/camera/CameraGlobal;)V

    iput-object v0, p0, Lcom/miui/camera/CameraGlobal;->mSizeComparator:Lcom/miui/camera/CameraGlobal$SizeComparator;

    .line 133
    return-void

    .line 125
    :pswitch_0
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mSupportTouchFocus:Z

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initCameraPictureSize()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const-string v11, "pref_key_camera_picture_size_width"

    const-string v10, "pref_key_camera_picture_size_height"

    .line 257
    iget-object v7, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "pref_key_camera_picture_size_width"

    invoke-interface {v7, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 258
    .local v6, width:I
    iget-object v7, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "pref_key_camera_picture_size_height"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, height:I
    invoke-virtual {p0, v6, v1}, Lcom/miui/camera/CameraGlobal;->supportThisPictureSize(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 261
    iput v6, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    .line 262
    iput v1, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    .line 263
    iget v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget v8, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/miui/camera/CameraGlobal;->isCapableForFullScreen(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    .line 296
    :goto_0
    iget v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget v8, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/miui/camera/CameraGlobal;->determinePreviewSizeForPictureSize(II)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 297
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPreviewsizeWidth:I

    .line 298
    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPreviewsizeHeight:I

    .line 302
    iget v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget v8, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-static {v7, v8}, Lcom/miui/camera/Global;->getSizeRatioText(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/camera/CameraGlobal;->mPreviewsizeRatio:Ljava/lang/String;

    .line 303
    iget-object v7, p0, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/miui/camera/CameraGlobal;->mPreviewsizeRatio:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/LayoutSetting;

    iput-object v7, p0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    .line 304
    iget-object v7, p0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    if-nez v7, :cond_0

    .line 305
    iget-object v7, p0, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    const-string v8, "default"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/LayoutSetting;

    iput-object v7, p0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    .line 307
    :cond_0
    return-void

    .line 265
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_1
    iget-object v7, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 266
    .local v5, supportedPictureSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v7, p0, Lcom/miui/camera/CameraGlobal;->mSizeComparator:Lcom/miui/camera/CameraGlobal$SizeComparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 269
    sget-boolean v7, Landroid/os/Build;->IS_MIONE:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v8, Lcom/miui/camera/Constants$DEVICE;->HTC_VIVO:Lcom/miui/camera/Constants$DEVICE;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v8, Lcom/miui/camera/Constants$DEVICE;->HTC_SAGA:Lcom/miui/camera/Constants$DEVICE;

    if-ne v7, v8, :cond_4

    .line 270
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    .line 271
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    .line 272
    iget v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget v8, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-virtual {p0, v7, v8}, Lcom/miui/camera/CameraGlobal;->isCapableForFullScreen(II)Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    .line 289
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "pref_key_camera_picture_size_width"

    iget v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    invoke-interface {v0, v11, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string v7, "pref_key_camera_picture_size_height"

    iget v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 274
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iput-boolean v9, p0, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 276
    .local v3, s:Landroid/hardware/Camera$Size;
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v7, v8}, Lcom/miui/camera/CameraGlobal;->isCapableForFullScreen(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 277
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    .line 278
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    .line 279
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    .line 283
    .end local v3           #s:Landroid/hardware/Camera$Size;
    :cond_6
    iget-boolean v7, p0, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    if-nez v7, :cond_3

    .line 284
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    .line 285
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    iput v7, p0, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    goto :goto_1
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    const-class v0, Lcom/miui/camera/CameraGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/camera/CameraGlobal;->sGlobal:Lcom/miui/camera/CameraGlobal;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/miui/camera/CameraGlobal;

    invoke-direct {v1, p0}, Lcom/miui/camera/CameraGlobal;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/camera/CameraGlobal;->sGlobal:Lcom/miui/camera/CameraGlobal;

    .line 114
    :cond_0
    sget-object v1, Lcom/miui/camera/CameraGlobal;->sGlobal:Lcom/miui/camera/CameraGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public determinePreviewSizeForPictureSize(II)Landroid/hardware/Camera$Size;
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 204
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v1, v7, v8

    .line 205
    .local v1, ratio:F
    iget-object v7, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 206
    .local v4, supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 207
    .local v5, tolerance:F
    const v6, 0x3dcccccd

    .line 208
    .local v6, toleranceStep:F
    const/4 v2, 0x0

    .line 209
    .local v2, ret:Landroid/hardware/Camera$Size;
    :goto_0
    if-nez v2, :cond_3

    .line 210
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 211
    .local v3, s:Landroid/hardware/Camera$Size;
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    iget-object v8, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v7, v8, :cond_0

    .line 212
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v5

    if-gtz v7, :cond_0

    .line 213
    if-eqz v2, :cond_1

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-ge v7, v8, :cond_0

    .line 214
    :cond_1
    move-object v2, v3

    goto :goto_1

    .line 218
    .end local v3           #s:Landroid/hardware/Camera$Size;
    :cond_2
    add-float/2addr v5, v6

    goto :goto_0

    .line 222
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    if-nez v2, :cond_4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ret:Landroid/hardware/Camera$Size;
    check-cast v2, Landroid/hardware/Camera$Size;

    .line 224
    .restart local v2       #ret:Landroid/hardware/Camera$Size;
    :cond_4
    return-object v2
.end method

.method public initAll()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/miui/camera/CameraGlobal;->initPreferenceSettings()V

    .line 139
    invoke-virtual {p0}, Lcom/miui/camera/CameraGlobal;->initGlobalSettings()V

    goto :goto_0
.end method

.method public initGlobalSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_flash_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    .line 365
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    .line 368
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    .line 369
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    .line 372
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_color_effect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    .line 375
    iput-boolean v2, p0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    .line 378
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_screen_shutter"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    .line 381
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    .line 382
    return-void
.end method

.method public initPreferenceSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string v4, "pref_key_camera_auto_focus"

    const-string v3, "auto"

    .line 311
    invoke-direct {p0}, Lcom/miui/camera/CameraGlobal;->initCameraPictureSize()V

    .line 314
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_record_location"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mRecordlocation:Z

    .line 322
    iget-object v0, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_BRAVO:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS:Lcom/miui/camera/Constants$DEVICE;

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_auto_focus"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mAutofocus:Z

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_playback"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mPlayback:Z

    .line 336
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_reference_line"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/camera/CameraGlobal;->mReferenceline:I

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_scene_mode"

    const-string v2, "auto"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/CameraGlobal;->mScenemode:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_white_balance"

    const-string v2, "auto"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/CameraGlobal;->mWhitebalance:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_focus_mode"

    const-string v2, "auto"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_antibanding"

    const-string v2, "50hz"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/CameraGlobal;->mAntibanding:Ljava/lang/String;

    .line 358
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_auto_focus"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/CameraGlobal;->mAutofocus:Z

    goto :goto_0

    .line 340
    :cond_2
    iput v2, p0, Lcom/miui/camera/CameraGlobal;->mReferenceline:I

    goto :goto_1
.end method

.method public initSoundPool()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 385
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/CameraBeepSuccess.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundIdSuccess:I

    .line 388
    iget-object v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/CameraBeepFail.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundIdFail:I

    .line 389
    iget-object v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/CameraBeepInProgress.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress:I

    .line 390
    iget-object v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/CameraBeepInProgress1.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress1:I

    .line 391
    iget-object v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/CameraBeepInProgress2.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCapableForFullScreen(II)Z
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 193
    :goto_0
    return v0

    .line 189
    :cond_1
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/camera/Global;->mDisplayRatio:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 193
    goto :goto_0
.end method

.method public playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f00

    .line 402
    iget-object v0, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/camera/CameraGlobal;->initSoundPool()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v6, 0x3f80

    move v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 407
    :cond_1
    return-void
.end method

.method public releaseSoundPool()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/CameraGlobal;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 399
    :cond_0
    return-void
.end method

.method public supportThisPictureSize(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 153
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, v4

    .line 161
    :goto_0
    return v3

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_2

    move v3, v4

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 158
    .local v1, s:Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, p1, :cond_3

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v3, p2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #s:Landroid/hardware/Camera$Size;
    :cond_4
    move v3, v4

    .line 161
    goto :goto_0
.end method

.method public upgradePreferences()V
    .locals 5

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    .local v1, version:I
    :goto_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 150
    :cond_0
    return-void

    .line 146
    .end local v1           #version:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 147
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #version:I
    goto :goto_0
.end method
