.class public Lcom/android/soundrecorder/SoundRecorder;
.super Landroid/app/Activity;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/soundrecorder/Recorder$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;
    }
.end annotation


# instance fields
.field private mCanRequestChanged:Z

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mErrorUiMessage:Ljava/lang/String;

.field private mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

.field private mFinishButton:Landroid/widget/ImageButton;

.field private final mHandler:Landroid/os/Handler;

.field private mLastButtonId:I

.field private mLastClickTime:J

.field private mMaxFileSize:J

.field private mNewButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseSound:I

.field private mPlayButton:Landroid/widget/ImageButton;

.field private mPlaySeekBar:Landroid/widget/SeekBar;

.field private mPlaySound:I

.field private mPreviousVUMax:I

.field private mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mRecorder:Lcom/android/soundrecorder/Recorder;

.field private mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field private mRequestedType:Ljava/lang/String;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSampleInterrupted:Z

.field private mSavedRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarLayout:Landroid/widget/LinearLayout;

.field private mShowFinishButton:Z

.field private mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

.field private mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartTime:Landroid/widget/TextView;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mStopUiUpdate:Z

.field private mTimerFormat:Ljava/lang/String;

.field private mTimerLayout:Landroid/widget/LinearLayout;

.field private mToastTextViewForNoSd:Landroid/widget/TextView;

.field private mToastViewForNoSd:Landroid/view/ViewGroup;

.field private mTotalTime:Landroid/widget/TextView;

.field private mUpdateSeekBar:Ljava/lang/Runnable;

.field private mUpdateTimer:Ljava/lang/Runnable;

.field private mUpdateVUMetur:Ljava/lang/Runnable;

.field private mVUMeterLayout:Landroid/widget/LinearLayout;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

.field private mWheelRight:Lcom/android/soundrecorder/WheelImageView;

