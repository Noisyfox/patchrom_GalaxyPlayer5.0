.class public Lcom/miui/camera/VideoCamera;
.super Lcom/miui/camera/BaseCamera;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/camera/Switcher$OnSwitchListener;
.implements Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/VideoCamera$VideoGestureListener;,
        Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/miui/camera/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "com.miui.camera.VideoCamera"

.field private static final UPDATE_RECORD_TIME:I = 0x5


# instance fields
.field private mCameraVideoFilename:Ljava/lang/String;

.field private mColoreffectView:Landroid/widget/ScreenView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlBar:Landroid/widget/FrameLayout;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mFlashView:Landroid/widget/TextView;

.field private mG:Lcom/miui/camera/VideoGlobal;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVideoCaptureIntent:Z

.field private mLastOrientation:I

.field private mLastPictureButton:Landroid/widget/ImageView;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mOrientationHint:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

.field private mSelectedColoreffectItem:Landroid/widget/TextView;

.field private mSettingPanel:Landroid/view/ViewGroup;

.field private mShutterButton:Lcom/miui/camera/ui/ShutterButton;

.field private mStartPreviewFail:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThumbController:Lcom/miui/camera/ThumbnailController;

.field private mTopMiddleScreenHint:Landroid/widget/TextView;

.field private mTopScreenView:Landroid/view/ViewGroup;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoPreview:Landroid/view/SurfaceView;

.field private slideInAnimation:Landroid/view/animation/Animation;

.field private slideOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/miui/camera/BaseCamera;-><init>()V

    .line 96
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 113
    iput-boolean v1, p0, Lcom/miui/camera/VideoCamera;->mStartPreviewFail:Z

    .line 116
    iput-boolean v1, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 136
    iput-boolean v1, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 138
    new-instance v0, Lcom/miui/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/miui/camera/VideoCamera$MainHandler;-><init>(Lcom/miui/camera/VideoCamera;Lcom/miui/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 141
    iput v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    .line 184
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    return-void
.end method

.method static synthetic access$100(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/ui/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateLastVideo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/camera/VideoCamera;)Landroid/widget/ScreenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/camera/VideoCamera;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->checkStorage()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/VideoGlobal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/miui/camera/VideoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method private acquireVideoThumb()V
    .locals 3

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1206
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1207
    return-void
.end method

.method private checkStorage()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/camera/StorageHelper;->checkStorageState(Landroid/content/ContentResolver;)I

    .line 448
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->showStorageHint()V

    .line 449
    invoke-static {}, Lcom/miui/camera/ImageManager;->updateStorageSetting()V

    .line 450
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 778
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 779
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 785
    :cond_0
    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 224
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 225
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lcom/miui/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createVideoPath()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 930
    invoke-direct {p0, v0, v1}, Lcom/miui/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    if-ne v8, v4, :cond_0

    const-string v4, ".mp4"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    sget-object v4, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 935
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    const/16 v4, 0x1ff

    invoke-static {v6, v4, v7, v7}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 937
    new-instance v4, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 938
    const-string v6, "title"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "_display_name"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v2, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 941
    const-string v0, "mime_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    if-ne v8, v2, :cond_1

    const-string v2, "mp4"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v0, "_data"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iput-object v5, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 945
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current camera video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 947
    return-void

    .line 931
    :cond_0
    const-string v4, ".3gp"

    goto/16 :goto_0

    .line 941
    :cond_1
    const-string v2, "3gpp"

    goto :goto_1
.end method

.method private static dataLocation()Lcom/miui/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 1210
    sget-object v0, Lcom/miui/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 970
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 972
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 976
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 978
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->checkStorage()V

    .line 979
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "com.miui.camera.VideoCamera"

    .line 982
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    return-void
.end method

.method private disableScreenShutter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1871
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1872
    if-eqz v0, :cond_0

    .line 1873
    const v1, 0x7f02005b

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iput-boolean v2, v0, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    .line 1876
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 1877
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 765
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 767
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 768
    const/4 v0, -0x1

    .line 769
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 773
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 774
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->finish()V

    .line 775
    return-void

    .line 771
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private enableScreenShutter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1862
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1863
    if-eqz v0, :cond_0

    .line 1864
    const v1, 0x7f02005c

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    .line 1867
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 1868
    return-void
.end method

.method private hideAlert()V
    .locals 7

    .prologue
    .line 1115
    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v5, v5, Lcom/miui/camera/Global;->mNumberOfCameras:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1116
    const v5, 0x7f0d0029

    invoke-virtual {p0, v5}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    :cond_0
    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1120
    const v5, 0x7f0d0034

    invoke-virtual {p0, v5}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/camera/Global;->fadeIn(Landroid/view/View;)V

    .line 1121
    const/4 v5, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 1122
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

    .line 1123
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/camera/Global;->fadeOut(Landroid/view/View;)V

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1125
    .end local v2           #id:I
    :cond_1
    return-void

    .line 1121
    :array_0
    .array-data 0x4
        0x2et 0x0t 0xdt 0x7ft
        0x2ct 0x0t 0xdt 0x7ft
        0x2dt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private hideColoreffectView(I)V
    .locals 2
    .parameter

    .prologue
    .line 1962
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1963
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    new-instance v1, Lcom/miui/camera/VideoCamera$7;

    invoke-direct {v1, p0}, Lcom/miui/camera/VideoCamera$7;-><init>(Lcom/miui/camera/VideoCamera;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/camera/VideoCamera;->slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1974
    return-void
.end method

.method private hideSettingPanel()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x4

    .line 1816
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1820
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/camera/VideoCamera$5;

    invoke-direct {v1, p0}, Lcom/miui/camera/VideoCamera$5;-><init>(Lcom/miui/camera/VideoCamera;)V

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/camera/VideoCamera;->slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1838
    :goto_1
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f02000a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/camera/VideoCamera;->slideOut(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1835
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private initColoreffectView()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1889
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScreenView;

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    .line 1890
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    if-nez v0, :cond_0

    move v0, v7

    .line 1934
    :goto_0
    return v0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 1893
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    const v1, 0x7f020003

    const v2, 0x7f020002

    const v3, 0x7f020005

    const v4, 0x7f020004

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScreenView;->setArrowIndicatorResource(IIII)V

    .line 1896
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 1901
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 1904
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1905
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    .line 1906
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v7

    move v4, v7

    .line 1907
    :goto_1
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 1908
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0, v3}, Lcom/miui/camera/VideoGlobal;->getColoreffectValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1909
    const v0, 0x7f030001

    invoke-virtual {v1, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    .line 1910
    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v5, v3}, Lcom/miui/camera/VideoGlobal;->getColoreffectText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/camera/ui/RotateTextView;->setTag(Ljava/lang/Object;)V

    .line 1912
    const v5, 0x7f0b0088

    add-int/lit8 v6, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/miui/camera/ui/RotateTextView;->setTag(ILjava/lang/Object;)V

    .line 1913
    iget v4, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 1914
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v4, v4, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    if-ne v3, v4, :cond_1

    .line 1915
    const v4, 0x7f020026

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setBackgroundResource(I)V

    .line 1916
    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    .line 1920
    :goto_2
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v4, v3}, Lcom/miui/camera/VideoGlobal;->getColoreffectIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v8, v4, v8, v8}, Lcom/miui/camera/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1921
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v4, v0}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    move v0, v6

    .line 1907
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    .line 1918
    :cond_1
    const v4, 0x7f020025

    invoke-virtual {v0, v4}, Lcom/miui/camera/ui/RotateTextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 1928
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 1930
    iput-object v8, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    move v0, v7

    .line 1931
    goto/16 :goto_0

    .line 1934
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private initSettingPanel()Z
    .locals 6

    .prologue
    const v5, 0x7f0d001b

    const v4, 0x7f0d0021

    const/4 v3, 0x0

    .line 1756
    invoke-virtual {p0, v5}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1757
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1758
    const v1, 0x7f030011

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1762
    :cond_0
    invoke-virtual {p0, v5}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    .line 1763
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move v0, v3

    .line 1790
    :goto_0
    return v0

    .line 1765
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1766
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    iget v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 1767
    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    iget v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 1768
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    iget v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 1769
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    iget v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 1770
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_2

    .line 1771
    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    const v1, 0x7f02005c

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/miui/camera/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1782
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/VideoCamera;->drawColorEffectIcon(Lcom/miui/camera/Global;I)V

    .line 1785
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1786
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1787
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1788
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1790
    const/4 v0, 0x1

    goto :goto_0

    .line 1775
    :cond_2
    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    const v1, 0x7f02005b

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/miui/camera/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private isAlertVisible()Z
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 761
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1200
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1201
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1193
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1194
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1195
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1196
    return-void
