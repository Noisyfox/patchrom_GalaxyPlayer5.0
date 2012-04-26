.class public Lcom/miui/camera/Camera;
.super Lcom/miui/camera/BaseCamera;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/camera/Switcher$OnSwitchListener;
.implements Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;
.implements Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/Camera$ImageCapture;,
        Lcom/miui/camera/Camera$ZoomListener;,
        Lcom/miui/camera/Camera$ErrorCallback;,
        Lcom/miui/camera/Camera$AutoFocusCallback;,
        Lcom/miui/camera/Camera$JpegPictureCallback;,
        Lcom/miui/camera/Camera$PostViewPictureCallback;,
        Lcom/miui/camera/Camera$RawPictureCallback;,
        Lcom/miui/camera/Camera$ShutterCallback;,
        Lcom/miui/camera/Camera$LocationListener;,
        Lcom/miui/camera/Camera$CameraGestureListener;,
        Lcom/miui/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final BURST_COUNT_THRESHOLD:I = 0xa

.field private static final CROP_MSG:I = 0x1

.field private static final EXTRA_KEY_CROP:Ljava/lang/String; = "crop"

.field private static final EXTRA_KEY_FLASH_MODE:Ljava/lang/String; = "flash_mode"

.field private static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field private static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field private static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field private static final Logging:Z = true

.field private static final PREFERENCE_CHANGE_MSG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.miui.camera.Camera"

.field private static final mAccelerometerGapTolerance:D = 0.8

.field public static mMediaServerDied:Z = false

.field private static sExifDateTakenFormatter:Ljava/text/SimpleDateFormat; = null

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"

.field private static final sTempImageFilename:Ljava/lang/String; = "image-temp.jpg"


# instance fields
.field private final PICTURE_BYTES:J

.field private mAX:F

.field private mAY:F

.field private mAZ:F

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerGap:D

.field private mAccelerometerTag:I

.field private mAntiShakeShutterAnimation:Landroid/view/animation/Animation;

.field private final mAutoFocusCallback:Lcom/miui/camera/Camera$AutoFocusCallback;

.field private mAutoFocusCancelled:Z

.field public mAutoFocusTime:J

.field private mBurstCount:I

.field private mCameraSwitchView:Landroid/widget/ImageView;

.field private mCaptureStartTime:J

.field private mColoreffectView:Landroid/widget/ScreenView;

.field private mConSatShpView:Landroid/view/ViewGroup;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlBar:Landroid/widget/FrameLayout;

.field private mControlBarScaleAnimationIn:Landroid/view/animation/Animation;

.field private mControlBarScaleAnimationOut:Landroid/view/animation/Animation;

.field private mCropValue:Ljava/lang/String;

.field private mDelaySnapAlphaAnimation:Landroid/view/animation/Animation;

.field private mDelaySnapScaleAnimation:Landroid/view/animation/Animation;

.field private mDelaySnapStartTime:J

.field private mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

.field private mDidRegister:Z

.field private mDoubleZoomValue:I

.field private final mErrorCallback:Lcom/miui/camera/Camera$ErrorCallback;

.field private mExposureValue:I

.field private mExposureZoomView:Landroid/view/ViewGroup;

.field private mFirstTimeInitialized:Z

.field private mFlashView:Landroid/widget/TextView;

.field private mFocusCallbackTime:J

.field private mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

.field private mFocusStartTime:J

.field private mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

.field private mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

.field private mFrameView:Landroid/view/ViewGroup;

.field private mG:Lcom/miui/camera/CameraGlobal;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field mLastAction:I

.field private mLastContentUri:Landroid/net/Uri;

.field private mLastImageFileName:Ljava/lang/String;

.field private mLastOrientation:I

.field private mLastPictureButton:Landroid/widget/ImageView;

