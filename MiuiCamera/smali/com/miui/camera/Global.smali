.class public Lcom/miui/camera/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static ffc_canFocus:Z

.field public static ffc_canZoom:Z

.field public static ffc_supportedEffects:Ljava/lang/String;

.field public static mSamsungCamMode:Z

.field public static mSamsungContinuousAf:Z

.field public static mSamsungSpecialSettings:Z


# instance fields
.field public mActivePreviewArea:[I

.field public mCameraDevice:Landroid/hardware/Camera;

.field public mCameraId:I

.field protected final mContext:Landroid/app/Activity;

.field public mContrast:I

.field public final mDevice:Lcom/miui/camera/Constants$DEVICE;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDisplayRatio:F

.field public mGlobalPreferences:Landroid/content/SharedPreferences;

.field public mIsConSatShpChanged:Z

.field public mIsFFC:Z

.field public final mLayoutSettingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/camera/LayoutSetting;",
            ">;"
        }
    .end annotation
.end field

.field public mNumberOfCameras:I

.field public mParameters:Landroid/hardware/Camera$Parameters;

.field public mPausing:Z

.field public mPreferences:Landroid/content/SharedPreferences;

.field public mPreferencesChanged:Z

.field public mPreviewing:Z

.field public mSaturation:I

.field public mSharpness:I

.field public mSupportContinuousFocusMode:Z

.field public mSupportExposure:Z

.field public mSupportFlashMode:Z

.field public mSupportFocusMode:Z

.field public mSupportLensShade:Z

.field public mSupportSceneDetect:Z

.field public mSupportSkinToneEnhancement:Z

.field public mSupportZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/miui/camera/Global;->mSamsungCamMode:Z

    .line 113
    sput-boolean v0, Lcom/miui/camera/Global;->mSamsungContinuousAf:Z

    .line 114
    sput-boolean v0, Lcom/miui/camera/Global;->mSamsungSpecialSettings:Z

    .line 115
    sput-boolean v0, Lcom/miui/camera/Global;->ffc_canFocus:Z

    .line 116
    sput-boolean v0, Lcom/miui/camera/Global;->ffc_canZoom:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/camera/Global;->ffc_supportedEffects:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "com.miui.camera.Global"

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v3, p0, Lcom/miui/camera/Global;->mIsConSatShpChanged:Z

    .line 109
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    .line 120
    const-string v1, "com.miui.camera.Global"

    const-string v1, "initialize global variables"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    .line 124
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 125
    .local v0, device:Ljava/lang/String;
    const-string v1, "com.miui.camera.Global"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-boolean v1, Landroid/os/Build;->IS_DEFY:Z

    if-eqz v1, :cond_1

    .line 127
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    .line 159
    :goto_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 160
    iget-object v1, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 161
    iget-object v1, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/camera/Global;->mDisplayRatio:F

    .line 162
    invoke-direct {p0}, Lcom/miui/camera/Global;->initLayoutSettings()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    .line 164
    iget-object v1, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/camera/Global;->mGlobalPreferences:Landroid/content/SharedPreferences;

    .line 166
    iget-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_T959:Lcom/miui/camera/Constants$DEVICE;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v2, Lcom/miui/camera/Constants$DEVICE;->HTC_HTCLEO:Lcom/miui/camera/Constants$DEVICE;

    if-ne v1, v2, :cond_e

    .line 167
    :cond_0
    iput v3, p0, Lcom/miui/camera/Global;->mCameraId:I

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/camera/Global;->getLocalPrefFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    .line 173
    return-void

    .line 128
    :cond_1
    sget-boolean v1, Landroid/os/Build;->IS_HTC_HD2:Z

    if-eqz v1, :cond_2

    .line 129
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_HTCLEO:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto :goto_0

    .line 130
    :cond_2
    sget-boolean v1, Landroid/os/Build;->IS_I9000:Z

    if-eqz v1, :cond_3

    .line 131
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto :goto_0

    .line 132
    :cond_3
    sget-boolean v1, Landroid/os/Build;->IS_MILESTONE:Z

    if-eqz v1, :cond_4

    .line 133
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto :goto_0

    .line 134
    :cond_4
    sget-boolean v1, Landroid/os/Build;->IS_NEXUS_S:Z

    if-eqz v1, :cond_5

    .line 135
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->GOOGLE_CRESPO:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto :goto_0

    .line 136
    :cond_5
    sget-boolean v1, Landroid/os/Build;->IS_T959:Z

    if-eqz v1, :cond_6

    .line 137
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_T959:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto :goto_0

    .line 138
    :cond_6
    sget-boolean v1, Landroid/os/Build;->IS_GALAXYS2:Z

    if-eqz v1, :cond_7

    .line 139
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS2:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    .line 140
    sput-boolean v4, Lcom/miui/camera/Global;->mSamsungCamMode:Z

    .line 141
    sput-boolean v4, Lcom/miui/camera/Global;->mSamsungContinuousAf:Z

    .line 142
    sput-boolean v4, Lcom/miui/camera/Global;->mSamsungSpecialSettings:Z

    goto/16 :goto_0

    .line 143
    :cond_7
    const-string v1, "bravo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 144
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_BRAVO:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 145
    :cond_8
    const-string v1, "passion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_PASSION:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 147
    :cond_9
    const-string v1, "supersonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 148
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_SUPERSONIC:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 149
    :cond_a
    const-string v1, "ace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 150
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_ACE:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 151
    :cond_b
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 152
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_VIVO:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 153
    :cond_c
    const-string v1, "saga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 154
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_SAGA:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 156
    :cond_d
    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->COMMON:Lcom/miui/camera/Constants$DEVICE;

    iput-object v1, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    goto/16 :goto_0

    .line 169
    :cond_e
    iget-object v1, p0, Lcom/miui/camera/Global;->mGlobalPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_camera_id"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/camera/Global;->mCameraId:I

    goto/16 :goto_1
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 429
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 431
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 432
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 436
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 438
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 440
    return-void