.end method

.method private onStopVideoRecording(Z)V
    .locals 1
    .parameter "valid"

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 417
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera;->stopVideoRecordingAndReturn(Z)V

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecordingAndShowAlert()V

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1018
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1022
    return-void
.end method

.method private readVideoPreferences()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v8, "android.intent.extra.videoQuality"

    const-string v7, "android.intent.extra.durationLimit"

    .line 453
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v4, v4, Lcom/miui/camera/VideoGlobal;->mVideoquality:I

    invoke-static {v4}, Lcom/miui/camera/VideoGlobal;->getVideoQuality(I)I

    move-result v3

    .line 456
    .local v3, videoQuality:I
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 457
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    const-string v4, "android.intent.extra.videoQuality"

    const/4 v4, 0x1

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 459
    if-ltz v3, :cond_0

    if-le v3, v5, :cond_1

    .line 461
    :cond_0
    const/4 v3, 0x1

    .line 466
    :cond_1
    if-ne v3, v5, :cond_2

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v4, v4, Lcom/miui/camera/Global;->mCameraId:I

    invoke-static {v4}, Lcom/miui/camera/VideoGlobal;->isHDCapable(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 468
    const/4 v3, 0x1

    .line 473
    :cond_2
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 474
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 475
    .local v2, seconds:I
    mul-int/lit16 v4, v2, 0x3e8

    iput v4, p0, Lcom/miui/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 480
    .end local v2           #seconds:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v5, v5, Lcom/miui/camera/Global;->mCameraId:I

    invoke-static {v5, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    return-void

    .line 477
    :cond_3
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v4, v4, Lcom/miui/camera/VideoGlobal;->mVideoquality:I

    invoke-static {v4}, Lcom/miui/camera/VideoGlobal;->getVideoDurationInMillis(I)I

    move-result v4

    iput v4, p0, Lcom/miui/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_0

    .line 481
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 482
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "com.miui.camera.VideoCamera"

    const-string v5, "fail to get camcorder profile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v5, v5, Lcom/miui/camera/Global;->mCameraId:I

    invoke-static {v5, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_1
.end method

.method private registerVideo()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "com.miui.camera.VideoCamera"

    const-string v6, "Current video URI: "

    .line 950
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 951
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://media/internal/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 954
    :goto_0
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current video URI: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    :goto_1
    iput-object v5, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 967
    return-void

    .line 951
    :cond_1
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 960
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current video URI: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private resetCameraParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1458
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v1, "resetCameraParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_3

    .line 1463
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v3

    .line 1466
    :goto_0
    if-eqz v0, :cond_2

    .line 1467
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1468
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1469
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 1470
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateLayout()V

    .line 1471
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->restartPreview()V

    .line 1476
    :goto_1
    return-void

    .line 1463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1473
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->setCameraParameters()V

    .line 1474
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->setCameraHardwareParameters()V

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1189
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1190
    return-void
.end method

.method private restartPreview()V
    .locals 3

    .prologue
    .line 548
    const-string v1, "com.miui.camera.VideoCamera"

    const-string v2, "restart preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showCameraBusyAndFinish()V

    goto :goto_0
.end method

.method private setCameraHardwareParameters()V
    .locals 4

    .prologue
    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCameraParameters(Ljava/lang/String;)V

    .line 1369
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    const-string v1, "com.miui.camera.VideoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1305
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1308
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1310
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1311
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1314
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    if-eqz v1, :cond_7

    move v1, v3

    :goto_0
    aget-object v0, v0, v1

    .line 1315
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1316
    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/VideoGlobal;->mWhitebalance:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mWhitebalance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportContinuousFocusMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/VideoGlobal;->mContinuousFocus:Z

    if-eqz v0, :cond_8

    .line 1327
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1333
    :goto_1
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    aget-object v0, v0, v1

    .line 1334
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/VideoGlobal;->mAntibanding:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1340
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mAntibanding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1344
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxContrast()I

    move-result v0

    if-lez v0, :cond_4

    .line 1345
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mContrast:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setContrast(I)V

    .line 1349
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSaturation()I

    move-result v0

    if-lez v0, :cond_5

    .line 1350
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mSaturation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSaturation(I)V

    .line 1354
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxSharpness()I

    move-result v0

    if-lez v0, :cond_6

    .line 1355
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mSharpness:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSharpness(I)V

    .line 1357
    :cond_6
    return-void

    .line 1314
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1329
    :cond_8
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private setOrientationIndicator(I)V
    .locals 4
    .parameter

    .prologue
    .line 2004
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/ScaleRotateImageView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/ScaleRotateImageView;->setDegree(I)V

    .line 2006
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2007
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2008
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2009
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2010
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    if-eqz v0, :cond_2

    .line 2015
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2016
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2017
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2018
    check-cast v0, Lcom/miui/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 2015
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2022
    :cond_2
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    return-void

    .line 541
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 542
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 543
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private showAlert()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1091
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v6, v6, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-le v6, v9, :cond_0

    .line 1092
    const v6, 0x7f0d0029

    invoke-virtual {p0, v6}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    :cond_0
    const v6, 0x7f0d0034

    invoke-virtual {p0, v6}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/camera/Global;->fadeOut(Landroid/view/View;)V

    .line 1096
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1097
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1101
    .local v5, src:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/miui/camera/VideoCamera;->mOrientationHint:I

    if-eqz v6, :cond_1

    .line 1102
    iget v6, p0, Lcom/miui/camera/VideoCamera;->mOrientationHint:I

    neg-int v6, v6

    invoke-static {v5, v6, v8}, Lcom/miui/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1104
    :cond_1
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1105
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1107
    .end local v5           #src:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v6, 0x3

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 1108
    .local v4, pickIds:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_3

    aget v2, v0, v1

    .line 1109
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/camera/Global;->fadeIn(Landroid/view/View;)V

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v2           #id:I
    :cond_3
    return-void

    .line 1107
    :array_0
    .array-data 0x4
        0x2et 0x0t 0xdt 0x7ft
        0x2ct 0x0t 0xdt 0x7ft
        0x2dt 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private showCameraBusyAndFinish()V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/camera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private showColoreffectView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1938
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    if-nez v0, :cond_0

    .line 1939
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->initColoreffectView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1944
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ScreenView;->scrollToScreen(I)V

    .line 1947
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1948
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    new-instance v1, Lcom/miui/camera/VideoCamera$6;

    invoke-direct {v1, p0}, Lcom/miui/camera/VideoCamera$6;-><init>(Lcom/miui/camera/VideoCamera;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/camera/VideoCamera;->slideIn(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1958
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-virtual {v0, v3}, Landroid/widget/ScreenView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSettingPanel()V
    .locals 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1796
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->initSettingPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    new-instance v1, Lcom/miui/camera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/miui/camera/VideoCamera$4;-><init>(Lcom/miui/camera/VideoCamera;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/camera/VideoCamera;->slideIn(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1811
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1812
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f02000b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private slideIn(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 9
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1504
    if-nez p1, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 1507
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->slideInAnimation:Landroid/view/animation/Animation;

    .line 1512
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1516
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideInAnimation:Landroid/view/animation/Animation;

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

    .line 1525
    if-nez p1, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 1528
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->slideOutAnimation:Landroid/view/animation/Animation;

    .line 1533
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideOutAnimation:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1537
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1538
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->slideOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/miui/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "com.miui.camera.VideoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 558
    const-string v1, "com.miui.camera.VideoCamera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/VideoGlobal;->ensureCameraDevice()V

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/Global;->mPreviewing:Z

    if-ne v1, v3, :cond_1

    .line 566
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 567
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iput-boolean v4, v1, Lcom/miui/camera/Global;->mPreviewing:Z

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/miui/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 571
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->setCameraParameters()V

    .line 572
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v4}, Lcom/miui/camera/Global;->setContinuousAf(Landroid/hardware/Camera$Parameters;Z)V

    .line 573
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1, v3}, Lcom/miui/camera/Global;->setVideoMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 574
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->setCameraHardwareParameters()V

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 578
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/camera/Global;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    return-void

    .line 579
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 580
    .local v0, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 581
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "com.miui.camera.VideoCamera"

    .line 1025
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "startVideoRecording"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Lcom/miui/camera/StorageHelper;->isStorageValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "Storage issue, ignore the start request"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setVisibility(I)V

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v2}, Lcom/miui/camera/Global;->setContinuousAf(Landroid/hardware/Camera$Parameters;Z)V

    .line 1036
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->setCameraHardwareParameters()V

    .line 1038
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->initializeRecorder()V

    .line 1040
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_2

    .line 1041
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "MediaRecorder is not initialized."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1046
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->acquireWakeLock()V

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    iput-boolean v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1057
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/camera/VideoCamera;->mRecordingStartTime:J

    .line 1058
    invoke-direct {p0, v2}, Lcom/miui/camera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 1059
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-le v0, v2, :cond_3

    .line 1062
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateRecordingTime()V

    .line 1065
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    const-string v1, "com.miui.camera.VideoCamera"

    const-string v1, "Could not start media recorder. "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v3, "com.miui.camera.VideoCamera"

    .line 1147
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "stopVideoRecording"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1151
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 1154
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1155
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting current video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 1161
    :goto_0
    invoke-static {}, Lcom/miui/camera/StorageHelper;->storageChanged()V

    .line 1162
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1163
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    const/16 v2, 0x1ff

    invoke-static {v1, v2, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1164
    const/4 v1, -0x4

    invoke-virtual {p0, v1}, Lcom/miui/camera/VideoCamera;->showStorageHint(I)V

    .line 1165
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1169
    :goto_1
    iput-boolean v5, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1170
    invoke-direct {p0, v5}, Lcom/miui/camera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 1171
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-le v1, v7, :cond_0

    .line 1173
    const v1, 0x7f0d0029

    invoke-virtual {p0, v1}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1176
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/camera/StorageHelper;->isStorageValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->registerVideo()V

    .line 1179
    :cond_1
    iput-object v6, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    .line 1180
    iput-object v6, p0, Lcom/miui/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1183
    :cond_2
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1184
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->clearWakeLock()V

    .line 1185
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    const-string v1, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    move v0, v5

    goto :goto_0

    .line 1167
    :cond_3
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->showStorageHint()V

    goto :goto_1
.end method

.method private stopVideoRecordingAndGetThumbnail()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 1076
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->acquireVideoThumb()V

    .line 1077
    return-void
.end method

.method private stopVideoRecordingAndReturn(Z)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 1081
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 1082
    return-void
.end method

.method private stopVideoRecordingAndShowAlert()V
    .locals 0

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 1086
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showAlert()V

    .line 1087
    return-void
.end method

.method private switchCamera(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.miui.camera.VideoCamera"

    .line 1376
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swith camera to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mNumberOfCameras:I

    if-eq p1, v0, :cond_0

    .line 1392
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    .line 1393
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    .line 1394
    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    .line 1397
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mGlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1398
    const-string v1, "pref_key_camera_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1402
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iput p1, v0, Lcom/miui/camera/Global;->mCameraId:I

    .line 1403
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v1}, Lcom/miui/camera/VideoGlobal;->getLocalPrefFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/camera/VideoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    .line 1406
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 1407
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 1408
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 1409
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showAlert()V

    .line 1416
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 1418
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/VideoGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/VideoGlobal;->initAll()V

    .line 1428
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->readVideoPreferences()V

    .line 1429
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateLayout()V

    .line 1430
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateTopMiddleScreenView()V

    .line 1431
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->restartPreview()V

    .line 1434
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    goto :goto_0

    .line 1411
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    goto :goto_1

    .line 1414
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    goto :goto_1

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 1421
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "can not open camera"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private switchToCameraMode()Z
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return v0

    .line 1439
    :cond_1
    invoke-static {p0}, Lcom/miui/camera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 1440
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->finish()V

    .line 1441
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateFlashView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1542
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mSupportFlashMode:Z

    if-eqz v0, :cond_5

    .line 1543
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1545
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b0046

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1546
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->getSizeRatioText(II)Ljava/lang/String;

    move-result-object v0

    .line 1548
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/LayoutSetting;

    .line 1549
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1551
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    if-eqz v1, :cond_2

    const v1, 0x7f020036

    :goto_1
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1554
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1565
    :goto_2
    return-void

    .line 1545
    :cond_1
    const v1, 0x7f0b0047

    goto :goto_0

    .line 1551
    :cond_2
    const v1, 0x7f020034

    goto :goto_1

    .line 1556
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1557
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    if-eqz v1, :cond_4

    const v1, 0x7f020037

    :goto_3
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1560
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 1557
    :cond_4
    const v1, 0x7f020035

    goto :goto_3

    .line 1563
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateLastVideo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1227
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/miui/camera/VideoCamera;->dataLocation()Lcom/miui/camera/ImageManager$DataLocation;

    move-result-object v5

    const/4 v6, 0x4

    sget-object v7, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v4, v5, v6, v8, v7}, Lcom/miui/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/miui/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/miui/camera/gallery/IImageList;

    move-result-object v2

    .line 1233
    .local v2, list:Lcom/miui/camera/gallery/IImageList;
    invoke-interface {v2}, Lcom/miui/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 1234
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1235
    sub-int v4, v0, v8

    invoke-interface {v2, v4}, Lcom/miui/camera/gallery/IImageList;->getImageAt(I)Lcom/miui/camera/gallery/IImage;

    move-result-object v1

    .line 1236
    .local v1, image:Lcom/miui/camera/gallery/IImage;
    invoke-interface {v1}, Lcom/miui/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1237
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-interface {v1}, Lcom/miui/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1241
    .end local v1           #image:Lcom/miui/camera/gallery/IImage;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v2}, Lcom/miui/camera/gallery/IImageList;->close()V

    .line 1242
    return-void

    .line 1239
    :cond_0
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v4, v9, v9}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 9

    .prologue
    const v3, 0x7f0d0029

    const/16 v5, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1628
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0, v1}, Lcom/miui/camera/Global;->getSizeRatioText(II)Ljava/lang/String;

    move-result-object v0

    .line 1630
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/LayoutSetting;

    .line 1631
    if-nez v0, :cond_7

    .line 1632
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mLayoutSettingMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/LayoutSetting;

    move-object v2, v0

    .line 1634
    :goto_0
    if-nez v2, :cond_0

    .line 1635
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateLayoutOld()V

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    iput v1, v0, Lcom/miui/camera/VideoGlobal;->mControlBarHeight:I

    .line 1641
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarBg:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1643
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mTopScreenView:Landroid/view/ViewGroup;

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mTopBarBg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1644
    iget-boolean v0, v2, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    if-eqz v0, :cond_2

    .line 1645
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mTopScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1646
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1647
    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1654
    :goto_1
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1655
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1656
    iget v3, v2, Lcom/miui/camera/LayoutSetting;->mPreviewWidth:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1657
    iget v3, v2, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1658
    iget v3, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1659
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1661
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1662
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1663
    iget v0, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    iget v4, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    if-le v0, v4, :cond_3

    .line 1664
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    iget v0, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    iget v4, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    sub-int v4, v0, v4

    .line 1667
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1668
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1669
    iget v5, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1670
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1672
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    sub-int v1, v0, v1

    .line 1678
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1679
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1680
    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1681
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1687
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1688
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1689
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1690
    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v3, v3, Lcom/miui/camera/VideoGlobal;->mControlBarHeight:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1691
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1694
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateFlashView()V

    .line 1697
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Lcom/miui/camera/LayoutSetting;->mPreviewWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    aput v4, v1, v3

    aput v4, v0, v6

    .line 1699
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    sub-int/2addr v0, v1

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    sub-int/2addr v0, v1

    .line 1701
    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    if-ge v1, v0, :cond_4

    .line 1702
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    add-int/lit8 v0, v0, 0x14

    aput v0, v1, v7

    .line 1706
    :goto_3
    iget v0, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    if-ge v0, v1, :cond_6

    .line 1707
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    add-int/lit8 v1, v1, 0x14

    aput v1, v0, v8

    .line 1713
    :goto_4
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setMargins([I)V

    .line 1714
    return-void

    .line 1649
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mTopScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1650
    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1651
    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1683
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1704
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    iget-boolean v3, v2, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    if-eqz v3, :cond_5

    move v3, v6

    :goto_5
    add-int/2addr v1, v3

    aput v1, v0, v7

    goto :goto_3

    :cond_5
    const/16 v3, 0x14

    goto :goto_5

    .line 1709
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget v1, v2, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    add-int/lit8 v1, v1, 0x14

    aput v1, v0, v8

    goto :goto_4

    :cond_7
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private updateLayoutOld()V
    .locals 15

    .prologue
    const/16 v14, 0x50

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    .line 1579
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1580
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1582
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 1583
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v6, v6, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 1584
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    .line 1585
    if-nez v6, :cond_0

    .line 1586
    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    .line 1588
    :cond_0
    iget-object v7, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v7, v7, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v6

    int-to-double v7, v7

    iget-object v9, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v9, v9, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    .line 1589
    cmpg-double v7, v2, v7

    if-gtz v7, :cond_1

    .line 1590
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1591
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1592
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v2, v2, Lcom/miui/camera/VideoGlobal;->mControlBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1594
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v3, v3, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x14

    aput v3, v2, v11

    .line 1596
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v3, v3, 0x14

    aput v3, v2, v12

    .line 1613
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1616
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x14

    aput v1, v2, v3

    aput v1, v0, v13

    .line 1620
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setMargins([I)V

    .line 1621
    return-void

    .line 1597
    :cond_1
    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    .line 1598
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1599
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1600
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1602
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    aput v14, v2, v11

    .line 1603
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    add-int/lit8 v3, v6, 0x14

    aput v3, v2, v12

    goto :goto_0

    .line 1605
    :cond_2
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v4, v4, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    div-double v2, v4, v2

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1606
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1607
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1609
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    aput v14, v2, v11

    .line 1610
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mActivePreviewArea:[I

    add-int/lit8 v3, v6, 0x14

    aput v3, v2, v12

    goto :goto_0
.end method

.method private updateRecordingIndicator(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    if-eqz p1, :cond_0

    const v1, 0x7f020011

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 1072
    return-void

    .line 1070
    :cond_0
    const v1, 0x7f020010

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 13

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1248
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1249
    iget-wide v2, p0, Lcom/miui/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 1253
    iget v2, p0, Lcom/miui/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/miui/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v3, 0xea60

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    .line 1256
    :goto_1
    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    rem-long v5, v0, v5

    sub-long/2addr v3, v5

    .line 1258
    if-eqz v2, :cond_7

    .line 1259
    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/miui/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long v0, v7, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1260
    const-wide/16 v5, 0x3e7

    add-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    .line 1265
    :goto_2
    const-wide/16 v5, 0x3c

    div-long v5, v0, v5

    .line 1266
    const-wide/16 v7, 0x3c

    div-long v7, v5, v7

    .line 1267
    const-wide/16 v9, 0x3c

    mul-long/2addr v9, v7

    sub-long v9, v5, v9

    .line 1268
    const-wide/16 v11, 0x3c

    mul-long/2addr v5, v11

    sub-long/2addr v0, v5

    .line 1270
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1275
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 1276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1278
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    const-wide/16 v5, 0x0

    cmp-long v1, v7, v5

    if-lez v1, :cond_4

    .line 1280
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 1282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1284
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    :cond_4
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v0, v2, :cond_5

    .line 1291
    iput-boolean v2, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 1293
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v2, :cond_8

    const v1, 0x7f080001

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1297
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1300
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1253
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1262
    :cond_7
    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    goto/16 :goto_2

    .line 1293
    :cond_8
    const/high16 v1, 0x7f08

    goto :goto_3
.end method

.method private updateThumbnailButton()V
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/miui/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    new-instance v0, Lcom/miui/camera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/miui/camera/VideoCamera$3;-><init>(Lcom/miui/camera/VideoCamera;)V

    invoke-virtual {v0}, Lcom/miui/camera/VideoCamera$3;->start()V

    .line 1224
    :cond_0
    return-void
.end method

.method private updateTopMiddleScreenView()V
    .locals 4

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v0, v0, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    if-nez v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    :goto_0
    return-void

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    const v2, 0x7f070006

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v3, v3, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/camera/VideoGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private viewLastVideo()V
    .locals 4

    .prologue
    const-string v3, "com.miui.camera.VideoCamera"

    .line 1132
    .line 1133
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/miui/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cooliris.media.action.REVIEW"

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/miui/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1137
    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    const-string v1, "com.miui.camera.VideoCamera"

    const-string v1, "review video fail"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1142
    :cond_0
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "Can\'t view last video."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 639
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 647
    :goto_0
    return v0

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 647
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initializeRecorder()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "com.miui.camera.VideoCamera"

    .line 789
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "initializeRecorder"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 791
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v0, "Surface holoder is null. Wait for surface changed"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->isAlertVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 803
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 804
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 805
    if-eqz v0, :cond_2

    .line 807
    :try_start_0
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "rw"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 808
    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :cond_2
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 816
    :goto_2
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 819
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v2, v2, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 820
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v3, v3, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 821
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 822
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v8}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 823
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v3, v3, Lcom/miui/camera/VideoGlobal;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 824
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/miui/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 827
    invoke-static {}, Lcom/miui/camera/StorageHelper;->isStorageValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 828
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v3, "/dev/null"

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 845
    :goto_3
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 851
    invoke-static {}, Lcom/miui/camera/StorageHelper;->getAvailableStorage()J

    move-result-wide v2

    const-wide/32 v4, 0x20000

    sub-long/2addr v2, v4

    .line 852
    cmp-long v4, v0, v9

    if-lez v4, :cond_8

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    .line 857
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 867
    :goto_5
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_SHOLES:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mDevice:Lcom/miui/camera/Constants$DEVICE;

    sget-object v1, Lcom/miui/camera/Constants$DEVICE;->MOTOROLA_UMTS_JORDAN:Lcom/miui/camera/Constants$DEVICE;

    if-eq v0, v1, :cond_6

    .line 869
    iget v0, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 870
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mCameraId:I

    aget-object v0, v0, v1

    .line 871
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v8, :cond_5

    .line 872
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 877
    :goto_6
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 878
    iget v0, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    iput v0, p0, Lcom/miui/camera/VideoCamera;->mOrientationHint:I

    .line 905
    :goto_7
    :try_start_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 912
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 913
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 811
    const-string v2, "com.miui.camera.VideoCamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 832
    :cond_3
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_4

    .line 833
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 835
    :try_start_3
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 836
    :catch_1
    move-exception v2

    .line 837
    const-string v3, "com.miui.camera.VideoCamera"

    const-string v3, "Failed to close fd"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 840
    :cond_4
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->createVideoPath()V

    .line 841
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 874
    :cond_5
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/miui/camera/VideoCamera;->mLastOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 880
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v7}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 881
    iput v7, p0, Lcom/miui/camera/VideoCamera;->mOrientationHint:I

    goto :goto_7

    .line 906
    :catch_2
    move-exception v0

    .line 907
    const-string v1, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->releaseMediaRecorder()V

    .line 909
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 858
    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_7
    move v0, v7

    goto/16 :goto_6

    :cond_8
    move-wide v0, v2

    goto/16 :goto_4

    :cond_9
    move-wide v0, v9

    goto/16 :goto_2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    invoke-direct {p0, v1}, Lcom/miui/camera/VideoCamera;->hideColoreffectView(I)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->hideSettingPanel()V

    goto :goto_0

    .line 658
    :cond_2
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 659
    invoke-direct {p0, v1}, Lcom/miui/camera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 661
    :cond_3
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->deleteCurrentVideo()V

    .line 394
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->hideAlert()V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->startPlayVideoActivity()V

    goto :goto_0

    .line 400
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 403
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->stopVideoRecordingAndReturn(Z)V

    goto :goto_0

    .line 406
    :pswitch_4
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->viewLastVideo()V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d002c
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClickColorEffectIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1886
    :goto_0
    return-void

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mColoreffectView:Landroid/widget/ScreenView;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1882
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->hideColoreffectView(I)V

    goto :goto_0

    .line 1884
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showColoreffectView()V

    goto :goto_0
.end method

.method public onClickColorEffectItem(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1981
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    .line 1982
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1983
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSelectedColoreffectItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    .line 1984
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateTopMiddleScreenView()V

    .line 1987
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/camera/VideoCamera;->drawColorEffectIcon(Lcom/miui/camera/Global;I)V

    .line 1990
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1991
    const-string v1, "pref_key_video_color_effect"

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v2, v2, Lcom/miui/camera/VideoGlobal;->mColoreffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1992
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1994
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->onSharedPreferencesChanged()V

    .line 1995
    return-void
.end method

.method public onClickFlashmode(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1717
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    if-nez v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    .line 1720
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1721
    const-string v1, "pref_key_video_flash_mode"

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1722
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1725
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateFlashView()V

    .line 1728
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v1, v1, Lcom/miui/camera/VideoGlobal;->mFlashmode:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    aget-object v0, v0, v1

    .line 1729
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1730
    invoke-static {v0, v1}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1733
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->setCameraHardwareParameters()V

    .line 1734
    return-void

    :cond_1
    move v1, v3

    .line 1717
    goto :goto_0

    :cond_2
    move v1, v4

    .line 1728
    goto :goto_1
.end method

.method public onClickScreenShutterIcon(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_0

    .line 1849
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->disableScreenShutter()V

    .line 1855
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1856
    const-string v1, "pref_key_video_screen_shutter"

    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1859
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->hideSettingPanel()V

    .line 1860
    return-void

    .line 1851
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->enableScreenShutter()V

    goto :goto_0
.end method

.method public onClickSettingIcon(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1998
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/camera/ui/VideoQualityPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1999
    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    .line 2000
    return-void
.end method

.method public onClickSettingPanelIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1744
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->hideSettingPanel()V

    goto :goto_0

    .line 1746
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showSettingPanel()V

    goto :goto_0
.end method

.method public onClickSwitchCameraIcon(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v0, v0, Lcom/miui/camera/Global;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v1, v1, Lcom/miui/camera/Global;->mNumberOfCameras:I

    rem-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->switchCamera(I)V

    .line 1738
    return-void
.end method

.method public onClickSwitchToCameraIcon(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1842
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1845
    :goto_0
    return-void

    .line 1844
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->switchToCameraMode()Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1454
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1455
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v7, 0x7f0d002b

    const/4 v8, 0x0

    const-string v5, "com.miui.camera.VideoCamera"

    .line 239
    const-string v4, "com.miui.camera.VideoCamera"

    const-string v4, "onCreate"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-static {p0}, Lcom/miui/camera/VideoGlobal;->instance(Landroid/content/Context;)Lcom/miui/camera/VideoGlobal;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    .line 245
    :try_start_0
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v4}, Lcom/miui/camera/VideoGlobal;->ensureCameraDevice()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v4}, Lcom/miui/camera/VideoGlobal;->initAll()V

    .line 253
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->readVideoPreferences()V

    .line 259
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/miui/camera/VideoCamera$1;

    invoke-direct {v4, p0}, Lcom/miui/camera/VideoCamera$1;-><init>(Lcom/miui/camera/VideoCamera;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 274
    .local v3, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 276
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 278
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->requestWindowFeature(I)Z

    .line 279
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->setContentView(I)V

    .line 281
    const v4, 0x7f0d0035

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mRootView:Landroid/view/ViewGroup;

    .line 282
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    .line 283
    const v4, 0x7f0d0036

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 284
    const v4, 0x7f0d0007

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/camera/ui/ScreenShutterIndicator;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    .line 285
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mScreenShutterIndicator:Lcom/miui/camera/ui/ScreenShutterIndicator;

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v5, v5, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    invoke-virtual {v4, v5}, Lcom/miui/camera/ui/ScreenShutterIndicator;->setScreenSnap(Z)V

    .line 286
    const v4, 0x7f0d0009

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    .line 287
    iget-object v4, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/camera/BaseCamera;->mToastTextView:Landroid/widget/TextView;

    .line 292
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 293
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 294
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 296
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 297
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.quickCapture"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/camera/VideoCamera;->mQuickCapture:Z

    .line 300
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 303
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030012

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 304
    const v4, 0x7f0d0026

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mTopScreenView:Landroid/view/ViewGroup;

    .line 305
    const v4, 0x7f0d0027

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mFlashView:Landroid/widget/TextView;

    .line 306
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mTopScreenView:Landroid/view/ViewGroup;

    const v5, 0x7f0d0028

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mTopMiddleScreenHint:Landroid/widget/TextView;

    .line 307
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateTopMiddleScreenView()V

    .line 308
    const v4, 0x7f0d0029

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget v5, v5, Lcom/miui/camera/Global;->mNumberOfCameras:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    move v5, v8

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 310
    const v4, 0x7f0d0038

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 312
    iget-boolean v4, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_2

    .line 313
    const v4, 0x7f03000a

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 314
    invoke-virtual {p0, v7}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    .line 315
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    const v5, 0x7f0d002f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    const v5, 0x7f0d002e

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    const v5, 0x7f0d002d

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    const v5, 0x7f0d002c

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :goto_1
    const v4, 0x7f03000f

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 328
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    const v5, 0x7f0d0034

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/camera/ui/ShutterButton;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    .line 329
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const v5, 0x7f020010

    invoke-virtual {v4, v5}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 330
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v4, p0}, Lcom/miui/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 331
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v4}, Lcom/miui/camera/ui/ShutterButton;->requestFocus()Z

    .line 337
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8, v8}, Landroid/widget/FrameLayout;->measure(II)V

    .line 338
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    iput v5, v4, Lcom/miui/camera/VideoGlobal;->mControlBarHeight:I

    .line 341
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateLayout()V

    .line 345
    new-instance v4, Lcom/miui/camera/VideoCamera$2;

    invoke-direct {v4, p0, p0}, Lcom/miui/camera/VideoCamera$2;-><init>(Lcom/miui/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 360
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lcom/miui/camera/VideoCamera$VideoGestureListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/miui/camera/VideoCamera$VideoGestureListener;-><init>(Lcom/miui/camera/VideoCamera;Lcom/miui/camera/VideoCamera$1;)V

    invoke-direct {v4, p0, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mGestureDetector:Landroid/view/GestureDetector;

    .line 365
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 366
    iget-boolean v4, p0, Lcom/miui/camera/VideoCamera;->mStartPreviewFail:Z

    if-eqz v4, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showCameraBusyAndFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    .end local v1           #holder:Landroid/view/SurfaceHolder;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #startPreviewThread:Ljava/lang/Thread;
    :cond_0
    :goto_2
    return-void

    .line 246
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 247
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v4}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 248
    const-string v4, "com.miui.camera.VideoCamera"

    const-string v4, "can not open camera"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 308
    .end local v0           #e:Lcom/miui/camera/CameraHardwareException;
    .restart local v1       #holder:Landroid/view/SurfaceHolder;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #startPreviewThread:Ljava/lang/Thread;
    :cond_1
    const/16 v5, 0x8

    goto/16 :goto_0

    .line 320
    :cond_2
    const v4, 0x7f03000b

    iget-object v5, p0, Lcom/miui/camera/VideoCamera;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 321
    invoke-virtual {p0, v7}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mControlBar:Landroid/widget/FrameLayout;

    .line 322
    const v4, 0x7f0d0030

    invoke-virtual {p0, v4}, Lcom/miui/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    .line 323
    new-instance v4, Lcom/miui/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v4, v5, v6, v7}, Lcom/miui/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;

    .line 324
    iget-object v4, p0, Lcom/miui/camera/VideoCamera;->mLastPictureButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 370
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 627
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onDestroy()V

    .line 629
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 991
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 993
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 994
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->checkStorage()V

    .line 996
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1000
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1001
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1003
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1006
    :cond_2
    const v0, 0x7f0b000d

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 668
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 691
    :goto_0
    return v0

    .line 670
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 691
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/camera/BaseCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 672
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->performClick()Z

    move v0, v1

    .line 674
    goto :goto_0

    .line 678
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/miui/camera/ui/ShutterButton;->performClick()Z

    move v0, v1

    .line 680
    goto :goto_0

    .line 684
    :sswitch_2
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 685
    invoke-direct {p0, v1}, Lcom/miui/camera/VideoCamera;->onStopVideoRecording(Z)V

    move v0, v1

    .line 686
    goto :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 696
    packed-switch p1, :pswitch_data_0

    .line 701
    invoke-super {p0, p1, p2}, Lcom/miui/camera/BaseCamera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 698
    :pswitch_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setPressed(Z)V

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 587
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onPause()V

    .line 590
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/camera/Global;->mPausing:Z

    .line 594
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 598
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 599
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 600
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 601
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showAlert()V

    .line 608
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v0}, Lcom/miui/camera/VideoGlobal;->closeCamera()V

    .line 610
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->resetScreenOn()V

    .line 616
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->clearWakeLock()V

    .line 623
    :cond_2
    return-void

    .line 603
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecordingAndGetThumbnail()V

    goto :goto_0

    .line 606
    :cond_4
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 747
    invoke-super {p0, p1}, Lcom/miui/camera/BaseCamera;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 749
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 756
    :goto_0
    return v0

    .line 752
    :cond_0
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/camera/VideoCamera;->onClickSettingPanelIcon(Landroid/view/View;)V

    :cond_1
    move v0, v1

    .line 756
    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 489
    const-string v2, "com.miui.camera.VideoCamera"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onResume()V

    .line 492
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iput-boolean v4, v2, Lcom/miui/camera/Global;->mPausing:Z

    .line 494
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->hideSettingPanel()V

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 503
    :cond_1
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mPreferencesChanged:Z

    if-eqz v2, :cond_2

    .line 505
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    invoke-virtual {v2}, Lcom/miui/camera/VideoGlobal;->initAll()V

    .line 506
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateTopMiddleScreenView()V

    .line 507
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iput-boolean v4, v2, Lcom/miui/camera/Global;->mPreferencesChanged:Z

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->readVideoPreferences()V

    .line 510
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateLayout()V

    .line 511
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mPreviewing:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/camera/VideoCamera;->mStartPreviewFail:Z

    if-nez v2, :cond_3

    .line 513
    :try_start_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_3
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 521
    const-wide/32 v2, 0x80000

    invoke-static {v2, v3}, Lcom/miui/camera/StorageHelper;->setExternalStorageThreshold(J)V

    .line 522
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->checkStorage()V

    .line 525
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 531
    new-instance v2, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/miui/camera/VideoCamera;Lcom/miui/camera/VideoCamera$1;)V

    iput-object v2, p0, Lcom/miui/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    iget-object v2, p0, Lcom/miui/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/miui/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 535
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->updateThumbnailButton()V

    .line 536
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->showCameraBusyAndFinish()V

    goto :goto_0
.end method

.method public onSharedPreferencesChanged()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 1484
    invoke-virtual {p0}, Lcom/miui/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 1488
    :try_start_0
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->readVideoPreferences()V

    .line 1490
    iget-object v1, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v1, v1, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1491
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->resetCameraParameters()V

    .line 1492
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/miui/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mSettingPanel:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->hideSettingPanel()V

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 442
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Lcom/miui/camera/ui/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 413
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 377
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onStart()V

    .line 379
    return-void
.end method

.method public onSwitchChanged(Lcom/miui/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    const/4 v0, 0x1

    .line 1445
    if-ne p2, v0, :cond_0

    .line 1446
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    .line 1448
    :cond_0
    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 633
    invoke-super {p0}, Lcom/miui/camera/BaseCamera;->onUserInteraction()V

    .line 634
    iget-boolean v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 635
    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 917
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->cleanupEmptyFile()V

    .line 920
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 921
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 926
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 706
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 707
    const-string v0, "com.miui.camera.VideoCamera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iput-object p1, p0, Lcom/miui/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 713
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 730
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->stopVideoRecording()V

    .line 734
    invoke-direct {p0}, Lcom/miui/camera/VideoCamera;->restartPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 739
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 743
    return-void
.end method
