.class public Lcom/miui/camera/VideoGlobal;
.super Lcom/miui/camera/Global;
.source "VideoGlobal.java"


# static fields
.field private static sGlobal:Lcom/miui/camera/VideoGlobal;


# instance fields
.field public mAntibanding:Ljava/lang/String;

.field public mColoreffect:I

.field public mContinuousFocus:Z

.field public mControlBarHeight:I

.field public mFlashmode:Z

.field public mProfile:Landroid/media/CamcorderProfile;

.field public mScreenShutter:Z

.field public mVideoquality:I

.field public mWhitebalance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/miui/camera/Global;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "com.miui.camera.VideoGlobal"

    const-string v1, "initialize global variables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static getVideoDurationInMillis(I)I
    .locals 1
    .parameter "videoQualitySettingValue"

    .prologue
    .line 94
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 95
    sget v0, Lcom/miui/camera/Constants;->VIDEO_DURATION_MMS:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 98
    :goto_0
    return v0

    :cond_0
    const v0, 0x6ddd00

    goto :goto_0
.end method

.method public static getVideoQuality(I)I
    .locals 1
    .parameter "videoQualitySettingValue"

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/miui/camera/VideoGlobal;
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const-class v0, Lcom/miui/camera/VideoGlobal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/camera/VideoGlobal;->sGlobal:Lcom/miui/camera/VideoGlobal;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/miui/camera/VideoGlobal;

    invoke-direct {v1, p0}, Lcom/miui/camera/VideoGlobal;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/camera/VideoGlobal;->sGlobal:Lcom/miui/camera/VideoGlobal;

    .line 34
    :cond_0
    sget-object v1, Lcom/miui/camera/VideoGlobal;->sGlobal:Lcom/miui/camera/VideoGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final isHDCapable(I)Z
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, ret:Z
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getColoreffectIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "pos"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getColoreffectText(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColoreffectValue(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public initAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_video_quality"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/VideoGlobal;->mVideoquality:I

    .line 48
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_video_flash_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    .line 52
    const-string v0, "auto"

    iput-object v0, p0, Lcom/miui/camera/VideoGlobal;->mWhitebalance:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_video_color_effect"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    .line 59
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_video_screen_shutter"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    .line 63
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_video_continuous_focus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/VideoGlobal;->mContinuousFocus:Z

    .line 68
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_antibanding"

    const-string v2, "50hz"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/VideoGlobal;->mAntibanding:Ljava/lang/String;

    .line 70
    return-void
.end method