.field private final mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field mLog:[I

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPicturesRemaining:I

.field private mPlaybackBar:Landroid/view/View;

.field private mPlaybackBarTranslateAnimationIn:Landroid/view/animation/Animation;

.field private mPlaybackBarTranslateAnimationOut:Landroid/view/animation/Animation;

.field private final mPostViewPictureCallback:Lcom/miui/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewImage:Landroid/widget/ImageView;

.field private final mRawPictureCallback:Lcom/miui/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReferencelineShowingView:Lcom/miui/camera/ui/ReferenceLine;

.field private mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

.field private mSaveUri:Landroid/net/Uri;

.field private mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

.field private mSelectedColoreffectItem:Landroid/widget/TextView;

.field private mSensorEventTimestamp:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingPanel:Landroid/view/ViewGroup;

.field private mShutterButton:Lcom/miui/camera/ui/ShutterButton;

.field private final mShutterCallback:Lcom/miui/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSlideInAnimation:Landroid/view/animation/Animation;

.field private mSlideOutAnimation:Landroid/view/animation/Animation;

.field private mSmoothZoomSupported:Z

.field private mSnapAnimView:Landroid/view/ViewGroup;

.field private mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

.field private mStartPreviewFail:Z

.field private mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Landroid/view/SurfaceView;

.field private mTargetZoomValue:I

.field private mThumbController:Lcom/miui/camera/ThumbnailController;

.field private mTopMiddleScreenHint:Landroid/widget/TextView;

.field private mTopScreenView:Landroid/view/ViewGroup;

.field private mTouchFocusPointX:I

.field private mTouchFocusPointY:I

.field private mUpdateSet:I

.field private final mZoomListener:Lcom/miui/camera/Camera$ZoomListener;

.field private mZoomMax:I

.field private mZoomRatios:[F

.field private mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/camera/Camera;->sExifDateTakenFormatter:Ljava/text/SimpleDateFormat;

    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/camera/Camera;->mMediaServerDied:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 97
    invoke-direct {p0}, Lcom/miui/camera/BaseCamera;-><init>()V

    .line 111
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/camera/Camera;->mLog:[I

    .line 112
    iput v5, p0, Lcom/miui/camera/Camera;->mLastAction:I

    .line 122
    iput v5, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    .line 124
    sget-object v0, Lcom/miui/camera/Constants$ZOOM_STATE;->STOPPED:Lcom/miui/camera/Constants$ZOOM_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

    .line 125
    iput-boolean v5, p0, Lcom/miui/camera/Camera;->mSmoothZoomSupported:Z

    .line 139
    iput-object v4, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    .line 141
    iput-object v4, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    .line 145
    iput v5, p0, Lcom/miui/camera/Camera;->mLastOrientation:I

    .line 151
    sget-object v0, Lcom/miui/camera/Constants$CAMERA_STATE;->IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    .line 155
    iput-object v4, p0, Lcom/miui/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 160
    iput-object v4, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/camera/Camera;->mSensorEventTimestamp:J

    .line 166
    iput v2, p0, Lcom/miui/camera/Camera;->mAX:F

    .line 167
    iput v2, p0, Lcom/miui/camera/Camera;->mAY:F

    .line 168
    iput v2, p0, Lcom/miui/camera/Camera;->mAZ:F

    .line 171
    iput v5, p0, Lcom/miui/camera/Camera;->mAccelerometerTag:I

    .line 177
    iput v3, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    .line 178
    iput v3, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    .line 179
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 180
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 181
    iput-boolean v5, p0, Lcom/miui/camera/Camera;->mAutoFocusCancelled:Z

    .line 183
    new-instance v0, Lcom/miui/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$ShutterCallback;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mShutterCallback:Lcom/miui/camera/Camera$ShutterCallback;

    .line 184
    new-instance v0, Lcom/miui/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$PostViewPictureCallback;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mPostViewPictureCallback:Lcom/miui/camera/Camera$PostViewPictureCallback;

    .line 185
    new-instance v0, Lcom/miui/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$RawPictureCallback;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mRawPictureCallback:Lcom/miui/camera/Camera$RawPictureCallback;

    .line 186
    new-instance v0, Lcom/miui/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$AutoFocusCallback;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mAutoFocusCallback:Lcom/miui/camera/Camera$AutoFocusCallback;

    .line 187
    new-instance v0, Lcom/miui/camera/Camera$ZoomListener;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$ZoomListener;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mZoomListener:Lcom/miui/camera/Camera$ZoomListener;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/camera/Camera$LocationListener;

    new-instance v1, Lcom/miui/camera/Camera$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/miui/camera/Camera$LocationListener;-><init>(Lcom/miui/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/camera/Camera$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/miui/camera/Camera$LocationListener;-><init>(Lcom/miui/camera/Camera;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    .line 192
    new-instance v0, Lcom/miui/camera/Camera$ErrorCallback;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$ErrorCallback;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mErrorCallback:Lcom/miui/camera/Camera$ErrorCallback;

    .line 199
    iput-boolean v5, p0, Lcom/miui/camera/Camera;->mStartPreviewFail:Z

    .line 201
    iput-boolean v5, p0, Lcom/miui/camera/Camera;->mDidRegister:Z

    .line 212
    const-wide/32 v0, 0x16e360

    iput-wide v0, p0, Lcom/miui/camera/Camera;->PICTURE_BYTES:J

    .line 217
    new-instance v0, Lcom/miui/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$MainHandler;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 220
    iput-object v4, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 451
    new-instance v0, Lcom/miui/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/miui/camera/Camera$1;-><init>(Lcom/miui/camera/Camera;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1761
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/FocusRectangle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$ZOOM_STATE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$ZOOM_STATE;)Lcom/miui/camera/Constants$ZOOM_STATE;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideExposureZoomView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideConSatShpView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateDelaySnapTimer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->ensureDeviceStableAndSnap()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_STATE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_STATE;)Lcom/miui/camera/Constants$FOCUS_STATE;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_TYPE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_TYPE;)Lcom/miui/camera/Constants$FOCUS_TYPE;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/miui/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera;->doFocus(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->doSnap()V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showExposureZoomView()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/camera/Camera;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/miui/camera/Camera;->performTouchFocus(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$3002(Lcom/miui/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$3102(Lcom/miui/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    return p1
.end method

.method static synthetic access$3200(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mDoubleZoomValue:I

    return v0
.end method

.method static synthetic access$3300(Lcom/miui/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->changeZoom()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/miui/camera/Camera;)Lcom/miui/camera/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3802(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$4000(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->clearFocusState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showSnapAnimation()V

    return-void
.end method

.method static synthetic access$4200(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$ImageCapture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mBurstCount:I

    return v0
.end method

.method static synthetic access$4508(Lcom/miui/camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mBurstCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/camera/Camera;->mBurstCount:I

    return v0
.end method

.method static synthetic access$4600(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->calculatePicturesRemaining()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/miui/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$4900(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideSnapAnimation()V

    return-void
.end method

.method static synthetic access$5000(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mFocusCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mFocusCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$5200(Lcom/miui/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mAutoFocusCancelled:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$5400(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showCameraErrorAndFinish()V

    return-void
.end method

.method static synthetic access$5602(Lcom/miui/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/miui/camera/Camera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$6000(Lcom/miui/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/miui/camera/Camera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$6002(Lcom/miui/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/miui/camera/Camera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$6100(Lcom/miui/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateLastImage()V

    return-void
.end method

.method static synthetic access$6400(Lcom/miui/camera/Camera;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/miui/camera/Camera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6502(Lcom/miui/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mLastImageFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/miui/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/miui/camera/Camera;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/miui/camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/miui/camera/Camera;[BILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/camera/Camera;->setLastPictureThumb([BILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$7000(Lcom/miui/camera/Camera;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/miui/camera/Camera;->sExifDateTakenFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterCallback:Lcom/miui/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mRawPictureCallback:Lcom/miui/camera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$PostViewPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPostViewPictureCallback:Lcom/miui/camera/Camera$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$CAMERA_STATE;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$CAMERA_STATE;)Lcom/miui/camera/Constants$CAMERA_STATE;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mDelaySnapStartTime:J

    return-wide p1
.end method

.method static synthetic access$7700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/RotateTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/miui/camera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/miui/camera/Camera;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showSnapShrinkAnimation()V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8100(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/CameraFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/miui/camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->postPictureTaken()V

    return-void
.end method

.method static synthetic access$8400(Lcom/miui/camera/Camera;)Landroid/widget/ScreenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1495
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1496
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/miui/camera/Camera$4;

    invoke-direct {v1, p0}, Lcom/miui/camera/Camera$4;-><init>(Lcom/miui/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1502
    return-void
.end method

.method private autoFocus()V
    .locals 4

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_1

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2429
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/camera/Camera;->mPicturesRemaining:I

    if-lez v0, :cond_0

    .line 2430
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/camera/Camera;->mFocusStartTime:J

    .line 2433
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070007

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2434
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 2436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/Camera;->mAutoFocusCancelled:Z

    .line 2437
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mAutoFocusCallback:Lcom/miui/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2438
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 2439
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFocusIndicator()V

    goto :goto_0
.end method

.method private calculatePicturesRemaining()I
    .locals 4

    .prologue
    .line 2918
    invoke-static {}, Lcom/miui/camera/StorageHelper;->getAvailableStorage()J

    move-result-wide v0

    const-wide/32 v2, 0x16e360

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/miui/camera/Camera;->mPicturesRemaining:I

    .line 2919
    iget v0, p0, Lcom/miui/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_0

    .line 2454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/camera/Camera;->mAutoFocusCancelled:Z

    .line 2455
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v0}, Lcom/miui/camera/ui/FocusRectangle;->clear()V

    .line 2476
    :cond_0
    return-void
.end method

.method private cancelDelaySnap()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1997
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0}, Lcom/miui/camera/ui/RotateTextView;->clearAnimation()V

    .line 1999
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setVisibility(I)V

    .line 2003
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    .line 2005
    :cond_1
    return-void
.end method

.method private changeZoom()Z
    .locals 4

    .prologue
    .line 1598
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showExposureZoomView()V

    .line 1602
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

    sget-object v1, Lcom/miui/camera/Constants$ZOOM_STATE;->STOPPED:Lcom/miui/camera/Constants$ZOOM_STATE;

    if-eq v0, v1, :cond_1

    .line 1605
    :cond_0
    const/4 v0, 0x0

    .line 1625
    :goto_0
    return v0

    .line 1608
    :cond_1
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 1609
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget v1, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 1610
    sget-object v0, Lcom/miui/camera/Constants$ZOOM_STATE;->STARTED:Lcom/miui/camera/Constants$ZOOM_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

    .line 1612
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1619
    :goto_1
    iget v0, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    if-nez v0, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1623
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showExposureZoomView()V

    .line 1625
    const/4 v0, 0x1

    goto :goto_0

    .line 1614
    :cond_3
    iget v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    iput v0, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    .line 1615
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_1
.end method

.method private checkStorage()V
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/camera/StorageHelper;->checkStorageState(Landroid/content/ContentResolver;)I

    .line 2109
    invoke-direct {p0}, Lcom/miui/camera/Camera;->calculatePicturesRemaining()I

    .line 2110
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->showStorageHint()V

    .line 2111
    invoke-static {}, Lcom/miui/camera/ImageManager;->updateStorageSetting()V

    .line 2112
    return-void
.end method

.method private clearFocusState()V
    .locals 1

    .prologue
    .line 2316
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 2317
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 2318
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFocusIndicator()V

    .line 2319
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 2117
    invoke-static {}, Lcom/miui/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v0

    .line 2118
    const/4 v1, 0x0

    .line 2119
    invoke-direct {p0, v0, p1}, Lcom/miui/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2120
    invoke-static {v0}, Lcom/miui/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 2121
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    move v0, v1

    .line 2125
    const v1, 0xc800

    invoke-static {p1, v1}, Lcom/miui/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2126
    invoke-static {v1, v0}, Lcom/miui/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2127
    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2065
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2066
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Lcom/miui/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dataLocation()Lcom/miui/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 2311
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/camera/ImageManager$DataLocation;->INTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    goto :goto_0
.end method

.method private deleteLastImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2771
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "delete the image just captured"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2773
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2775
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mLastImageFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2777
    const v0, 0x7f0b0010

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2780
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    .line 2781
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    .line 2782
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateThumbnailButton()V

    .line 2783
    return-void
.end method

.method private deviceBecomeStable()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1356
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTiming:Z

    if-eqz v0, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAutofocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    if-eq v0, v4, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070001

    invoke-virtual {v1, v2, v4}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1368
    :cond_2
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->enableTouchAEC(Z)V

    .line 1369
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->AUTO:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 1370
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->doFocus(Z)V

    goto :goto_0
.end method

.method private deviceBeginMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1334
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAutofocus:Z

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    if-eq v0, v1, :cond_1

    .line 1337
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->doFocus(Z)V

    .line 1343
    :goto_0
    iget v0, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    if-eq v0, v2, :cond_0

    .line 1344
    iput v2, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    .line 1345
    iput v2, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    .line 1346
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->enableTouchAEC(Z)V

    .line 1349
    :cond_0
    return-void

    .line 1340
    :cond_1
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    goto :goto_0
.end method

.method private deviceKeepMoving()V
    .locals 0

    .prologue
    .line 1352
    return-void
.end method

.method private deviceKeepStable()V
    .locals 0

    .prologue
    .line 1375
    return-void
.end method

.method private disableAntiShake()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3953
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3954
    if-eqz v0, :cond_0

    .line 3955
    const v1, 0x7f02004b

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3957
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 3959
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    .line 3962
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3963
    const-string v1, "pref_key_camera_anti_shake"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3965
    return-void
.end method

.method private disableBurst()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3995
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3996
    if-eqz v0, :cond_0

    .line 3997
    const v1, 0x7f020052

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3999
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 4001
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    .line 4002
    return-void
.end method

.method private disableDelaySnap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4166
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setVisibility(I)V

    .line 4167
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4168
    if-eqz v0, :cond_0

    .line 4169
    const v1, 0x7f020058

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4171
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 4173
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    .line 4174
    return-void
.end method

.method private disableScreenShutter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4225
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4226
    if-eqz v0, :cond_0

    .line 4227
    const v1, 0x7f02005b

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4229
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    .line 4230
    iget-object v0, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 4232
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideExposureZoomView()V

    .line 4233
    return-void
.end method

.method private doAttach()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v0, "crop-temp"

    .line 2149
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_0

    .line 2236
    :goto_0
    return-void

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->getLastCaptureData()[B

    move-result-object v0

    .line 2153
    iget-object v1, p0, Lcom/miui/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 2158
    iget-object v1, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 2162
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2163
    iget-object v1, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 2169
    :goto_1
    if-nez v1, :cond_3

    .line 2170
    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->saveImageToTempFile([B)Landroid/net/Uri;

    move-result-object v0

    .line 2171
    if-nez v0, :cond_2

    .line 2172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->setResult(I)V

    .line 2181
    :goto_2
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2185
    invoke-static {v1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2166
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v1

    goto :goto_1

    .line 2174
    :cond_2
    const/4 v2, -0x1

    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/camera/Camera;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2182
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2185
    :goto_3
    invoke-static {v0}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2177
    :cond_3
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2178
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 2179
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->setResult(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 2185
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2188
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->saveImageToTempFile([B)Landroid/net/Uri;

    move-result-object v0

    .line 2189
    if-nez v0, :cond_5

    .line 2190
    invoke-virtual {p0, v2}, Lcom/miui/camera/Camera;->setResult(I)V

    .line 2194
    :goto_5
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 2192
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    .line 2201
    :cond_6
    :try_start_5
    const-string v1, "crop-temp"

    invoke-virtual {p0, v1}, Lcom/miui/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2202
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2203
    const-string v2, "crop-temp"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/miui/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    .line 2204
    :try_start_6
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2205
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2206
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v0

    .line 2216
    invoke-static {v2}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2219
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2220
    iget-object v2, p0, Lcom/miui/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2221
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    :cond_7
    iget-object v2, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_8

    .line 2224
    const-string v2, "output"

    iget-object v3, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2229
    :goto_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2232
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2234
    invoke-virtual {p0, v2, v4}, Lcom/miui/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2207
    :catch_1
    move-exception v0

    move-object v0, v5

    .line 2208
    :goto_7
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/miui/camera/Camera;->setResult(I)V

    .line 2209
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2216
    invoke-static {v0}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2211
    :catch_2
    move-exception v0

    move-object v0, v5

    .line 2212
    :goto_8
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0, v1}, Lcom/miui/camera/Camera;->setResult(I)V

    .line 2213
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2216
    invoke-static {v0}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v5

    :goto_9
    invoke-static {v1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2226
    :cond_8
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 2216
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_9

    .line 2211
    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_8

    .line 2207
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_7

    .line 2185
    :catchall_4
    move-exception v0

    move-object v1, v5

    goto/16 :goto_4

    .line 2182
    :catch_5
    move-exception v0

    move-object v0, v5

    goto/16 :goto_3
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 2239
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2240
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V

    .line 2241
    return-void
.end method

.method private doFocus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportFocusMode:Z

    if-nez v0, :cond_1

    .line 2400
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    :cond_2
    if-eqz p1, :cond_3

    .line 2410
    invoke-direct {p0}, Lcom/miui/camera/Camera;->autoFocus()V

    goto :goto_0

    .line 2412
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 2354
    const-string v0, "com.miui.camera.Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mFocusState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportFocusMode:Z

    if-nez v0, :cond_2

    .line 2365
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->onSnap()V

    .line 2374
    :cond_1
    :goto_0
    return-void

    .line 2366
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_1

    .line 2369
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    goto :goto_0
.end method

.method private enableAntiShake()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3928
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_0

    .line 3929
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableBurst()V

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v0, :cond_1

    .line 3932
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableDelaySnap()V

    .line 3935
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3936
    if-eqz v0, :cond_2

    .line 3937
    const v1, 0x7f02004c

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3940
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-nez v0, :cond_3

    .line 3941
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 3944
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    .line 3947
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3948
    const-string v1, "pref_key_camera_anti_shake"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3949
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3950
    return-void
.end method

.method private enableBurst()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3978
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v0, :cond_0

    .line 3979
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableDelaySnap()V

    .line 3981
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    if-eqz v0, :cond_1

    .line 3982
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableAntiShake()V

    .line 3985
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3986
    if-eqz v0, :cond_2

    .line 3987
    const v1, 0x7f020053

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3989
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 3991
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    .line 3992
    return-void
.end method

.method private enableDelaySnap()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4144
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_0

    .line 4145
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableBurst()V

    .line 4147
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    if-eqz v0, :cond_1

    .line 4148
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableAntiShake()V

    .line 4151
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4152
    if-eqz v0, :cond_2

    .line 4153
    const v1, 0x7f020059

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4155
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 4157
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput v2, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    .line 4158
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f07001b

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapValue:I

    .line 4160
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showDelaysnapTimer()V

    .line 4162
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    .line 4163
    return-void
.end method

.method private enableScreenShutter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4214
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4215
    if-eqz v0, :cond_0

    .line 4216
    const v1, 0x7f02005c

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4218
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    .line 4219
    iget-object v0, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 4221
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showExposureZoomView()V

    .line 4222
    return-void
.end method

.method private enableTouchAEC(Z)V
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f070007

    const/4 v3, -0x1

    const-string v6, ","

    const-string v4, "touch-focus"

    .line 2266
    const-string v0, "com.miui.camera.Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTouchAEC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSupportTouchFocus:Z

    if-nez v0, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2270
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_4

    .line 2271
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_2

    const-string v1, "touch-on"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 2272
    if-eqz p1, :cond_1

    .line 2273
    iget v0, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    if-ne v0, v3, :cond_3

    .line 2274
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 2276
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    .line 2287
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {v1, v5, v2}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2307
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    goto :goto_0

    .line 2271
    :cond_2
    const-string v1, "touch-off"

    goto :goto_1

    .line 2279
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAf(II)V

    .line 2281
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setTouchIndexAec(II)V

    goto :goto_2

    .line 2290
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-aec"

    if-eqz p1, :cond_5

    const-string v2, "on"

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    if-eqz p1, :cond_7

    .line 2292
    iget v0, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    if-ne v0, v3, :cond_6

    .line 2293
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-focus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    :goto_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {v1, v5, v2}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_3

    .line 2290
    :cond_5
    const-string v2, "off"

    goto :goto_4

    .line 2296
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-focus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2303
    :cond_7
    sget-boolean v0, Landroid/os/Build;->IS_I9000:Z

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-focus"

    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private ensureDeviceStableAndSnap()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide v4, 0x3fb999999999999aL

    .line 2009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-wide v2, v2, Lcom/miui/camera/CameraGlobal;->mAntiShakeTimingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    move v0, v7

    .line 2010
    :goto_0
    if-eqz v0, :cond_0

    .line 2011
    const v1, 0x7f0b000f

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2014
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDeviceStable:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/miui/camera/Camera;->mAccelerometerGap:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    .line 2015
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->clearAnimation()V

    .line 2016
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 2017
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2018
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_2

    .line 2019
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdSuccess:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    .line 2022
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v6, v0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTiming:Z

    .line 2023
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->initiate()V

    .line 2038
    :goto_1
    return-void

    :cond_3
    move v0, v6

    .line 2009
    goto :goto_0

    .line 2027
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_5

    .line 2028
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mAccelerometerGap:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_6

    .line 2029
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    .line 2037
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 2030
    :cond_6
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mAccelerometerGap:D

    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 2031
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress1:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    goto :goto_2

    .line 2033
    :cond_7
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress2:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    goto :goto_2
.end method

.method private getCurrentLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 2820
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2821
    iget-object v2, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/miui/camera/Camera$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2822
    .local v1, l:Landroid/location/Location;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 2826
    .end local v1           #l:Landroid/location/Location;
    :goto_1
    return-object v2

    .line 2820
    .restart local v1       #l:Landroid/location/Location;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2826
    .end local v1           #l:Landroid/location/Location;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hideColoreffectView(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 4092
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4093
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    new-instance v1, Lcom/miui/camera/Camera$11;

    invoke-direct {v1, p0}, Lcom/miui/camera/Camera$11;-><init>(Lcom/miui/camera/Camera;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/camera/Camera;->slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 4105
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0, v2}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 4106
    return-void
.end method

.method private hideConSatShpView()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 3661
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3662
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3665
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3666
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3668
    :cond_1
    return-void
.end method

.method private hideExposureZoomView()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 3565
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3570
    :cond_1
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 7

    .prologue
    .line 2903
    iget-boolean v5, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 2905
    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v5, v5, Lcom/miui/camera/Global;->mNumberOfCameras:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2906
    iget-object v5, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2909
    :cond_0
    const v5, 0x7f0d0034

    invoke-virtual {p0, v5}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/camera/Global;->fadeIn(Landroid/view/View;)V

    .line 2910
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 2911
    .local v4, pickIds:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 2912
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/camera/Global;->fadeOut(Landroid/view/View;)V

    .line 2911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2915
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v3           #len$:I
    .end local v4           #pickIds:[I
    :cond_1
    return-void

    .line 2910
    nop

    :array_0
    .array-data 0x4
        0x2et 0x0t 0xdt 0x7ft
        0x2ct 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private hideSettingPanel(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 3877
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3906
    :cond_0
    :goto_0
    return-void

    .line 3879
    :cond_1
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3880
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3882
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3883
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/camera/Camera$9;

    invoke-direct {v1, p0}, Lcom/miui/camera/Camera$9;-><init>(Lcom/miui/camera/Camera;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/camera/Camera;->slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 3900
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/camera/Camera;->slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 3901
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3902
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_0

    .line 3903
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showExposureZoomView()V

    goto :goto_0
.end method

.method private hideSnapAnimation()V
    .locals 4

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3249
    :cond_0
    :goto_0
    return-void

    .line 3236
    :cond_1
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3237
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3238
    new-instance v2, Lcom/miui/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/miui/camera/Camera$6;-><init>(Lcom/miui/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3247
    iget-object v2, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3248
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    const v2, 0x7f0d0025

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initColoreffectView()Z
    .locals 10

    .prologue
    const v9, 0x7f070007

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4018
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScreenView;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    .line 4019
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    if-nez v0, :cond_0

    move v0, v7

    .line 4064
    :goto_0
    return v0

    .line 4023
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 4024
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 4025
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    const v1, 0x7f020003

    const v2, 0x7f020002

    const v3, 0x7f020005

    const v4, 0x7f020004

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScreenView;->setArrowIndicatorResource(IIII)V

    .line 4028
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 4033
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4034
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    .line 4035
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v7

    move v4, v7

    .line 4036
    :goto_1
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 4037
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0, v9, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4038
    const v0, 0x7f030001

    invoke-virtual {v1, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    .line 4039
    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v6, 0x7f070006

    invoke-virtual {v5, v6, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4040
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/camera/ui/RotateTextView;->setTag(Ljava/lang/Object;)V

    .line 4041
    const v5, 0x7f0b0088

    add-int/lit8 v6, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/miui/camera/ui/RotateTextView;->setTag(ILjava/lang/Object;)V

    .line 4042
    iget v4, p0, Lcom/miui/camera/Camera;->mLastOrientation:I

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 4043
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v4, v4, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    if-ne v3, v4, :cond_1

    .line 4044
    const v4, 0x7f020026

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setBackgroundResource(I)V

    .line 4045
    iput-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    .line 4049
    :goto_2
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v5, 0x7f070008

    invoke-virtual {v4, v5, v3}, Lcom/miui/camera/CameraGlobal;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v8, v4, v8, v8}, Lcom/miui/camera/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4051
    iget-object v4, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v4, v0}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    move v0, v6

    .line 4036
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    .line 4047
    :cond_1
    const v4, 0x7f020025

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 4058
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 4060
    iput-object v8, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    move v0, v7

    .line 4061
    goto/16 :goto_0

    .line 4064
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private initConSatShpView()Z
    .locals 11

    .prologue
    const v10, 0x7f0d000c

    const v9, 0x7f0d000b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3677
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v1

    .line 3678
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v2

    .line 3679
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v3

    .line 3682
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    move v0, v6

    .line 3736
    :goto_0
    return v0

    .line 3685
    :cond_0
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3686
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3687
    const v4, 0x7f030002

    iget-object v5, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3690
    :cond_1
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    .line 3691
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    move v0, v6

    goto :goto_0

    .line 3693
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3694
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3695
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v4, v4, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3696
    iget-object v4, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3699
    if-nez v1, :cond_3

    .line 3700
    invoke-virtual {p0, v9}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3712
    :goto_1
    if-nez v2, :cond_4

    .line 3713
    invoke-virtual {p0, v10}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3724
    :goto_2
    if-nez v3, :cond_5

    .line 3725
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    move v0, v7

    .line 3736
    goto :goto_0

    .line 3702
    :cond_3
    invoke-virtual {p0, v9}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3704
    invoke-virtual {p0, v9}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    .line 3705
    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setMax(I)V

    .line 3706
    invoke-virtual {v0, v7}, Lcom/miui/camera/ui/VerticalSeekBar;->setKeyProgressIncrement(I)V

    .line 3707
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setProgress(I)V

    .line 3708
    invoke-virtual {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;)V

    goto :goto_1

    .line 3715
    :cond_4
    invoke-virtual {p0, v10}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3717
    invoke-virtual {p0, v10}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    .line 3718
    invoke-virtual {v0, v2}, Lcom/miui/camera/ui/VerticalSeekBar;->setMax(I)V

    .line 3719
    invoke-virtual {v0, v7}, Lcom/miui/camera/ui/VerticalSeekBar;->setKeyProgressIncrement(I)V

    .line 3720
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setProgress(I)V

    .line 3721
    invoke-virtual {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;)V

    goto :goto_2

    .line 3727
    :cond_5
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3729
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    .line 3730
    invoke-virtual {v0, v3}, Lcom/miui/camera/ui/VerticalSeekBar;->setMax(I)V

    .line 3731
    invoke-virtual {v0, v7}, Lcom/miui/camera/ui/VerticalSeekBar;->setKeyProgressIncrement(I)V

    .line 3732
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSharpness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setProgress(I)V

    .line 3733
    invoke-virtual {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;)V

    goto :goto_3
.end method

.method private initExposureZoomView()Z
    .locals 7

    .prologue
    const v3, 0x7f0d000f

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3579
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportExposure:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportZoom:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 3628
    :goto_0
    return v0

    .line 3582
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3583
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3584
    const v1, 0x7f030004

    iget-object v2, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3587
    :cond_1
    invoke-virtual {p0, v3}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    .line 3588
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    .line 3590
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3591
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3592
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3593
    iget-object v1, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3596
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    .line 3597
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/Global;->mSupportExposure:Z

    if-nez v1, :cond_3

    .line 3598
    invoke-virtual {v0, v6}, Lcom/miui/camera/ui/VerticalSeekBar;->setVisibility(I)V

    .line 3619
    :goto_1
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    .line 3620
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/Global;->mSupportZoom:Z

    if-nez v1, :cond_4

    .line 3621
    invoke-virtual {v0, v6}, Lcom/miui/camera/ui/VerticalSeekBar;->setVisibility(I)V

    :goto_2
    move v0, v5

    .line 3628
    goto :goto_0

    .line 3600
    :cond_3
    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/VerticalSeekBar;->setVisibility(I)V

    .line 3602
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 3603
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 3604
    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v3, v3, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3606
    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/miui/camera/ui/VerticalSeekBar;->setMax(I)V

    .line 3607
    invoke-virtual {v0, v5}, Lcom/miui/camera/ui/VerticalSeekBar;->setKeyProgressIncrement(I)V

    .line 3608
    sub-int v1, v4, v1

    .line 3609
    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setProgress(I)V

    .line 3610
    invoke-virtual {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;)V

    goto :goto_1

    .line 3623
    :cond_4
    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/VerticalSeekBar;->setVisibility(I)V

    .line 3624
    iget v1, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setMax(I)V

    .line 3625
    invoke-virtual {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;)V

    goto :goto_2
.end method

.method private initSettingPanel()Z
    .locals 6

    .prologue
    const v5, 0x7f0d001b

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 3779
    invoke-virtual {p0, v5}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3780
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3781
    const v1, 0x7f030007

    iget-object v2, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3785
    :cond_0
    invoke-virtual {p0, v5}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    .line 3786
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move v0, v3

    .line 3841
    :goto_0
    return v0

    .line 3789
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3790
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3793
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d001d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3794
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    if-eqz v1, :cond_2

    .line 3795
    const v1, 0x7f02004c

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3800
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3801
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v1, :cond_3

    .line 3802
    const v1, 0x7f020053

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3808
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/Camera;->drawColorEffectIcon(Lcom/miui/camera/Global;I)V

    .line 3811
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3812
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v1, :cond_4

    .line 3813
    const v1, 0x7f020059

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3818
    :goto_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3819
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v1, :cond_5

    .line 3820
    const v1, 0x7f02005c

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3825
    :goto_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3826
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v1, :cond_6

    .line 3827
    const v1, 0x7f02005f

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3831
    :goto_5
    sget-object v1, Lcom/miui/camera/Constants;->CAMERA_SETTING_ITEM_IDS:[I

    array-length v2, v1

    :goto_6
    if-ge v3, v2, :cond_7

    aget v0, v1, v3

    .line 3832
    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    iget v4, p0, Lcom/miui/camera/Camera;->mLastOrientation:I

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 3831
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 3797
    :cond_2
    const v1, 0x7f02004b

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 3804
    :cond_3
    const v1, 0x7f020052

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 3815
    :cond_4
    const v1, 0x7f020058

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 3822
    :cond_5
    const v1, 0x7f02005b

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 3829
    :cond_6
    const v1, 0x7f02005e

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_5

    .line 3836
    :cond_7
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3837
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3838
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3839
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3841
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 1438
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1440
    :cond_0
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "initialize first time"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    new-instance v0, Lcom/miui/camera/Camera$3;

    invoke-direct {v0, p0, p0}, Lcom/miui/camera/Camera$3;-><init>(Lcom/miui/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1458
    iget-object v0, p0, Lcom/miui/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1461
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 1462
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mRecordlocation:Z

    if-eqz v0, :cond_1

    .line 1463
    invoke-direct {p0}, Lcom/miui/camera/Camera;->startReceivingLocationUpdates()V

    .line 1465
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->keepMediaProviderInstance()V

    .line 1468
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1469
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1470
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    .line 1471
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1472
    new-instance v0, Lcom/miui/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Camera;->mLastPictureButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    .line 1475
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateThumbnailButton()V

    .line 1478
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFocusIndicator()V

    .line 1480
    invoke-direct {p0}, Lcom/miui/camera/Camera;->installIntentFilter()V

    .line 1482
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->initializeTouchFocus()V

    .line 1484
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/miui/camera/Camera$CameraGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/camera/Camera$CameraGestureListener;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1486
    const-wide/32 v0, 0x16e360

    invoke-static {v0, v1}, Lcom/miui/camera/StorageHelper;->setExternalStorageThreshold(J)V

    .line 1487
    invoke-direct {p0}, Lcom/miui/camera/Camera;->checkStorage()V

    .line 1489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    .line 1491
    invoke-direct {p0}, Lcom/miui/camera/Camera;->addIdleHandler()V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 2

    .prologue
    .line 1518
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "initialize second time"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v0, p0, Lcom/miui/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1525
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mRecordlocation:Z

    if-eqz v0, :cond_0

    .line 1526
    invoke-direct {p0}, Lcom/miui/camera/Camera;->startReceivingLocationUpdates()V

    .line 1529
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->installIntentFilter()V

    .line 1531
    invoke-direct {p0}, Lcom/miui/camera/Camera;->keepMediaProviderInstance()V

    .line 1533
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mZoomListener:Lcom/miui/camera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1535
    const-wide/32 v0, 0x16e360

    invoke-static {v0, v1}, Lcom/miui/camera/StorageHelper;->setExternalStorageThreshold(J)V

    .line 1536
    invoke-direct {p0}, Lcom/miui/camera/Camera;->checkStorage()V

    .line 1538
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 1539
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateThumbnailButton()V

    .line 1542
    :cond_1
    return-void
.end method

.method private initializeSnapAnimView()V
    .locals 6

    .prologue
    const v5, 0x7f0d0025

    const v2, 0x7f0d0024

    .line 3197
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3220
    :goto_0
    return-void

    .line 3199
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3200
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3201
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3202
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3204
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3205
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3206
    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v3, v3, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v3, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3208
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3210
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3211
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3212
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3213
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3215
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3216
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3217
    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v3, v3, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v3, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3219
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private initializeSnapShrinkAnimation(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v1, 0x3f80

    const/high16 v5, 0x3f00

    const/4 v9, 0x0

    .line 3402
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3404
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    .line 3405
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v2, v7

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v3, v3, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v7

    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v4, v3, v4

    move v3, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 3408
    iget-object v1, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3409
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v2, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, v7, 0x2

    sub-int/2addr v1, v2

    int-to-float v8, v1

    move v1, v11

    move v2, v9

    move v3, v10

    move v5, v11

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3413
    iget-object v1, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3414
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3416
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/miui/camera/Camera$7;

    invoke-direct {v1, p0}, Lcom/miui/camera/Camera$7;-><init>(Lcom/miui/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3427
    return-void
.end method

.method private initializeZoom()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1571
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1594
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1578
    iput-boolean v2, p0, Lcom/miui/camera/Camera;->mSmoothZoomSupported:Z

    .line 1579
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    .line 1580
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mZoomRatios:[F

    .line 1582
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1583
    iget v0, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    iput v0, p0, Lcom/miui/camera/Camera;->mDoubleZoomValue:I

    .line 1593
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mZoomListener:Lcom/miui/camera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0

    .line 1585
    :cond_1
    iput v2, p0, Lcom/miui/camera/Camera;->mDoubleZoomValue:I

    move v0, v2

    .line 1587
    :goto_2
    iget-object v1, p0, Lcom/miui/camera/Camera;->mZoomRatios:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1588
    iget-object v1, p0, Lcom/miui/camera/Camera;->mZoomRatios:[F

    aget v1, v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4

    .line 1590
    :cond_2
    iget v1, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    :cond_3
    iput v0, p0, Lcom/miui/camera/Camera;->mDoubleZoomValue:I

    goto :goto_1

    .line 1587
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 2245
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2246
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2247
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2248
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2249
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2250
    iget-object v1, p0, Lcom/miui/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/camera/Camera;->mDidRegister:Z

    .line 2252
    return-void
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2863
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2864
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/miui/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 1429
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1432
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3022
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3023
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3024
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3025
    return-void
.end method

.method private onPreferenceChanged()V
    .locals 2

    .prologue
    .line 3137
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "onPreferenceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->initPreferenceSettings()V

    .line 3139
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateLayout()V

    .line 3140
    iget-object v0, p0, Lcom/miui/camera/Camera;->mReferencelineShowingView:Lcom/miui/camera/ui/ReferenceLine;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mReferenceline:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ReferenceLine;->setLineType(I)V

    .line 3141
    return-void
.end method

.method private onPreferenceRestored()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3073
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->initGlobalSettings()V

    .line 3076
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3077
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initSettingPanel()Z

    .line 3080
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    if-eqz v0, :cond_2

    .line 3081
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 3082
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput v3, v0, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    move v0, v3

    .line 3083
    :goto_0
    iget-object v1, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v1}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3084
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    if-ne v0, v1, :cond_1

    .line 3085
    iget-object v1, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v1, v0}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3083
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3087
    :cond_1
    iget-object v1, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v1, v0}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 3092
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFlashView()V

    .line 3094
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3095
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3096
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3099
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    if-eqz v0, :cond_4

    .line 3100
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 3103
    :cond_4
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3105
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 3106
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initExposureZoomView()Z

    .line 3109
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    if-eqz v0, :cond_6

    .line 3110
    iget-object v0, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 3113
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    if-eqz v0, :cond_7

    .line 3114
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setVisibility(I)V

    .line 3117
    :cond_7
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 3118
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v0

    if-eqz v0, :cond_8

    .line 3119
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getDefaultContrast()I

    move-result v1

    iput v1, v0, Lcom/miui/camera/Global;->mContrast:I

    .line 3121
    :cond_8
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v0

    if-eqz v0, :cond_9

    .line 3122
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getDefaultSaturation()I

    move-result v1

    iput v1, v0, Lcom/miui/camera/Global;->mSaturation:I

    .line 3124
    :cond_9
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v0

    if-eqz v0, :cond_a

    .line 3125
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getDefaultSharpness()I

    move-result v1

    iput v1, v0, Lcom/miui/camera/Global;->mSharpness:I

    .line 3127
    :cond_a
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mContrast:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 3128
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mSaturation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 3129
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mSharpness:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 3130
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initConSatShpView()Z

    .line 3133
    :cond_b
    invoke-direct {p0}, Lcom/miui/camera/Camera;->onPreferenceChanged()V

    .line 3134
    return-void
.end method

.method private performTouchFocus(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2378
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->AUTO:Lcom/miui/camera/Constants$FOCUS_TYPE;

    if-ne v0, v1, :cond_0

    .line 2379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->doFocus(Z)V

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSupportTouchFocus:Z

    if-eqz v0, :cond_1

    .line 2383
    iput p1, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    .line 2384
    iput p2, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    .line 2385
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->enableTouchAEC(Z)V

    .line 2390
    :goto_0
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->TOUCH:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 2392
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->doFocus(Z)V

    .line 2394
    return v2

    .line 2387
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    iput v0, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    goto :goto_0
.end method

.method private postPictureTaken()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 624
    iget-boolean v2, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mPlayback:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-nez v2, :cond_2

    .line 626
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    .line 632
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 634
    .local v0, now:J
    iget-wide v2, p0, Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/miui/camera/Camera;->mJpegCallbackFinishTime:J

    .line 635
    const-string v2, "com.miui.camera.Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J

    .line 638
    .end local v0           #now:J
    :cond_1
    return-void

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3018
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3019
    return-void
.end method

.method private restartPreview()V
    .locals 2

    .prologue
    .line 1651
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "restart preview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :try_start_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    :goto_0
    return-void

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showCameraErrorAndFinish()V

    goto :goto_0
.end method

.method private saveDataToFile(Ljava/lang/String;[B)Z
    .locals 4
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 2041
    const/4 v1, 0x0

    .line 2043
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2048
    invoke-static {v2}, Lcom/miui/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 2050
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 2045
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2046
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 2048
    invoke-static {v1}, Lcom/miui/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/miui/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2045
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveImageToTempFile([B)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v0, "image-temp.jpg"

    .line 2131
    .line 2134
    :try_start_0
    const-string v0, "image-temp.jpg"

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2135
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2136
    const-string v1, "image-temp.jpg"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2137
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2138
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2139
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2143
    invoke-static {v1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2145
    :goto_0
    return-object v0

    .line 2140
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 2143
    :goto_1
    invoke-static {v0}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2140
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private setCameraParameters()V
    .locals 3

    .prologue
    const-string v2, "com.miui.camera.Camera"

    .line 1740
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "setCameraParameters"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_1

    .line 1749
    :cond_0
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "auto focus in progress, denied"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :goto_0
    return-void

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "can not connect to hardware camera"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;

    if-ne v0, v1, :cond_2

    .line 1751
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "snapshot in progress, denied"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1754
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1755
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2641
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2642
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateCameraParametersInitialize()V

    .line 2645
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2646
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateCameraParametersZoom()V

    .line 2649
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2650
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 2651
    :try_start_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateCameraParametersPreference()V

    .line 2652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 2656
    return-void

    .line 2652
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 2661
    iget v0, p0, Lcom/miui/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/camera/Camera;->mUpdateSet:I

    .line 2662
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2665
    iput v1, p0, Lcom/miui/camera/Camera;->mUpdateSet:I

    .line 2675
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2668
    iget v0, p0, Lcom/miui/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->setCameraParameters(I)V

    .line 2669
    iput v1, p0, Lcom/miui/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2671
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2672
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setLastPictureThumb([BILandroid/net/Uri;)V
    .locals 4
    .parameter "data"
    .parameter "degree"
    .parameter "uri"

    .prologue
    .line 2054
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2057
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2058
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2059
    .local v0, lastPictureThumb:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/miui/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2060
    iget-object v2, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2061
    iget-object v2, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v2, p3, v0}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2074
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/ShutterButton;->setDegree(I)V

    .line 2075
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2076
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/miui/camera/ui/ScaleRotateImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2077
    check-cast v0, Lcom/miui/camera/ui/ScaleRotateImageView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/ScaleRotateImageView;->setDegree(I)V

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2081
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateImageView;->setDegree(I)V

    .line 2082
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateImageView;->setDegree(I)V

    .line 2083
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateImageView;->setDegree(I)V

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    if-eqz v0, :cond_2

    .line 2087
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2090
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2091
    sget-object v1, Lcom/miui/camera/Constants;->CAMERA_SETTING_ITEM_IDS:[I

    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_3

    aget v0, v1, v3

    .line 2092
    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2091
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2097
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    if-eqz v0, :cond_5

    move v1, v4

    .line 2098
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 2099
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2101
    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2098
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2105
    :cond_5
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2868
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2869
    if-eqz v1, :cond_0

    .line 2870
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 2871
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 2872
    const-string v0, "flash_mode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2874
    const-string v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2875
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    .line 2885
    :cond_0
    :goto_0
    return-void

    .line 2876
    :cond_1
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2877
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    goto :goto_0

    .line 2878
    :cond_2
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2879
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x2

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    goto :goto_0

    .line 2881
    :cond_3
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "Not supported flash mode, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1646
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/miui/camera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    return-void
.end method

.method private showColoreffectView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4068
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    if-nez v0, :cond_0

    .line 4069
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initColoreffectView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4089
    :goto_0
    return-void

    .line 4073
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4074
    iget-object v1, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ScreenView;->scrollToScreen(I)V

    .line 4077
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4078
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    new-instance v1, Lcom/miui/camera/Camera$10;

    invoke-direct {v1, p0}, Lcom/miui/camera/Camera$10;-><init>(Lcom/miui/camera/Camera;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/camera/Camera;->slideIn(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 4088
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0, v3}, Landroid/widget/ScreenView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showConSatShpView()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xf

    .line 3636
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-eqz v0, :cond_1

    .line 3655
    :cond_0
    :goto_0
    return-void

    .line 3639
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 3642
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 3643
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initConSatShpView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3647
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3650
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3651
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3653
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showDelaysnapTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4177
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    if-nez v0, :cond_0

    .line 4178
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4179
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4180
    const v2, 0x7f030003

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4181
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    .line 4183
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f07001b

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4184
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setClickable(Z)V

    .line 4185
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setFocusable(Z)V

    .line 4186
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setVisibility(I)V

    .line 4187
    return-void
.end method

.method private showExposureZoomView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 3533
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-eqz v0, :cond_1

    .line 3559
    :cond_0
    :goto_0
    return-void

    .line 3536
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v4}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 3539
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 3540
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initExposureZoomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3544
    :cond_3
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    iget v1, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setProgress(I)V

    .line 3545
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/VerticalSeekBar;

    iget v1, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/VerticalSeekBar;->setProgress(I)V

    .line 3549
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3552
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3553
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3555
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-nez v0, :cond_0

    .line 3556
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showPostCaptureAlert()V
    .locals 7

    .prologue
    .line 2888
    iget-boolean v5, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 2890
    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v5, v5, Lcom/miui/camera/Global;->mNumberOfCameras:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2891
    iget-object v5, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2894
    :cond_0
    const v5, 0x7f0d0034

    invoke-virtual {p0, v5}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/camera/Global;->fadeOut(Landroid/view/View;)V

    .line 2895
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 2896
    .local v4, pickIds:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 2897
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/camera/Global;->fadeIn(Landroid/view/View;)V

    .line 2896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2900
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v3           #len$:I
    .end local v4           #pickIds:[I
    :cond_1
    return-void

    .line 2895
    nop

    :array_0
    .array-data 0x4
        0x2et 0x0t 0xdt 0x7ft
        0x2ct 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private showSettingPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3846
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3847
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initSettingPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3874
    :cond_0
    :goto_0
    return-void

    .line 3850
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3853
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    if-eq v0, v1, :cond_2

    .line 3854
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->doFocus(Z)V

    .line 3858
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideExposureZoomView()V

    .line 3860
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideConSatShpView()V

    .line 3863
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    new-instance v1, Lcom/miui/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/miui/camera/Camera$8;-><init>(Lcom/miui/camera/Camera;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/camera/Camera;->slideIn(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 3872
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3873
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f02000b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showSnapAnimation()V
    .locals 4

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3231
    :goto_0
    return-void

    .line 3225
    :cond_0
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3226
    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3227
    iget-object v2, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    const v3, 0x7f0d0024

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3228
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    const v2, 0x7f0d0025

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3230
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSnapShrinkAnimation()V
    .locals 2

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 3253
    invoke-direct {p0}, Lcom/miui/camera/Camera;->postPictureTaken()V

    .line 3258
    :goto_0
    return-void

    .line 3256
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/CameraFrameLayout;->setAnimationInProgress(Z)V

    .line 3257
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mSnapShrinkAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private slideIn(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 9
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3035
    if-nez p1, :cond_0

    .line 3048
    :goto_0
    return-void

    .line 3037
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 3038
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mSlideInAnimation:Landroid/view/animation/Animation;

    .line 3043
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3046
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3047
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 9
    .parameter "view"
    .parameter "delay"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3056
    if-nez p1, :cond_0

    .line 3070
    :goto_0
    return-void

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 3059
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mSlideOutAnimation:Landroid/view/animation/Animation;

    .line 3064
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3067
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideOutAnimation:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3068
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3069
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSlideOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startPreview()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const-string v8, "com.miui.camera.Camera"

    .line 1661
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "start preview"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V

    .line 1669
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 1670
    invoke-direct {p0}, Lcom/miui/camera/Camera;->stopPreview()V

    .line 1674
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    invoke-direct {p0, v6}, Lcom/miui/camera/Camera;->setCameraParameters(I)V

    .line 1683
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 1684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1686
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/miui/camera/Camera;->mErrorCallback:Lcom/miui/camera/Camera$ErrorCallback;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1689
    :try_start_1
    const-string v4, "com.miui.camera.Camera"

    const-string v5, "startPreview"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1697
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/miui/camera/Global;->mPreviewing:Z

    .line 1698
    sget-object v4, Lcom/miui/camera/Constants$ZOOM_STATE;->STOPPED:Lcom/miui/camera/Constants$ZOOM_STATE;

    iput-object v4, p0, Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;

    .line 1699
    sget-object v4, Lcom/miui/camera/Constants$CAMERA_STATE;->IDLE:Lcom/miui/camera/Constants$CAMERA_STATE;

    iput-object v4, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    .line 1702
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v4, v4, Lcom/miui/camera/CameraGlobal;->mSupportTouchFocus:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v4, v4, Lcom/miui/camera/CameraGlobal;->mAutofocus:Z

    if-nez v4, :cond_3

    .line 1703
    iput v6, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    iput v6, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    .line 1704
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/miui/camera/Camera;->enableTouchAEC(Z)V

    .line 1707
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFocusIndicator()V

    .line 1708
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->showStart()V

    .line 1709
    iget-object v4, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1712
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 1713
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1714
    const-string v6, "com.miui.camera.Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start preview time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms; thread time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nanoseconds; elapsed real time from boot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v0, :cond_5

    .line 1718
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showDelaysnapTimer()V

    .line 1723
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_0

    .line 1724
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showExposureZoomView()V

    goto/16 :goto_0

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "set preview display failed."

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    goto/16 :goto_0

    .line 1691
    :catch_1
    move-exception v0

    .line 1692
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "start preview failed."

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    goto/16 :goto_0

    .line 1719
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    if-eqz v0, :cond_4

    .line 1720
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->onSnap()V

    goto :goto_1
.end method

.method private startReceivingLocationUpdates()V
    .locals 10

    .prologue
    const-string v9, "provider does not exist "

    const-string v8, "fail to request location update, ignore"

    const-string v7, "com.miui.camera.Camera"

    .line 2786
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2788
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2796
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2804
    :cond_0
    :goto_1
    return-void

    .line 2790
    :catch_0
    move-exception v0

    .line 2791
    const-string v1, "com.miui.camera.Camera"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2792
    :catch_1
    move-exception v0

    .line 2793
    const-string v1, "com.miui.camera.Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2798
    :catch_2
    move-exception v0

    .line 2799
    const-string v1, "com.miui.camera.Camera"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2800
    :catch_3
    move-exception v0

    .line 2801
    const-string v1, "com.miui.camera.Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    const-string v1, "com.miui.camera.Camera"

    .line 1729
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "stopPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1731
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "stop preview"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    .line 1736
    invoke-direct {p0}, Lcom/miui/camera/Camera;->clearFocusState()V

    .line 1737
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2808
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2810
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/miui/camera/Camera;->mLocationListeners:[Lcom/miui/camera/Camera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2808
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2811
    :catch_0
    move-exception v1

    .line 2812
    const-string v2, "com.miui.camera.Camera"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2816
    :cond_0
    return-void
.end method

.method private switchCamera(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "com.miui.camera.Camera"

    .line 2927
    const-string v0, "com.miui.camera.Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swith camera to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2995
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-nez v0, :cond_0

    .line 2936
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-eq p1, v0, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideExposureZoomView()V

    .line 2945
    :cond_2
    iput-object v3, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    .line 2946
    iput-object v3, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    .line 2947
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    if-eqz v0, :cond_3

    .line 2948
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->removeAllScreens()V

    .line 2949
    iput-object v3, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    .line 2951
    :cond_3
    iput-object v3, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    .line 2954
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mGlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2955
    const-string v1, "pref_key_camera_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2956
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2959
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput p1, v0, Lcom/miui/camera/Global;->mCameraId:I

    .line 2960
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/CameraGlobal;->getLocalPrefFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/camera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    .line 2963
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 2965
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2973
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->initAll()V

    .line 2976
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J

    .line 2977
    iput v2, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    .line 2978
    iput v2, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 2980
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initializeZoom()V

    .line 2982
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateTopMiddleScreenView()V

    .line 2983
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateLayout()V

    .line 2984
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    .line 2987
    iget-object v0, p0, Lcom/miui/camera/Camera;->mReferencelineShowingView:Lcom/miui/camera/ui/ReferenceLine;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mReferenceline:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ReferenceLine;->setLineType(I)V

    .line 2988
    iget-object v0, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 2990
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_4

    .line 2991
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 2968
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "can not open camera"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2993
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    const v1, 0x7f020046

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method

.method private switchToPlaybackMode(Z)V
    .locals 10
    .parameter "reverse"

    .prologue
    .line 2678
    if-eqz p1, :cond_3

    .line 2679
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    .line 2746
    :goto_0
    return-void

    .line 2684
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 2685
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationOut:Landroid/view/animation/Animation;

    .line 2690
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2692
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2693
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2696
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 2697
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationIn:Landroid/view/animation/Animation;

    .line 2699
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2701
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2702
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2706
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/camera/Camera;->mAZ:F

    iput v0, p0, Lcom/miui/camera/Camera;->mAY:F

    iput v0, p0, Lcom/miui/camera/Camera;->mAX:F

    .line 2709
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopScreenView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2711
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    goto :goto_0

    .line 2713
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2714
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2715
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030005

    iget-object v1, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2716
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    .line 2720
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopScreenView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2723
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 2724
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationOut:Landroid/view/animation/Animation;

    .line 2726
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2728
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mControlBarScaleAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2729
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2732
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    .line 2733
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationIn:Landroid/view/animation/Animation;

    .line 2738
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2740
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mPlaybackBarTranslateAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2741
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2743
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    .line 2744
    iget v0, p0, Lcom/miui/camera/Camera;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->setOrientationIndicator(I)V

    goto/16 :goto_0
.end method

.method private switchToVideoMode()Z
    .locals 2

    .prologue
    .line 2998
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/camera/Camera;->tryToInterruptCurrentAction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2999
    :cond_0
    const/4 v0, 0x0

    .line 3005
    :goto_0
    return v0

    .line 3002
    :cond_1
    invoke-static {p0}, Lcom/miui/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 3003
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3004
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V

    .line 3005
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private tryToInterruptCurrentAction()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2837
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-eqz v0, :cond_0

    .line 2838
    invoke-direct {p0}, Lcom/miui/camera/Camera;->cancelDelaySnap()V

    .line 2839
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    move v0, v2

    .line 2854
    :goto_0
    return v0

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 2846
    goto :goto_0

    .line 2849
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_4

    .line 2850
    :cond_3
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->doFocus(Z)V

    move v0, v2

    .line 2851
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2854
    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 2481
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2482
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 2483
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2484
    .local v1, max:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2486
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const-string v7, "lensshade"

    const-string v6, "enable"

    const-string v5, "disable"

    const-string v4, "auto"

    .line 2498
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2503
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mPreviewsizeWidth:I

    if-eqz v0, :cond_1

    .line 2504
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mPreviewsizeWidth:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mPreviewsizeHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2509
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mScenemode:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2510
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mScenemode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2511
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mScenemode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2512
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 2517
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2522
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportSceneDetect:Z

    if-eqz v0, :cond_3

    .line 2523
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_scene_detect"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2524
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "scene-detect"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportLensShade:Z

    if-eqz v0, :cond_4

    .line 2532
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_lens_shade"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2533
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "lensshade"

    const-string v1, "enable"

    invoke-virtual {v0, v7, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportSkinToneEnhancement:Z

    if-eqz v0, :cond_5

    .line 2541
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_skin_tone_enhancement"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2543
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinToneEnhancement"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_jpeg_quality"

    const-string v2, "fine"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2554
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/miui/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2560
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_iso"

    const-string v2, "auto"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2561
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2562
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 2566
    :cond_6
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_13

    .line 2567
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_auto_exposure"

    const-string v2, "center-weighted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2569
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const-string v2, "auto-exposure-values"

    invoke-virtual {v1, v2}, Lcom/miui/camera/CameraGlobal;->getSupportedValues(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2571
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    .line 2582
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070007

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2585
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mAntibanding:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2586
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mAntibanding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2590
    :cond_8
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportExposure:Z

    if-eqz v0, :cond_9

    .line 2591
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2595
    :cond_9
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v0

    if-lez v0, :cond_a

    .line 2596
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mContrast:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 2600
    :cond_a
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v0

    if-lez v0, :cond_b

    .line 2601
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mSaturation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 2605
    :cond_b
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v0

    if-lez v0, :cond_c

    .line 2606
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mSharpness:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 2609
    :cond_c
    const-string v0, "auto"

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mScenemode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2611
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v1, 0x7f070001

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v0

    .line 2612
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2613
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2617
    :cond_d
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mWhitebalance:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2618
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mWhitebalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2622
    :cond_e
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2623
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2633
    :cond_f
    :goto_4
    return-void

    .line 2526
    :cond_10
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "scene-detect"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2535
    :cond_11
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "lensshade"

    const-string v1, "disable"

    invoke-virtual {v0, v7, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2546
    :cond_12
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "skinToneEnhancement"

    const-string v2, "disable"

    invoke-virtual {v0, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2574
    :cond_13
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_camera_auto_exposure"

    const-string v2, "meter-center"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2576
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAutoexposure()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2577
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposure(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2625
    :cond_14
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    .line 2626
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 2627
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const-string v1, "auto"

    iput-object v4, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    goto :goto_4

    .line 2631
    :cond_15
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    goto :goto_4
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2493
    :cond_0
    return-void
.end method

.method private updateDelaySnapTimer()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x4080

    const/high16 v6, 0x3f00

    const/high16 v1, 0x3f80

    const-wide/16 v9, 0x3e8

    .line 1949
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-nez v0, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/miui/camera/Camera;->mDelaySnapStartTime:J

    sub-long/2addr v3, v7

    .line 1952
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapValue:I

    int-to-long v7, v0

    div-long/2addr v3, v9

    sub-long v3, v7, v3

    .line 1954
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-gtz v0, :cond_3

    .line 1955
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setVisibility(I)V

    .line 1956
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    .line 1957
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_2

    .line 1958
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdSuccess:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    .line 1960
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->initiate()V

    .line 1985
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/camera/Camera;->mDelaySnapStartTime:J

    sub-long/2addr v0, v2

    rem-long/2addr v0, v9

    sub-long v0, v9, v0

    .line 1986
    iget-object v2, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1962
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_4

    .line 1963
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v7, v7, Lcom/miui/camera/CameraGlobal;->mSoundIdInProgress:I

    invoke-virtual {v0, v7}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    .line 1966
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1970
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapScaleAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 1971
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapScaleAnimation:Landroid/view/animation/Animation;

    .line 1975
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapAlphaAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    .line 1976
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapAlphaAnimation:Landroid/view/animation/Animation;

    .line 1978
    :cond_6
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1979
    iget-object v1, p0, Lcom/miui/camera/Camera;->mDelaySnapScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1980
    iget-object v1, p0, Lcom/miui/camera/Camera;->mDelaySnapAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1981
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1982
    iget-object v1, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v1, v0}, Lcom/miui/camera/ui/RotateTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private updateFlashView()V
    .locals 10

    .prologue
    const/16 v9, 0x4c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 3144
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportFlashMode:Z

    if-eqz v0, :cond_6

    .line 3145
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mScenemode:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3146
    iget-object v1, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3147
    iget-object v1, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/high16 v3, 0x7f07

    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v4, v4, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v2, v3, v4}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3149
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget-boolean v1, v1, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    if-ne v1, v8, :cond_3

    .line 3150
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070002

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3151
    if-eqz v0, :cond_2

    .line 3152
    iget-object v2, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    const/16 v3, 0xc0

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3153
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3158
    :goto_1
    iget-object v2, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3159
    iget-object v1, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3173
    :goto_2
    if-eqz v0, :cond_5

    .line 3174
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3181
    :goto_3
    return-void

    .line 3147
    :cond_1
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/high16 v3, 0x7f07

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3155
    :cond_2
    iget-object v2, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-static {v9, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3156
    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 3161
    :cond_3
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070003

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3162
    if-eqz v0, :cond_4

    .line 3163
    iget-object v2, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    const/16 v3, 0xc0

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3164
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3169
    :goto_4
    iget-object v2, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3170
    iget-object v1, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 3166
    :cond_4
    iget-object v2, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-static {v9, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3167
    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 3176
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_3

    .line 3179
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateFocusIndicator()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2322
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    if-nez v4, :cond_0

    .line 2351
    :goto_0
    return-void

    .line 2325
    :cond_0
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 2327
    .local v0, halfSize:I
    iget v4, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    if-ne v4, v5, :cond_4

    .line 2328
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFrameView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/miui/camera/Camera;->mFrameView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int v1, v4, v0

    .line 2329
    .local v1, leftMargin:I
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFrameView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/miui/camera/Camera;->mFrameView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int v3, v4, v0

    .line 2334
    .local v3, topMargin:I
    :goto_1
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2335
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v1, v4, :cond_1

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v3, v4, :cond_2

    .line 2336
    :cond_1
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2337
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2338
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4, v2}, Lcom/miui/camera/ui/FocusRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2342
    :cond_2
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v5, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v5, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v4, v5, :cond_5

    .line 2343
    :cond_3
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->showStart()V

    goto :goto_0

    .line 2331
    .end local v1           #leftMargin:I
    .end local v2           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #topMargin:I
    :cond_4
    iget v4, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    sub-int v1, v4, v0

    .line 2332
    .restart local v1       #leftMargin:I
    iget v4, p0, Lcom/miui/camera/Camera;->mTouchFocusPointY:I

    sub-int v3, v4, v0

    .restart local v3       #topMargin:I
    goto :goto_1

    .line 2344
    .restart local v2       #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v5, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v4, v5, :cond_6

    .line 2345
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->showSuccess()V

    goto :goto_0

    .line 2346
    :cond_6
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v5, Lcom/miui/camera/Constants$FOCUS_STATE;->FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v4, v5, :cond_7

    .line 2347
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->showFail()V

    goto :goto_0

    .line 2349
    :cond_7
    iget-object v4, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v4}, Lcom/miui/camera/ui/FocusRectangle;->clear()V

    goto/16 :goto_0
.end method

.method private updateLastImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1629
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "update last image"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/miui/camera/Camera;->dataLocation()Lcom/miui/camera/ImageManager$DataLocation;

    move-result-object v1

    sget-object v2, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/miui/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/miui/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/miui/camera/gallery/IImageList;

    move-result-object v0

    .line 1633
    invoke-interface {v0}, Lcom/miui/camera/gallery/IImageList;->getCount()I

    move-result v1

    .line 1634
    if-lez v1, :cond_0

    .line 1635
    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Lcom/miui/camera/gallery/IImageList;->getImageAt(I)Lcom/miui/camera/gallery/IImage;

    move-result-object v1

    .line 1636
    invoke-interface {v1}, Lcom/miui/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 1637
    iget-object v3, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-interface {v1}, Lcom/miui/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1641
    :goto_0
    invoke-interface {v0}, Lcom/miui/camera/gallery/IImageList;->close()V

    .line 1642
    return-void

    .line 1639
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v1, v4, v4}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3303
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    if-nez v0, :cond_0

    .line 3305
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateLayoutOld()V

    .line 3398
    :goto_0
    return-void

    .line 3309
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    .line 3312
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mBottomBarBg:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 3314
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3315
    iget-object v0, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mBottomBarBg:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 3318
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopScreenView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mTopBarBg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3319
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget-boolean v0, v0, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    if-eqz v0, :cond_4

    .line 3320
    iget-object v0, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3321
    iget-object v0, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3327
    :goto_1
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3328
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3329
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v2, v2, Lcom/miui/camera/LayoutSetting;->mPreviewWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3330
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v2, v2, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3331
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v2, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3332
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3333
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3334
    invoke-direct {p0, v1}, Lcom/miui/camera/Camera;->initializeSnapShrinkAnimation(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 3337
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3338
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3339
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v0, v0, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v3, v3, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v3, v3, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    if-le v0, v3, :cond_5

    .line 3340
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3341
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v0, v0, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v3, v3, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v3, v3, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    sub-int v3, v0, v3

    .line 3343
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3344
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3345
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v4, v4, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3346
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3348
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3349
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    sub-int v1, v0, v1

    .line 3354
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3355
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3356
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3357
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3364
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 3365
    iget-object v0, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3366
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3367
    iget-object v1, p0, Lcom/miui/camera/Camera;->mExposureZoomView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3370
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 3371
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3372
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3373
    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3374
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3377
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFlashView()V

    .line 3380
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mFocusRectangleLength:I

    div-int/lit8 v0, v0, 0x2

    .line 3381
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    const/4 v3, 0x2

    aput v0, v2, v3

    aput v0, v1, v5

    .line 3382
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    sub-int/2addr v0, v1

    .line 3384
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    if-ge v1, v0, :cond_6

    .line 3385
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    add-int/lit8 v0, v0, 0x14

    aput v0, v1, v6

    .line 3390
    :goto_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v0, v0, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    if-ge v0, v1, :cond_8

    .line 3391
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    add-int/lit8 v1, v1, 0x14

    aput v1, v0, v7

    .line 3397
    :goto_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setMargins([I)V

    goto/16 :goto_0

    .line 3323
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3324
    iget-object v0, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3359
    :cond_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3360
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3387
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget-boolean v2, v2, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    if-eqz v2, :cond_7

    move v2, v5

    :goto_5
    add-int/2addr v1, v2

    aput v1, v0, v6

    goto :goto_3

    :cond_7
    const/16 v2, 0x14

    goto :goto_5

    .line 3393
    :cond_8
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/CameraGlobal;->mLayoutSetting:Lcom/miui/camera/LayoutSetting;

    iget v1, v1, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    add-int/lit8 v1, v1, 0x14

    aput v1, v0, v7

    goto :goto_4
.end method

.method private updateLayoutOld()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3262
    const v4, 0x7f0d0002

    invoke-virtual {p0, v4}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3263
    .local v0, frame:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3265
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v4, v4, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    if-eqz v4, :cond_1

    .line 3266
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3267
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3278
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3279
    iget-object v4, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3282
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v4, v4, Lcom/miui/camera/CameraGlobal;->mFocusRectangleLength:I

    div-int/lit8 v2, v4, 0x2

    .line 3283
    .local v2, halfLen:I
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    aput v2, v4, v6

    .line 3284
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    const/4 v5, 0x2

    aput v2, v4, v5

    .line 3285
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v5, v5, Lcom/miui/camera/CameraGlobal;->mIsFullScreen:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, 0xa

    :goto_1
    aput v5, v4, v7

    .line 3288
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v5, Lcom/miui/camera/Constants$DEVICE;->SAMSUNG_GALAXYS:Lcom/miui/camera/Constants$DEVICE;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v4, v4, Lcom/miui/camera/Global;->mIsFFC:Z

    if-eqz v4, :cond_3

    .line 3290
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v5, v5, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    aget v5, v5, v7

    aput v5, v4, v8

    .line 3296
    :goto_2
    iget-object v4, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v5, v5, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    invoke-virtual {v4, v5}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setMargins([I)V

    .line 3297
    return-void

    .line 3269
    .end local v2           #halfLen:I
    :cond_1
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v4, v4, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3270
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v5, v5, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v5, v5, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    div-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3273
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v1, v4, v5

    .line 3274
    .local v1, gap:I
    if-gez v1, :cond_0

    .line 3275
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 3285
    .end local v1           #gap:I
    .restart local v2       #halfLen:I
    :cond_2
    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v5, v5, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x14

    goto :goto_1

    .line 3292
    :cond_3
    iget-object v4, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v5, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v5, v5, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    add-int/lit8 v5, v5, 0x14

    aput v5, v4, v8

    goto :goto_2
.end method

.method private updateThumbnailButton()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/miui/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/camera/Camera;->mPicturesRemaining:I

    if-ltz v0, :cond_0

    .line 1507
    new-instance v0, Lcom/miui/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/miui/camera/Camera$5;-><init>(Lcom/miui/camera/Camera;)V

    invoke-virtual {v0}, Lcom/miui/camera/Camera$5;->start()V

    .line 1513
    :cond_0
    return-void
.end method

.method private updateTopMiddleScreenView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3184
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    if-nez v0, :cond_0

    .line 3185
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3189
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_1

    .line 3190
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3194
    :goto_1
    return-void

    .line 3187
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070006

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3192
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    const v1, 0x7f020046

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private viewLastImage()V
    .locals 4

    .prologue
    const-string v3, "com.miui.camera.Camera"

    const-string v0, "android.intent.action.VIEW"

    .line 2750
    invoke-direct {p0}, Lcom/miui/camera/Camera;->tryToInterruptCurrentAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2768
    :goto_0
    return-void

    .line 2752
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/miui/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2754
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/miui/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2755
    const-string v1, "com.android.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2756
    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2757
    :catch_0
    move-exception v0

    .line 2759
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/miui/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2760
    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2761
    :catch_1
    move-exception v0

    .line 2762
    const-string v1, "com.miui.camera.Camera"

    const-string v1, "review image fail"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2766
    :cond_1
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "Can\'t view last image."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1238
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/miui/camera/Camera;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/miui/camera/Camera;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1246
    :goto_0
    return v0

    .line 1242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getZoomRatios()[F
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1545
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    .line 1546
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1548
    iget v0, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 1549
    const/high16 v1, 0x3f80

    .line 1550
    array-length v2, v0

    move v8, v3

    move v3, v1

    move v1, v8

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1552
    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v5, v3

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v5, 0x4

    invoke-virtual {v4, v7, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v0, v1

    .line 1553
    const v4, 0x3e4ccccd

    add-float/2addr v3, v4

    .line 1550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1556
    :cond_0
    if-eqz v0, :cond_3

    .line 1557
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    .line 1558
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1559
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    aput v4, v1, v3

    .line 1558
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1567
    :cond_2
    :goto_2
    return-object v0

    .line 1565
    :cond_3
    new-array v0, v7, [F

    .line 1566
    const/4 v1, 0x0

    aput v1, v0, v3

    goto :goto_2
.end method

.method protected initializeTouchFocus()V
    .locals 3

    .prologue
    const-string v2, "com.miui.camera.Camera"

    .line 2256
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2257
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "TouchFocus not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :goto_0
    return-void

    .line 2261
    :cond_0
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "initializeTouchFocus"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->enableTouchAEC(Z)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1285
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1087
    packed-switch p1, :pswitch_data_0

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1089
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1090
    if-eqz p3, :cond_1

    .line 1091
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1092
    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1096
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/miui/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1097
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V

    .line 1099
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1106
    :pswitch_1
    if-eqz p3, :cond_2

    const-string v0, "com.miui.camera.Restore"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    invoke-direct {p0}, Lcom/miui/camera/Camera;->onPreferenceRestored()V

    goto :goto_0

    .line 1111
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->onPreferenceChanged()V

    .line 1112
    if-eqz p3, :cond_0

    const-string v0, "com.miui.camera.ShowConSatShp"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showConSatShpView()V

    goto :goto_0

    .line 1087
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1121
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    invoke-direct {p0, v1}, Lcom/miui/camera/Camera;->hideColoreffectView(I)V

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    invoke-direct {p0, v1}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideConSatShpView()V

    goto :goto_0

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-eqz v0, :cond_4

    .line 1128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    .line 1129
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    goto :goto_0

    .line 1130
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-eqz v0, :cond_5

    .line 1131
    invoke-direct {p0}, Lcom/miui/camera/Camera;->cancelDelaySnap()V

    .line 1132
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    goto :goto_0

    .line 1133
    :cond_5
    invoke-direct {p0}, Lcom/miui/camera/Camera;->tryToInterruptCurrentAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1280
    :goto_0
    return-void

    .line 1254
    :sswitch_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hidePostCaptureAlert()V

    .line 1255
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    goto :goto_0

    .line 1258
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->viewLastImage()V

    goto :goto_0

    .line 1261
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->doAttach()V

    goto :goto_0

    .line 1264
    :sswitch_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->doCancel()V

    goto :goto_0

    .line 1267
    :sswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    .line 1268
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    goto :goto_0

    .line 1271
    :sswitch_5
    invoke-direct {p0}, Lcom/miui/camera/Camera;->deleteLastImage()V

    goto :goto_0

    .line 1274
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    const/4 v1, 0x0

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1277
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/miui/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1252
    :sswitch_data_0
    .sparse-switch
        0x7f0d0013 -> :sswitch_5
        0x7f0d0014 -> :sswitch_4
        0x7f0d0015 -> :sswitch_6
        0x7f0d002c -> :sswitch_2
        0x7f0d002e -> :sswitch_0
        0x7f0d002f -> :sswitch_3
        0x7f0d0030 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickAntiShakeIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    if-eqz v0, :cond_0

    .line 3918
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableAntiShake()V

    .line 3924
    :goto_0
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 3925
    return-void

    .line 3920
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->enableAntiShake()V

    goto :goto_0
.end method

.method public onClickBurstIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_0

    .line 3969
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableBurst()V

    .line 3974
    :goto_0
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 3975
    return-void

    .line 3971
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->enableBurst()V

    goto :goto_0
.end method

.method public onClickColorEffectIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4005
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4011
    :goto_0
    return-void

    .line 4006
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4007
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideColoreffectView(I)V

    goto :goto_0

    .line 4009
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showColoreffectView()V

    goto :goto_0
.end method

.method public onClickColorEffectItem(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4111
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4113
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    .line 4114
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4115
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, p0, Lcom/miui/camera/Camera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    .line 4118
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/Camera;->drawColorEffectIcon(Lcom/miui/camera/Global;I)V

    .line 4120
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateTopMiddleScreenView()V

    .line 4123
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4124
    const-string v1, "pref_key_camera_color_effect"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4128
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070007

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mColoreffect:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4129
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 4130
    return-void
.end method

.method public onClickDelaySnapIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v0, :cond_0

    .line 4134
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableDelaySnap()V

    .line 4140
    :goto_0
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 4141
    return-void

    .line 4136
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->enableDelaySnap()V

    goto :goto_0
.end method

.method public onClickDelaysnapTimer(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f07001b

    .line 4190
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    .line 4191
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 4192
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    .line 4194
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    invoke-virtual {v1, v3, v2}, Lcom/miui/camera/CameraGlobal;->getInt(II)I

    move-result v1

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnapValue:I

    .line 4195
    iget-object v0, p0, Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mDelaysnapIndex:I

    invoke-virtual {v1, v3, v2}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4196
    return-void
.end method

.method public onClickFlashmode(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-eqz v0, :cond_0

    .line 3755
    :goto_0
    return-void

    .line 3742
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    .line 3745
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3746
    const-string v1, "pref_key_camera_flash_mode"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3747
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3750
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const v2, 0x7f070001

    iget-object v3, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v3, v3, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3751
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 3754
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateFlashView()V

    goto :goto_0
.end method

.method public onClickScreenShutterIcon(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 4199
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_0

    .line 4200
    invoke-direct {p0}, Lcom/miui/camera/Camera;->disableScreenShutter()V

    .line 4206
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4207
    const-string v1, "pref_key_camera_screen_shutter"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4210
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 4211
    return-void

    .line 4202
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->enableScreenShutter()V

    goto :goto_0
.end method

.method public onClickSettingIcon(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 4260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/camera/ui/CameraPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4261
    .local v0, cameraSettingIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/camera/CameraHolder;->keep()V

    .line 4262
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4263
    return-void
.end method

.method public onClickSettingPanelIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3762
    invoke-direct {p0}, Lcom/miui/camera/Camera;->tryToInterruptCurrentAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3769
    :goto_0
    return-void

    .line 3764
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3765
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    goto :goto_0

    .line 3767
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showSettingPanel()V

    goto :goto_0
.end method

.method public onClickSoundIcon(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4237
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    .line 4240
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4241
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v1, :cond_1

    .line 4243
    const v1, 0x7f02005f

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4248
    :goto_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateTopMiddleScreenView()V

    .line 4251
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4252
    const-string v1, "pref_key_camera_sound"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mSound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4256
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 4257
    return-void

    :cond_0
    move v1, v2

    .line 4237
    goto :goto_0

    .line 4246
    :cond_1
    const v1, 0x7f02005e

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method public onClickSwitchCameraIcon(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3758
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->switchCamera(I)V

    .line 3759
    return-void
.end method

.method public onClickSwitchToVideoIcon(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 3913
    invoke-direct {p0}, Lcom/miui/camera/Camera;->switchToVideoMode()Z

    .line 3914
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f0d002b

    const/16 v12, 0xc

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "com.miui.camera.Camera"

    .line 747
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->onCreate(Landroid/os/Bundle;)V

    .line 749
    const-string v7, "com.miui.camera.Camera"

    const-string v7, "onCreate"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-static {p0}, Lcom/miui/camera/CameraGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/CameraGlobal;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    .line 752
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v7}, Lcom/miui/camera/CameraGlobal;->upgradePreferences()V

    .line 754
    :try_start_0
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v7}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v7}, Lcom/miui/camera/CameraGlobal;->initAll()V

    .line 765
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->setContentView(I)V

    .line 767
    const v7, 0x7f0d0002

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mFrameView:Landroid/view/ViewGroup;

    .line 768
    const v7, 0x7f0d0003

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceView;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 769
    const v7, 0x7f0d0008

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    .line 770
    const v7, 0x7f0d0004

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/ui/ReferenceLine;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mReferencelineShowingView:Lcom/miui/camera/ui/ReferenceLine;

    .line 771
    iget-object v7, p0, Lcom/miui/camera/Camera;->mReferencelineShowingView:Lcom/miui/camera/ui/ReferenceLine;

    iget-object v8, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v8, v8, Lcom/miui/camera/CameraGlobal;->mReferenceline:I

    invoke-virtual {v7, v8}, Lcom/miui/camera/ui/ReferenceLine;->setLineType(I)V

    .line 772
    const v7, 0x7f0d0007

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/ui/ScreenShutterIndicator;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    .line 773
    iget-object v7, p0, Lcom/miui/camera/Camera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v8, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v8, v8, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    invoke-virtual {v7, v8}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 774
    const v7, 0x7f0d0009

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    .line 775
    iget-object v7, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/camera/BaseCamera;->mToastTextView:Landroid/widget/TextView;

    .line 777
    const v7, 0x7f0d0006

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/ui/FocusRectangle;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    .line 778
    iget-object v7, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v7, v10, v10}, Lcom/miui/camera/ui/FocusRectangle;->measure(II)V

    .line 779
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v8, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v8}, Lcom/miui/camera/ui/FocusRectangle;->getMeasuredWidth()I

    move-result v8

    iput v8, v7, Lcom/miui/camera/CameraGlobal;->mFocusRectangleLength:I

    .line 783
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v7, v7, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "log"

    const-string v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 784
    .local v5, strLog:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 785
    .local v6, strLogArray:[Ljava/lang/String;
    array-length v7, v6

    if-lt v12, v7, :cond_2

    .line 786
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_1

    .line 787
    iget-object v7, p0, Lcom/miui/camera/Camera;->mLog:[I

    aget-object v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v2

    .line 786
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v2           #i:I
    .end local v5           #strLog:Ljava/lang/String;
    .end local v6           #strLogArray:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 756
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v7}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 757
    const-string v7, "com.miui.camera.Camera"

    const-string v7, "can not open camera"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const v7, 0x7f0b0001

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 760
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->finish()V

    .line 900
    .end local v0           #e:Lcom/miui/camera/CameraHardwareException;
    :cond_0
    :goto_1
    return-void

    .line 788
    .restart local v2       #i:I
    .restart local v5       #strLog:Ljava/lang/String;
    .restart local v6       #strLogArray:[Ljava/lang/String;
    :cond_1
    array-length v2, v6

    :goto_2
    if-ge v2, v12, :cond_2

    .line 789
    iget-object v7, p0, Lcom/miui/camera/Camera;->mLog:[I

    aput v10, v7, v2

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 794
    .end local v2           #i:I
    :cond_2
    iput v10, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    .line 797
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initializeZoom()V

    .line 803
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/miui/camera/Camera$2;

    invoke-direct {v7, p0}, Lcom/miui/camera/Camera$2;-><init>(Lcom/miui/camera/Camera;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 818
    .local v4, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 823
    iget-object v7, p0, Lcom/miui/camera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 824
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 825
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 828
    const-string v7, "sensor"

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 829
    iget-object v7, p0, Lcom/miui/camera/Camera;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v7, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/camera/Camera;->mAccelerometer:Landroid/hardware/Sensor;

    .line 831
    invoke-direct {p0}, Lcom/miui/camera/Camera;->isImageCaptureIntent()Z

    move-result v7

    iput-boolean v7, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    .line 832
    iget-boolean v7, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v7, :cond_3

    .line 833
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setupCaptureParams()V

    .line 836
    :cond_3
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 839
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/high16 v7, 0x7f0d

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/ui/CameraFrameLayout;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    .line 840
    iget-boolean v7, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v7, :cond_4

    .line 841
    const v7, 0x7f03000a

    iget-object v8, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 842
    invoke-virtual {p0, v13}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    .line 843
    iget-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    const v8, 0x7f0d002f

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    iget-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    const v8, 0x7f0d002e

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    const v8, 0x7f0d002c

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    :goto_3
    const v7, 0x7f03000f

    iget-object v8, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 856
    iget-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    const v8, 0x7f0d0034

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/camera/ui/ShutterButton;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    .line 857
    iget-object v7, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v7, p0}, Lcom/miui/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 858
    iget-object v7, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v7, v10}, Lcom/miui/camera/ui/ShutterButton;->setVisibility(I)V

    .line 864
    iget-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10, v10}, Landroid/widget/FrameLayout;->measure(II)V

    .line 865
    iget-object v7, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v8, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    iput v8, v7, Lcom/miui/camera/CameraGlobal;->mControlBarHeight:I

    .line 868
    const v7, 0x7f030009

    iget-object v8, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 869
    const v7, 0x7f0d0026

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mTopScreenView:Landroid/view/ViewGroup;

    .line 871
    const v7, 0x7f0d0027

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mFlashView:Landroid/widget/TextView;

    .line 873
    iget-object v7, p0, Lcom/miui/camera/Camera;->mTopScreenView:Landroid/view/ViewGroup;

    const v8, 0x7f0d0028

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    .line 874
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateTopMiddleScreenView()V

    .line 876
    const v7, 0x7f0d0029

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    .line 877
    iget-object v7, p0, Lcom/miui/camera/Camera;->mCameraSwitchView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v8, v8, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-le v8, v11, :cond_5

    move v8, v10

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 880
    const v7, 0x7f030006

    iget-object v8, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 881
    const v7, 0x7f0d0016

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    .line 884
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initializeSnapAnimView()V

    .line 887
    invoke-direct {p0}, Lcom/miui/camera/Camera;->updateLayout()V

    .line 891
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 892
    iget-boolean v7, p0, Lcom/miui/camera/Camera;->mStartPreviewFail:Z

    if-eqz v7, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showCameraErrorAndFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 896
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 847
    :cond_4
    const v7, 0x7f03000b

    iget-object v8, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 848
    invoke-virtual {p0, v13}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/miui/camera/Camera;->mControlBar:Landroid/widget/FrameLayout;

    .line 850
    const v7, 0x7f030005

    iget-object v8, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 851
    const v7, 0x7f0d0012

    invoke-virtual {p0, v7}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    .line 852
    iget-object v7, p0, Lcom/miui/camera/Camera;->mPlaybackBar:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 877
    :cond_5
    const/4 v8, 0x4

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1081
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onDestroy()V

    .line 1083
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1140
    sparse-switch p1, :sswitch_data_0

    .line 1197
    invoke-super {p0, p1, p2}, Lcom/miui/camera/BaseCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1143
    :sswitch_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-eqz v0, :cond_0

    .line 1144
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    .line 1145
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    move v0, v2

    .line 1146
    goto :goto_0

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    invoke-direct {p0, v1}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    move v0, v2

    .line 1149
    goto :goto_0

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1151
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideConSatShpView()V

    move v0, v2

    .line 1152
    goto :goto_0

    .line 1155
    :cond_2
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1156
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 1157
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->doFocus(Z)V

    :cond_3
    move v0, v2

    .line 1159
    goto :goto_0

    .line 1161
    :sswitch_1
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1162
    invoke-direct {p0}, Lcom/miui/camera/Camera;->doSnap()V

    :cond_4
    move v0, v2

    .line 1164
    goto :goto_0

    .line 1168
    :sswitch_2
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 1172
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 1173
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->doFocus(Z)V

    .line 1174
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1175
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->requestFocusFromTouch()Z

    .line 1179
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/miui/camera/ui/ShutterButton;->setPressed(Z)V

    :cond_5
    move v0, v2

    .line 1181
    goto :goto_0

    .line 1177
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 1183
    :sswitch_3
    iget v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 1184
    iget v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    if-gez v0, :cond_7

    .line 1185
    iput v1, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 1186
    :cond_7
    invoke-direct {p0}, Lcom/miui/camera/Camera;->changeZoom()Z

    move v0, v2

    .line 1187
    goto/16 :goto_0

    .line 1189
    :sswitch_4
    iget v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 1190
    iget v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    iget v1, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    if-le v0, v1, :cond_8

    .line 1191
    iget v0, p0, Lcom/miui/camera/Camera;->mZoomMax:I

    iput v0, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 1193
    :cond_8
    invoke-direct {p0}, Lcom/miui/camera/Camera;->changeZoom()Z

    move v0, v2

    .line 1194
    goto/16 :goto_0

    .line 1140
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1202
    sparse-switch p1, :sswitch_data_0

    .line 1213
    invoke-super {p0, p1, p2}, Lcom/miui/camera/BaseCamera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1204
    :sswitch_0
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 1205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->doFocus(Z)V

    :cond_0
    move v0, v1

    .line 1207
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 1210
    goto :goto_0

    .line 1202
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 994
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/Global;->mPausing:Z

    .line 999
    invoke-direct {p0}, Lcom/miui/camera/Camera;->tryToInterruptCurrentAction()Z

    .line 1000
    invoke-direct {p0}, Lcom/miui/camera/Camera;->stopPreview()V

    .line 1003
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->closeCamera()V

    .line 1004
    invoke-direct {p0}, Lcom/miui/camera/Camera;->resetScreenOn()V

    .line 1006
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1014
    :cond_1
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/miui/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1016
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hidePostCaptureAlert()V

    .line 1019
    :cond_2
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/miui/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/Camera;->mDidRegister:Z

    .line 1023
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->stopReceivingLocationUpdates()V

    .line 1027
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    if-eqz v0, :cond_4

    .line 1028
    iget-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    #calls: Lcom/miui/camera/Camera$ImageCapture;->clearLastData()V
    invoke-static {v0}, Lcom/miui/camera/Camera$ImageCapture;->access$5900(Lcom/miui/camera/Camera$ImageCapture;)V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    .line 1033
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mIsConSatShpChanged:Z

    if-eqz v0, :cond_5

    .line 1038
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1039
    const-string v1, "pref_key_camera_contrast"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/Global;->mContrast:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1040
    const-string v1, "pref_key_camera_saturation"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/Global;->mSaturation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1041
    const-string v1, "pref_key_camera_sharpness"

    iget-object v2, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v2, v2, Lcom/miui/camera/Global;->mSharpness:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1042
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1045
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->releaseSoundPool()V

    .line 1047
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onPause()V

    .line 1048
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 1218
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1220
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1227
    :goto_0
    return v0

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera;->tryToInterruptCurrentAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->onClickSettingPanelIcon(Landroid/view/View;)V

    :cond_1
    move v0, v1

    .line 1227
    goto :goto_0
.end method

.method public onProgressChanged(Lcom/miui/camera/ui/VerticalSeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x1388

    const/16 v2, 0x9

    const/16 v1, 0xf

    .line 3439
    invoke-virtual {p1}, Lcom/miui/camera/ui/VerticalSeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3526
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3447
    :pswitch_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

    if-ne v0, v1, :cond_2

    .line 3449
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 3451
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    .line 3452
    iget v0, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 3453
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/miui/camera/Camera;->mExposureValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3454
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 3457
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3458
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3460
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3470
    :pswitch_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

    if-ne v0, v1, :cond_6

    .line 3472
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 3474
    :cond_6
    iget v0, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    if-eq p2, v0, :cond_7

    .line 3475
    iput p2, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 3476
    invoke-direct {p0}, Lcom/miui/camera/Camera;->changeZoom()Z

    .line 3478
    :cond_7
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3479
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3481
    :cond_8
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-nez v0, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3487
    :pswitch_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mContrast:I

    if-eq p2, v0, :cond_9

    .line 3488
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput p2, v0, Lcom/miui/camera/Global;->mContrast:I

    .line 3489
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v5, v0, Lcom/miui/camera/Global;->mIsConSatShpChanged:Z

    .line 3490
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 3491
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 3493
    :cond_9
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3494
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3496
    :cond_a
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3500
    :pswitch_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mSaturation:I

    if-eq p2, v0, :cond_b

    .line 3501
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput p2, v0, Lcom/miui/camera/Global;->mSaturation:I

    .line 3502
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v5, v0, Lcom/miui/camera/Global;->mIsConSatShpChanged:Z

    .line 3503
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 3504
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 3506
    :cond_b
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3507
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3509
    :cond_c
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3513
    :pswitch_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mSharpness:I

    if-eq p2, v0, :cond_d

    .line 3514
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput p2, v0, Lcom/miui/camera/Global;->mSharpness:I

    .line 3515
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v5, v0, Lcom/miui/camera/Global;->mIsConSatShpChanged:Z

    .line 3516
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 3517
    invoke-direct {p0}, Lcom/miui/camera/Camera;->setCameraParameters()V

    .line 3519
    :cond_d
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3520
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3522
    :cond_e
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3439
    :pswitch_data_0
    .packed-switch 0x7f0d000b
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 910
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onResume()V

    .line 913
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v3, v0, Lcom/miui/camera/Global;->mPausing:Z

    .line 914
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v3, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    .line 915
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J

    .line 916
    iput v3, p0, Lcom/miui/camera/Camera;->mZoomValue:I

    .line 917
    iput v3, p0, Lcom/miui/camera/Camera;->mTargetZoomValue:I

    .line 918
    new-instance v0, Lcom/miui/camera/Camera$ImageCapture;

    invoke-direct {v0, p0, v4}, Lcom/miui/camera/Camera$ImageCapture;-><init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V

    iput-object v0, p0, Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;

    .line 922
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/miui/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 924
    const v1, 0x7f030006

    iget-object v2, p0, Lcom/miui/camera/Camera;->mRootView:Lcom/miui/camera/ui/CameraFrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 925
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTiming:Z

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->clearAnimation()V

    .line 930
    iget-object v0, p0, Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 931
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v3, v0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTiming:Z

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 944
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/CameraGlobal;->getLocalPrefFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/miui/camera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    .line 949
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-eqz v0, :cond_4

    .line 950
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V

    .line 952
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 953
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 957
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 958
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSnapAnimView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 962
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mStartPreviewFail:Z

    if-nez v0, :cond_7

    .line 964
    :try_start_1
    invoke-direct {p0}, Lcom/miui/camera/Camera;->startPreview()V
    :try_end_1
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_1

    .line 971
    :cond_7
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_8

    .line 974
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_a

    .line 975
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 982
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/camera/Camera;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_9

    .line 983
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/camera/Camera;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 987
    :cond_9
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/CameraGlobal;->initSoundPool()V

    .line 989
    invoke-direct {p0}, Lcom/miui/camera/Camera;->keepScreenOnAwhile()V

    .line 990
    :goto_1
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showCameraErrorAndFinish()V

    goto :goto_1

    .line 965
    :catch_1
    move-exception v0

    .line 966
    invoke-direct {p0}, Lcom/miui/camera/Camera;->showCameraErrorAndFinish()V

    goto :goto_1

    .line 977
    :cond_a
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const-wide/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 1293
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPreviewing:Z

    if-nez v0, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/miui/camera/Camera;->mSensorEventTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1301
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/miui/camera/Camera;->mSensorEventTimestamp:J

    .line 1302
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget v1, p0, Lcom/miui/camera/Camera;->mAX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    iget v3, p0, Lcom/miui/camera/Camera;->mAY:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    iget v3, p0, Lcom/miui/camera/Camera;->mAZ:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/camera/Camera;->mAccelerometerGap:D

    .line 1305
    iget-wide v0, p0, Lcom/miui/camera/Camera;->mAccelerometerGap:D

    const-wide v2, 0x3fe999999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 1306
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDeviceStable:Z

    if-eqz v0, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v4, v0, Lcom/miui/camera/CameraGlobal;->mDeviceStable:Z

    .line 1308
    iput v4, p0, Lcom/miui/camera/Camera;->mAccelerometerTag:I

    .line 1309
    invoke-direct {p0}, Lcom/miui/camera/Camera;->deviceBeginMoving()V

    .line 1326
    :cond_2
    :goto_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iput v0, p0, Lcom/miui/camera/Camera;->mAX:F

    .line 1327
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/miui/camera/Camera;->mAY:F

    .line 1328
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iput v0, p0, Lcom/miui/camera/Camera;->mAZ:F

    goto :goto_0

    .line 1311
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->deviceKeepMoving()V

    goto :goto_1

    .line 1314
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDeviceStable:Z

    if-nez v0, :cond_5

    .line 1315
    iget v0, p0, Lcom/miui/camera/Camera;->mAccelerometerTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/camera/Camera;->mAccelerometerTag:I

    .line 1316
    iget v0, p0, Lcom/miui/camera/Camera;->mAccelerometerTag:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v7, v0, Lcom/miui/camera/CameraGlobal;->mDeviceStable:Z

    .line 1318
    invoke-direct {p0}, Lcom/miui/camera/Camera;->deviceBecomeStable()V

    goto :goto_1

    .line 1321
    :cond_5
    invoke-direct {p0}, Lcom/miui/camera/Camera;->deviceKeepStable()V

    goto :goto_1
.end method

.method public onShutterButtonClick(Lcom/miui/camera/ui/ShutterButton;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4329
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "shutter button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_0

    .line 4348
    :goto_0
    return-void

    .line 4335
    :cond_0
    invoke-virtual {p1}, Lcom/miui/camera/ui/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4337
    :pswitch_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_1

    .line 4338
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    goto :goto_0

    .line 4339
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4340
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    goto :goto_0

    .line 4341
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4342
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideConSatShpView()V

    goto :goto_0

    .line 4344
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/Camera;->doSnap()V

    goto :goto_0

    .line 4335
    :pswitch_data_0
    .packed-switch 0x7f0d0034
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/miui/camera/ui/ShutterButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4267
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "shutter button focused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_1

    .line 4326
    :cond_0
    :goto_0
    return-void

    .line 4272
    :cond_1
    if-nez p2, :cond_3

    .line 4273
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_2

    .line 4274
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    goto :goto_0

    .line 4276
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->doFocus(Z)V

    goto :goto_0

    .line 4284
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_5

    .line 4285
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iput-boolean v3, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    .line 4286
    iput v2, p0, Lcom/miui/camera/Camera;->mBurstCount:I

    .line 4288
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    .line 4289
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportFocusMode:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/miui/camera/Camera;->doSnap()V

    .line 4293
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_6

    .line 4294
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;

    invoke-virtual {v0}, Lcom/miui/camera/ui/FocusRectangle;->showSuccess()V

    .line 4295
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4296
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_0

    .line 4297
    invoke-direct {p0}, Lcom/miui/camera/Camera;->doSnap()V

    goto :goto_0

    .line 4302
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    if-eq v0, v1, :cond_7

    .line 4303
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    goto :goto_0

    .line 4307
    :cond_7
    iget v0, p0, Lcom/miui/camera/Camera;->mTouchFocusPointX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 4308
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->enableTouchAEC(Z)V

    .line 4309
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->TOUCH:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 4310
    invoke-direct {p0, v3}, Lcom/miui/camera/Camera;->doFocus(Z)V

    goto :goto_0

    .line 4314
    :cond_8
    invoke-virtual {p1}, Lcom/miui/camera/ui/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4316
    :pswitch_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4317
    invoke-direct {p0, v2}, Lcom/miui/camera/Camera;->hideSettingPanel(I)V

    goto :goto_0

    .line 4318
    :cond_9
    iget-object v0, p0, Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4319
    invoke-direct {p0}, Lcom/miui/camera/Camera;->hideConSatShpView()V

    goto/16 :goto_0

    .line 4321
    :cond_a
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    iput-object v0, p0, Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 4322
    invoke-direct {p0, p2}, Lcom/miui/camera/Camera;->doFocus(Z)V

    goto/16 :goto_0

    .line 4314
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0034
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 904
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onStart()V

    .line 905
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method public onStartTrackingTouch(Lcom/miui/camera/ui/VerticalSeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3436
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.miui.camera.Camera"

    .line 1052
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "onStop"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLog:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1057
    const-string v0, ""

    .line 1059
    const/4 v1, 0x1

    move-object v2, v0

    move v0, v1

    move v1, v4

    :goto_0
    iget-object v3, p0, Lcom/miui/camera/Camera;->mLog:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/camera/Camera;->mLog:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1061
    iget-object v3, p0, Lcom/miui/camera/Camera;->mLog:[I

    aget v3, v3, v0

    add-int/2addr v1, v3

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera;->mLog:[I

    aget v0, v0, v4

    sub-int v0, v1, v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v1, "com.miui.camera.Camera"

    invoke-static {v5, v0}, Landroid/util/Jlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :goto_1
    iget-object v1, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1071
    const-string v2, "log"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1072
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1076
    :cond_1
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onStop()V

    .line 1077
    return-void

    .line 1067
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/camera/Camera;->mLog:[I

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onStopTrackingTouch(Lcom/miui/camera/ui/VerticalSeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3432
    return-void
.end method

.method public onSwitchChanged(Lcom/miui/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 3009
    if-nez p2, :cond_0

    .line 3010
    invoke-direct {p0}, Lcom/miui/camera/Camera;->switchToVideoMode()Z

    move-result v0

    .line 3012
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1232
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onUserInteraction()V

    .line 1233
    invoke-direct {p0}, Lcom/miui/camera/Camera;->keepScreenOnAwhile()V

    .line 1234
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1379
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1380
    const-string v0, "com.miui.camera.Camera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iput-object p1, p0, Lcom/miui/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1392
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lcom/miui/camera/Camera;->restartPreview()V

    .line 1407
    iget-boolean v0, p0, Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1410
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1415
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/miui/camera/Camera;->stopPreview()V

    .line 1419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1420
    return-void
.end method