.field private vibratePatternButton:[B

.field private vibratePatternCenterButton:[B

.field private vibratePatternRecordPlayEnd:[B

.field private vibratePatternSeekEnd:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 102
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$1;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$2;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateSeekBar:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$3;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateVUMetur:Ljava/lang/Runnable;

    .line 202
    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1337
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$11;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$11;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1391
    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/soundrecorder/SoundRecorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/soundrecorder/SoundRecorder;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternSeekEnd:[B

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/soundrecorder/SoundRecorder;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startForwardAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startBackwardAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/soundrecorder/SoundRecorder;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->setTimerView(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateSeekBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateVUMeterView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/soundrecorder/SoundRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecording()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/soundrecorder/SoundRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x3e8

    const-string v9, "SoundRecorder"

    .line 903
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 904
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 906
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 907
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 908
    new-instance v7, Ljava/text/SimpleDateFormat;

    const v8, 0x7f060008

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 914
    const-string v7, "is_music"

    const-string v8, "0"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v7, "title"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v6, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v6, "date_added"

    div-long/2addr v2, v10

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v2, "date_modified"

    div-long v3, v4, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 920
    const-string v2, "mime_type"

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v2, "artist"

    const v3, 0x7f060009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v2, "album"

    const v3, 0x7f06000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v2, "SoundRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting audio record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 925
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 927
    :goto_0
    const-string v4, "SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentURI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 929
    if-nez v1, :cond_1

    .line 930
    const-string v0, "SoundRecorder"

    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v0, 0x0

    .line 945
    :goto_1
    return-object v0

    .line 925
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 934
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 935
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 936
    invoke-direct {p0, v0, v2}, Lcom/android/soundrecorder/SoundRecorder;->createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 938
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 939
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v0

    int-to-long v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/soundrecorder/SoundRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 944
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    move-object v0, v1

    .line 945
    goto :goto_1
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 842
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v6

    .line 845
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 846
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 847
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 848
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 849
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 850
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 851
    const-string v3, "play_order"

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v2, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 854
    return-void
.end method

.method private createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 888
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 889
    const-string v1, "name"

    const v2, 0x7f06000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 891
    if-nez v0, :cond_0

    .line 892
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 896
    :cond_0
    return-object v0
.end method

.method private getByteArray([I)[B
    .locals 3
    .parameter "from"

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 401
    :goto_0
    return-object v2

    .line 396
    :cond_0
    array-length v2, p1

    new-array v1, v2, [B

    .line 397
    .local v1, to:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 398
    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 401
    goto :goto_0
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v3, "name=?"

    .line 860
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 861
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 864
    const-string v0, "name=?"

    .line 865
    new-array v4, v4, [Ljava/lang/String;

    const v0, 0x7f06000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 868
    const-string v0, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 869
    if-nez v0, :cond_0

    .line 870
    const-string v1, "SoundRecorder"

    const-string v2, "query returns null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    const/4 v1, -0x1

    .line 873
    if-eqz v0, :cond_2

    .line 874
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 875
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 876
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 878
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v1

    .line 880
    return v0
.end method

.method private getTimerImage(C)Landroid/widget/ImageView;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 949
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 950
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 951
    const/16 v2, 0x3a

    if-eq p1, v2, :cond_0

    .line 952
    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 954
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 989
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    return-object v0

    .line 956
    :pswitch_0
    const v2, 0x7f020023

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 959
    :pswitch_1
    const v2, 0x7f020024

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 962
    :pswitch_2
    const v2, 0x7f020025

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 965
    :pswitch_3
    const v2, 0x7f020026

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 968
    :pswitch_4
    const v2, 0x7f020027

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 971
    :pswitch_5
    const v2, 0x7f020028

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 974
    :pswitch_6
    const v2, 0x7f020029

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 977
    :pswitch_7
    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 980
    :pswitch_8
    const v2, 0x7f02002b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 983
    :pswitch_9
    const v2, 0x7f02002c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 986
    :pswitch_a
    const v2, 0x7f02001c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private initInternalState(Landroid/content/Intent;)V
    .locals 8
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    const-string v7, "audio/3gpp"

    const-string v6, "*/*"

    const-string v5, "audio/*"

    .line 259
    const-string v2, "audio/*"

    iput-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 260
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 261
    if-eqz p1, :cond_2

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, s:Ljava/lang/String;
    const-string v2, "audio/amr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/3gpp"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*/*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    :cond_0
    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 274
    :cond_1
    const-string v0, "android.provider.MediaStore.extra.MAX_BYTES"

    .line 275
    .local v0, EXTRA_MAX_BYTES:Ljava/lang/String;
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 278
    .end local v0           #EXTRA_MAX_BYTES:Ljava/lang/String;
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    const-string v2, "audio/*"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->getRecordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 283
    :cond_3
    :goto_0
    return-void

    .line 267
    .restart local v1       #s:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 280
    .end local v1           #s:Ljava/lang/String;
    :cond_5
    const-string v2, "*/*"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const-string v2, "audio/3gpp"

    iput-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto :goto_0
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 317
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    .line 318
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    .line 319
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    .line 320
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    .line 321
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    .line 322
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    .line 323
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    .line 324
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    .line 333
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    .line 334
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    .line 335
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/WheelImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    .line 336
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/RecordNameEditText;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    .line 338
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 339
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$4;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$4;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RecordNameEditText;->setNameChangeListener(Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;)V

    .line 348
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    .line 349
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    .line 350
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    .line 351
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStartTime:Landroid/widget/TextView;

    .line 352
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTotalTime:Landroid/widget/TextView;

    .line 353
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    .line 354
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 355
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 357
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    .line 358
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    const v1, 0x1040019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 363
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFinishButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    .line 370
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    .line 371
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/SoundRecorderPlay.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySound:I

    .line 372
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/SoundRecorderPause.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseSound:I

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    .line 375
    iput v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    .line 376
    return-void
.end method

.method private initVibratePatterns()V
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    .line 406
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    .line 407
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternRecordPlayEnd:[B

    .line 408
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternSeekEnd:[B

    .line 409
    return-void
.end method

.method private localVibrate([B)V
    .locals 4
    .parameter "pattern"

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrateEx([B)V

    .line 415
    :cond_0
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 827
    :try_start_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 828
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 833
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 831
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 832
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 833
    goto :goto_0
.end method

.method private registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$9;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$9;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 812
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 813
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 819
    :cond_0
    return-void
.end method

.method private resetFileNameEditText()V
    .locals 4

    .prologue
    .line 379
    const-string v0, ""

    .line 380
    .local v0, extension:Ljava/lang/String;
    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const-string v0, ".amr"

    .line 388
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->getRecordDir()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/soundrecorder/RecordNameEditText;->initFileName(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 389
    return-void

    .line 382
    :cond_1
    const-string v1, "audio/3gpp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string v0, ".3gpp"

    goto :goto_0
.end method

.method private saveSample()V
    .locals 4

    .prologue
    .line 714
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v2

    if-nez v2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSavedRecord:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 717
    const/4 v1, 0x0

    .line 719
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 725
    if-eqz v1, :cond_0

    .line 728
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSavedRecord:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 729
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 720
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 723
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method private setTimerView(F)V
    .locals 11
    .parameter "progress"

    .prologue
    const-wide/16 v9, 0x3c

    .line 1019
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v4}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-long v1, v4

    .line 1020
    .local v1, time:J
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v7, v1, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-long v7, v1, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, timeStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1022
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1023
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/soundrecorder/SoundRecorder;->getTimerImage(C)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    return-void
.end method

.method private showDeleteConfirmDialog()V
    .locals 3

    .prologue
    .line 734
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 735
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 736
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 737
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 738
    const v1, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$5;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$5;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$6;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$6;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 751
    return-void
.end method

.method private showOverwriteConfirmDialogIfConflicts()V
    .locals 5

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v1}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".amr"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->isRecordExisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v1, :cond_1

    .line 759
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 760
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 761
    sget-object v2, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 762
    const v2, 0x7f060013

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 763
    const v0, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$7;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$7;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$8;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$8;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 777
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 781
    :goto_1
    return-void

    .line 754
    :cond_0
    const-string v1, ".3gpp"

    goto :goto_0

    .line 779
    :cond_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecording()V

    goto :goto_1
.end method

.method private showToastForNoSd(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method private showToastForNoSd(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;

    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$10;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$10;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1335
    return-void
.end method

.method private startBackwardAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 446
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 447
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 448
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 449
    return-void
.end method

.method private startForwardAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0xc8

    const/4 v1, 0x1

    .line 438
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 439
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 440
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 441
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 442
    return-void
.end method

.method private startRecordPlayingAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x708

    const-wide/16 v2, 0x384

    const/4 v1, 0x1

    .line 418
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 419
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 420
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 421
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZ)V

    .line 422
    return-void
.end method

.method private startRecordPlayingDoneAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 432
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v4, v5, v1, v3}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 433
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 434
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/android/soundrecorder/WheelImageView;->startAnimation(JZI)V

    .line 435
    return-void
.end method

.method private startRecording()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 539
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 540
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 543
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 545
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->diskSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 547
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 548
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 549
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAudioPlayback()V

    .line 553
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->isHighQuality(Landroid/content/Context;)Z

    move-result v4

    .line 554
    .local v4, isHighQuality:Z
    const-string v0, "audio/amr"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 556
    if-eqz v4, :cond_3

    const/4 v0, 0x4

    move v1, v0

    .line 558
    .local v1, outputfileformat:I
    :goto_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v2}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".amr"

    iget-wide v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Ljava/lang/String;ZJ)V

    .line 575
    .end local v1           #outputfileformat:I
    :goto_2
    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V

    goto :goto_0

    .line 556
    :cond_3
    const/4 v0, 0x3

    move v1, v0

    goto :goto_1

    .line 560
    :cond_4
    const-string v0, "audio/3gpp"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 563
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC HD2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 564
    const/4 v4, 0x0

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const v2, 0x28000

    invoke-virtual {v0, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 568
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".3gpp"

    iget-wide v10, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    move v9, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_2

    .line 572
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output file type requested"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 453
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 454
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelLeft:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 455
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSmallWheelRight:Lcom/android/soundrecorder/WheelImageView;

    invoke-virtual {v0}, Lcom/android/soundrecorder/WheelImageView;->stopAnimation()V

    .line 456
    return-void
.end method

.method private stopAudioPlayback()V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void
.end method

.method private stopRecordPlayingAnimation()V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    .line 426
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecordPlayingDoneAnimation()V

    .line 427
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternRecordPlayEnd:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    .line 428
    return-void
.end method

.method private updateSeekBar()V
    .locals 4

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    const v1, 0x461c4000

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->playProgress()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateSeekBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1032
    :cond_0
    return-void
.end method

.method private updateTimeRemaining()V
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v0

    .line 1042
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1045
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->currentLowerLimit()I

    move-result v0

    .line 1046
    packed-switch v0, :pswitch_data_0

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1058
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 1061
    :cond_0
    return-void

    .line 1048
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 1051
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTimerView()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 998
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v2

    .line 1000
    .local v2, state:I
    if-eq v2, v10, :cond_0

    if-ne v2, v7, :cond_1

    :cond_0
    move v1, v10

    .line 1002
    .local v1, ongoing:Z
    :goto_0
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->progress()I

    move-result v6

    int-to-long v3, v6

    .line 1003
    .local v3, time:J
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    div-long v8, v3, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    rem-long v8, v3, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1004
    .local v5, timeStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1005
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1006
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/soundrecorder/SoundRecorder;->getTimerImage(C)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ongoing:Z
    .end local v3           #time:J
    .end local v5           #timeStr:Ljava/lang/String;
    :cond_1
    move v1, v11

    .line 1000
    goto :goto_0

    .line 1009
    .restart local v0       #i:I
    .restart local v1       #ongoing:Z
    .restart local v3       #time:J
    .restart local v5       #timeStr:Ljava/lang/String;
    :cond_2
    if-ne v2, v10, :cond_3

    .line 1010
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimeRemaining()V

    .line 1013
    :cond_3
    if-eqz v1, :cond_4

    .line 1014
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1016
    :cond_4
    return-void
.end method

.method private updateUi(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/high16 v2, 0x3f80

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 1117
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1229
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    .line 1230
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateSeekBar()V

    .line 1231
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateVUMeterView()V

    .line 1233
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1234
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1238
    :goto_1
    return-void

    .line 1119
    :pswitch_0
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    .line 1121
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-nez v0, :cond_3

    .line 1122
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1123
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1131
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1149
    :goto_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0, v6}, Lcom/android/soundrecorder/RecordNameEditText;->setEnabled(Z)V

    .line 1150
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 1152
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_6

    .line 1153
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1154
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    .line 1155
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->isEnabledSoundEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseSound:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1171
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1172
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1173
    const v0, 0x7f060002

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1179
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1180
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1181
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1134
    :cond_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1143
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1145
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v5}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v5}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1159
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1160
    if-nez p1, :cond_5

    .line 1161
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopRecordPlayingAnimation()V

    goto/16 :goto_3

    .line 1163
    :cond_5
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    goto/16 :goto_3

    .line 1167
    :cond_6
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    goto/16 :goto_3

    .line 1175
    :cond_7
    const v0, 0x7f060002

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(I)V

    goto/16 :goto_4

    .line 1183
    :cond_8
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1189
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1190
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1196
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1198
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0, v4}, Lcom/android/soundrecorder/RecordNameEditText;->setEnabled(Z)V

    .line 1203
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecordPlayingAnimation()V

    .line 1204
    iput v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    goto/16 :goto_0

    .line 1208
    :pswitch_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mNewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1215
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1217
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0, v4}, Lcom/android/soundrecorder/RecordNameEditText;->setEnabled(Z)V

    .line 1222
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->isEnabledSoundEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1223
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlaySound:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1225
    :cond_9
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->startRecordPlayingAnimation()V

    goto/16 :goto_0

    .line 1236
    :cond_a
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mToastViewForNoSd:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateVUMeterView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/16 v6, 0xb

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1064
    .line 1065
    new-array v0, v6, [Z

    .line 1067
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 1069
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->getMaxAmplitude()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    const v2, 0x8000

    div-int/2addr v1, v2

    .line 1070
    if-lt v1, v6, :cond_0

    .line 1071
    const/16 v1, 0xa

    .line 1074
    :cond_0
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    if-lt v1, v2, :cond_2

    .line 1075
    iput v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    :cond_1
    :goto_0
    move v2, v5

    .line 1080
    :goto_1
    if-ge v2, v6, :cond_5

    .line 1081
    if-gt v2, v1, :cond_3

    .line 1082
    aput-boolean v4, v0, v2

    .line 1080
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1076
    :cond_2
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    if-lez v2, :cond_1

    .line 1077
    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    goto :goto_0

    .line 1083
    :cond_3
    iget v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    if-ne v2, v3, :cond_4

    .line 1084
    aput-boolean v4, v0, v2

    goto :goto_2

    .line 1086
    :cond_4
    aput-boolean v5, v0, v2

    goto :goto_2

    .line 1090
    :cond_5
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateVUMetur:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1098
    :cond_6
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 1099
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1100
    array-length v1, v0

    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_9

    aget-boolean v3, v0, v2

    .line 1101
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1102
    const v5, 0x7f020003

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1103
    if-eqz v3, :cond_7

    .line 1104
    const v3, 0x7f020022

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1106
    :cond_7
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1100
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1091
    :cond_8
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 1092
    iput v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mPreviousVUMax:I

    move v1, v5

    .line 1093
    :goto_4
    if-ge v1, v6, :cond_6

    .line 1094
    aput-boolean v5, v0, v1

    .line 1093
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1111
    :cond_9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07000d

    if-ne v0, v1, :cond_0

    .line 489
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070010

    if-ne v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 495
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastClickTime:J

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 500
    :pswitch_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 501
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 502
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 503
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 504
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto :goto_0

    .line 507
    :pswitch_1
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->showOverwriteConfirmDialogIfConflicts()V

    .line 508
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto :goto_0

    .line 511
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 512
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    const v0, 0x1040018

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(I)V

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto :goto_0

    .line 518
    :pswitch_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->playProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/Recorder;->startPlayback(F)V

    .line 519
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto/16 :goto_0

    .line 522
    :pswitch_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->pausePlayback()V

    .line 523
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternCenterButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto/16 :goto_0

    .line 526
    :pswitch_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 527
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 528
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    .line 529
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto/16 :goto_0

    .line 532
    :pswitch_6
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->showDeleteConfirmDialog()V

    .line 533
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternButton:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    goto/16 :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x7f07000d
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 290
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icycle"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->initInternalState(Landroid/content/Intent;)V

    .line 212
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 214
    new-instance v1, Lcom/android/soundrecorder/Recorder;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/Recorder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 215
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, p0}, Lcom/android/soundrecorder/Recorder;->setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V

    .line 216
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;-><init>(Lcom/android/soundrecorder/SoundRecorder;Lcom/android/soundrecorder/SoundRecorder$1;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    .line 217
    new-instance v1, Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 218
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSavedRecord:Ljava/util/HashSet;

    .line 219
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mVibrator:Landroid/os/Vibrator;

    .line 221
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 222
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initVibratePatterns()V

    .line 224
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 225
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V

    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string v1, "recorder_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, recorderState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->restoreState(Landroid/os/Bundle;)V

    .line 230
    const-string v1, "sample_interrupted"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 231
    const-string v1, "max_file_size"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 235
    .end local v0           #recorderState:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->setVolumeControlStream(I)V

    .line 237
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 240
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 242
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 794
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 795
    return-void
.end method

.method public onError(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1256
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1259
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 1271
    :goto_0
    if-eqz v0, :cond_0

    .line 1272
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1275
    :cond_0
    return-void

    .line 1261
    :pswitch_0
    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1268
    :pswitch_1
    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 586
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    const/4 v0, 0x1

    .line 608
    :goto_1
    return v0

    .line 590
    :pswitch_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 595
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 596
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    goto :goto_0

    .line 599
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->clear()V

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_0

    .line 608
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 248
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    .line 249
    .local v0, preShowFinishButton:Z
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->initInternalState(Landroid/content/Intent;)V

    .line 251
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eq v0, v1, :cond_1

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 254
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 256
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1319
    :goto_0
    return v3

    .line 1301
    :pswitch_0
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 1302
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1303
    const-string v1, "record_preview_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1305
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1306
    const-string v1, "record_preview_highlight"

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1313
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1314
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x7f070017
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 674
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 677
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 678
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordNameEditText;->clearFocus()V

    .line 679
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x3b74842

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 687
    :cond_2
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    .line 688
    iput-boolean v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z

    .line 689
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V

    .line 691
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    const-string v1, "action_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 698
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 699
    return-void
.end method

.method public onPlayComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->vibratePatternRecordPlayEnd:[B

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V

    .line 1282
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1286
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1287
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1289
    :cond_0
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    .line 1291
    :cond_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move v0, v2

    .line 1292
    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "audio/amr"

    .line 614
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 615
    invoke-static {p0}, Lcom/android/soundrecorder/SoundRecorderPreferenceActivity;->getRecordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 618
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 619
    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 620
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 622
    :cond_0
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mCanRequestChanged:Z

    .line 624
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->syncStateWithService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 626
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 630
    const-string v0, "audio/amr"

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".amr"

    .line 632
    :goto_0
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 634
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 635
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    .line 657
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 658
    const-string v1, "com.android.soundrecorder.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mReceiver:Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 661
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z

    .line 662
    invoke-direct {p0, v4}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 664
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    const-string v1, "action_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 670
    :cond_3
    return-void

    .line 630
    :cond_4
    const-string v0, ".3gpp"

    goto :goto_0

    .line 638
    :cond_5
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-nez v1, :cond_6

    .line 639
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameEditText:Lcom/android/soundrecorder/RecordNameEditText;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/RecordNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_6
    const-string v0, "audio/amr"

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 644
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    goto :goto_1

    .line 645
    :cond_7
    const-string v0, "audio/3gpp"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const v1, 0x28000

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    goto :goto_1

    .line 650
    :cond_8
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 653
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v0, recorderState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->saveState(Landroid/os/Bundle;)V

    .line 306
    :cond_1
    const-string v1, "sample_interrupted"

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string v1, "max_file_size"

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 309
    const-string v1, "recorder_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1244
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1245
    :cond_0
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1249
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V

    .line 1250
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShowFinishButton:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    .line 706
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 707
    return-void
.end method