.end method

.method public static getSizeRatioText(II)Ljava/lang/String;
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x3fc0

    const v7, 0x3faaaaab

    const/high16 v6, 0x3fa0

    const/high16 v5, 0x3f80

    const v4, 0x3c23d70a

    .line 383
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 386
    .local v0, ratio:F
    cmpl-float v2, v0, v7

    if-nez v2, :cond_0

    const-string v2, "4:3"

    .line 406
    :goto_0
    return-object v2

    .line 387
    :cond_0
    const v2, 0x3fe38e39

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "16:9"

    goto :goto_0

    .line 388
    :cond_1
    const v2, 0x3fd55555

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    const-string v2, "5:3"

    goto :goto_0

    .line 389
    :cond_2
    const v2, 0x3fcccccd

    cmpl-float v2, v0, v2

    if-nez v2, :cond_3

    const-string v2, "16:10"

    goto :goto_0

    .line 390
    :cond_3
    cmpl-float v2, v0, v8

    if-nez v2, :cond_4

    const-string v2, "3:2"

    goto :goto_0

    .line 391
    :cond_4
    cmpl-float v2, v0, v6

    if-nez v2, :cond_5

    const-string v2, "5:4"

    goto :goto_0

    .line 392
    :cond_5
    const v2, 0x3f9c71c7

    cmpl-float v2, v0, v2

    if-nez v2, :cond_6

    const-string v2, "11:9"

    goto :goto_0

    .line 393
    :cond_6
    cmpl-float v2, v0, v5

    if-nez v2, :cond_7

    const-string v2, "1:1"

    goto :goto_0

    .line 396
    :cond_7
    const v1, 0x3c23d70a

    .line 397
    .local v1, t:F
    sub-float v2, v0, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_8

    const-string v2, "4:3"

    goto :goto_0

    .line 398
    :cond_8
    const v2, 0x3fe38e39

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_9

    const-string v2, "16:9"

    goto :goto_0

    .line 399
    :cond_9
    const v2, 0x3fd55555

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_a

    const-string v2, "5:3"

    goto :goto_0

    .line 400
    :cond_a
    const v2, 0x3fcccccd

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    const-string v2, "16:10"

    goto :goto_0

    .line 401
    :cond_b
    sub-float v2, v0, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_c

    const-string v2, "3:2"

    goto/16 :goto_0

    .line 402
    :cond_c
    sub-float v2, v0, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_d

    const-string v2, "5:4"

    goto/16 :goto_0

    .line 403
    :cond_d
    sub-float v2, v0, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_e

    const-string v2, "1:1"

    goto/16 :goto_0

    .line 406
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private initLayoutSettings()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/camera/LayoutSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Lcom/miui/camera/LayoutConfigXMLHandler;

    iget-object v8, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    iget-object v9, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v0, v8, v9}, Lcom/miui/camera/LayoutConfigXMLHandler;-><init>(Landroid/app/Activity;Landroid/util/DisplayMetrics;)V

    .line 413
    .local v0, configHandler:Lcom/miui/camera/LayoutConfigXMLHandler;
    :try_start_0
    iget-object v8, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f06

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 414
    .local v6, xml:Ljava/io/InputStream;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 415
    .local v3, inputSource:Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 416
    .local v2, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 417
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 418
    .local v7, xmlReader:Lorg/xml/sax/XMLReader;
    invoke-interface {v7, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 419
    invoke-interface {v7, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    invoke-virtual {v0}, Lcom/miui/camera/LayoutConfigXMLHandler;->getLayoutSettingMap()Ljava/util/HashMap;

    move-result-object v5

    .line 425
    .end local v2           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #inputSource:Lorg/xml/sax/InputSource;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v6           #xml:Ljava/io/InputStream;
    .end local v7           #xmlReader:Lorg/xml/sax/XMLReader;
    .local v5, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/camera/LayoutSetting;>;"
    :goto_0
    return-object v5

    .line 420
    .end local v5           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/camera/LayoutSetting;>;"
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 421
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "com.miui.camera.Global"

    const-string v9, "error"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-virtual {v0}, Lcom/miui/camera/LayoutConfigXMLHandler;->getLayoutSettingMap()Ljava/util/HashMap;

    move-result-object v5

    .line 424
    .restart local v5       #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/camera/LayoutSetting;>;"
    goto :goto_0

    .line 423
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/camera/LayoutSetting;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Lcom/miui/camera/LayoutConfigXMLHandler;->getLayoutSettingMap()Ljava/util/HashMap;

    move-result-object v5

    .restart local v5       #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/camera/LayoutSetting;>;"
    throw v8
.end method

.method public static isHtcCamera(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 327
    const-string v0, "taking-picture-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 244
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static setContinuousAf(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "params"
    .parameter "on"

    .prologue
    .line 320
    invoke-static {p0}, Lcom/miui/camera/Global;->isHtcCamera(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "enable-caf"

    if-eqz p1, :cond_1

    const-string v1, "on"

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void

    .line 321
    :cond_1
    const-string v1, "off"

    goto :goto_0
.end method

.method public static setVideoMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .parameter "params"
    .parameter "on"

    .prologue
    const-string v5, "nv-mode-hint"

    const-string v4, "continuous-video"

    const-string v1, "cam-mode"

    const-string v3, "1"

    const-string v2, "0"

    .line 288
    const-string v0, "cam-mode"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 289
    const-string v0, "cam-mode"

    if-eqz p1, :cond_3

    const-string v0, "1"

    move-object v0, v3

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    const-string v0, "focus-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 298
    const-string v0, "focus-mode"

    const-string v1, "continuous-video"

    invoke-virtual {p0, v0, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    sget-boolean v0, Lcom/miui/camera/Global;->mSamsungSpecialSettings:Z

    if-eqz v0, :cond_2

    .line 302
    const-string v0, "video_recording_gamma"

    if-eqz p1, :cond_8

    const-string v1, "on"

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "slow_ae"

    if-eqz p1, :cond_9

    const-string v1, "on"

    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "iso"

    if-eqz p1, :cond_a

    const-string v1, "movie"

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "metering"

    if-eqz p1, :cond_b

    const-string v1, "matrix"

    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p1, :cond_2

    .line 308
    const-string v0, "antibanding"

    const-string v1, "50hz"

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_2
    return-void

    .line 289
    :cond_3
    const-string v0, "0"

    move-object v0, v2

    goto :goto_0

    .line 290
    :cond_4
    const-string v0, "nv-mode-hint"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 291
    const-string v0, "nv-mode-hint"

    if-eqz p1, :cond_5

    const-string v0, "video"

    :goto_6
    invoke-virtual {p0, v5, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "still"

    goto :goto_6

    .line 292
    :cond_6
    sget-boolean v0, Lcom/miui/camera/Global;->mSamsungCamMode:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "cam_mode"

    if-eqz p1, :cond_7

    const-string v1, "1"

    move-object v1, v3

    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "0"

    move-object v1, v2

    goto :goto_7

    .line 302
    :cond_8
    const-string v1, "off"

    goto :goto_2

    .line 303
    :cond_9
    const-string v1, "off"

    goto :goto_3

    .line 304
    :cond_a
    const-string v1, "auto"

    goto :goto_4

    .line 305
    :cond_b
    const-string v1, "center"

    goto :goto_5
.end method


# virtual methods
.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.miui.camera.Global"

    .line 212
    const-string v0, "com.miui.camera.Global"

    const-string v0, "closeCamera"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "com.miui.camera.Global"

    const-string v0, "already stopped."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v0, "com.miui.camera.Global"

    const-string v0, "lock camera"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 221
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 223
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/camera/CameraHolder;->release()V

    .line 224
    iput-object v1, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/Global;->mPreviewing:Z

    goto :goto_0
.end method

.method public ensureCameraDevice()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 176
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 177
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v0

    iget v1, p0, Lcom/miui/camera/Global;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    .line 179
    iget-object v0, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_T959:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->HTC_HTCLEO:Lcom/miui/camera/Constants$DEVICE;

    if-ne v0, v1, :cond_2

    .line 180
    :cond_0
    iput v3, p0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    .line 184
    :goto_0
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/miui/camera/Global;->mCameraId:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v3, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mIsFFC:Z

    .line 186
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/camera/Global;->mCameraId:I

    iget-object v2, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0, v1, v2}, Lcom/miui/camera/CameraHolder;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 187
    iget-object v0, p0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 190
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportFlashMode:Z

    .line 191
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportFocusMode:Z

    .line 192
    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportContinuousFocusMode:Z

    .line 194
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    :goto_4
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportExposure:Z

    .line 196
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportZoom:Z

    .line 197
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "scene-detect"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "scene-detect-values"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportSceneDetect:Z

    .line 199
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "lensshade"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "lensshade-values"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_6
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportLensShade:Z

    .line 201
    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinToneEnhancement"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinToneEnhancement-values"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/miui/camera/Global;->mSupportSkinToneEnhancement:Z

    .line 205
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_contrast"

    iget-object v2, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getContrast()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/Global;->mContrast:I

    .line 206
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_saturation"

    iget-object v2, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSaturation()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/Global;->mSaturation:I

    .line 207
    iget-object v0, p0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_sharpness"

    iget-object v2, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSharpness()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/camera/Global;->mSharpness:I

    .line 209
    :cond_1
    return-void

    .line 182
    :cond_2
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/camera/CameraHolder;->getNumberOfCamera()I

    move-result v0

    iput v0, p0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    goto/16 :goto_0

    :cond_3
    move v0, v4

    .line 184
    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 190
    goto/16 :goto_2

    :cond_5
    move v0, v3

    .line 191
    goto/16 :goto_3

    :cond_6
    move v0, v3

    .line 194
    goto/16 :goto_4

    :cond_7
    move v0, v4

    .line 197
    goto :goto_5

    :cond_8
    move v0, v4

    .line 199
    goto :goto_6

    :cond_9
    move v0, v4

    .line 201
    goto :goto_7
.end method

.method public getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInt(II)I
    .locals 1
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalPrefFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/camera/Global;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadablePictureSizeText(II)Ljava/lang/String;
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const v4, 0xf4240

    const v3, 0xc350

    .line 363
    mul-int v0, p1, p2

    .line 364
    .local v0, pixelCount:I
    const-string v1, ""

    .line 365
    .local v1, ret:Ljava/lang/String;
    add-int v2, v0, v3

    div-int/2addr v2, v4

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v3, v0

    const v4, 0x186a0

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    :goto_0
    return-object v1

    .line 369
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7a120

    add-int/2addr v3, v0

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/camera/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getSupportedValues(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 240
    :goto_0
    return-object v3

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 235
    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 240
    goto :goto_0
.end method

.method public isPointInActiveArea(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    aget v0, v0, v3

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    aget v0, v0, v4

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1

    :cond_0
    move v0, v3

    .line 344
    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method
