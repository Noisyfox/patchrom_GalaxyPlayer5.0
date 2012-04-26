.class public Lcom/android/soundrecorder/RecorderService;
.super Landroid/app/Service;
.source "RecorderService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# static fields
.field private static mFilePath:Ljava/lang/String;

.field private static mRecorder:Landroid/media/MediaRecorder;

.field private static mStartTime:J


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLowStorageNotification:Landroid/app/Notification;

.field private mNeedUpdateRemainingTime:Z

.field private mNotifiManager:Landroid/app/NotificationManager;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mUpdateRemainingTime:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 57
    sput-object v0, Lcom/android/soundrecorder/RecorderService;->mFilePath:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/soundrecorder/RecorderService;->mStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Lcom/android/soundrecorder/RecorderService$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/RecorderService$1;-><init>(Lcom/android/soundrecorder/RecorderService;)V

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/android/soundrecorder/RecorderService$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/RecorderService$2;-><init>(Lcom/android/soundrecorder/RecorderService;)V

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mUpdateRemainingTime:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/RecorderService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->localStopRecording()V

    return-void
.end method

.method static synthetic access$100()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/RecorderService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/RecorderService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->updateRemainingTime()V

    return-void
.end method

.method public static getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxAmplitude()I
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public static getStartTime()J
    .locals 2

    .prologue
    .line 336
    sget-wide v0, Lcom/android/soundrecorder/RecorderService;->mStartTime:J

    return-wide v0
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private localStartRecording(ILjava/lang/String;ZJ)V
    .locals 10
    .parameter "outputfileformat"
    .parameter "path"
    .parameter "highQuality"
    .parameter "maxFileSize"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 165
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 167
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, p4, p5}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V

    .line 171
    :cond_0
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 172
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 173
    if-ne p1, v5, :cond_3

    .line 174
    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const v4, 0x28000

    invoke-virtual {v3, v4}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 175
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz p3, :cond_2

    const v4, 0xac44

    :goto_0
    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 176
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 177
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 185
    :goto_1
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 186
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 190
    :try_start_0
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    sput-object p2, Lcom/android/soundrecorder/RecorderService;->mFilePath:Ljava/lang/String;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/android/soundrecorder/RecorderService;->mStartTime:J

    .line 216
    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 217
    iput-boolean v7, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    .line 218
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->sendStateBroadcast()V

    .line 219
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->showRecordingNotification()V

    .line 221
    :cond_1
    :goto_2
    return-void

    .line 175
    :cond_2
    const/16 v4, 0x5622

    goto :goto_0

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 180
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz p3, :cond_4

    const/16 v4, 0x3e80

    :goto_3
    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 181
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 182
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz p3, :cond_5

    move v4, v6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_1

    .line 180
    :cond_4
    const/16 v4, 0x1f40

    goto :goto_3

    :cond_5
    move v4, v5

    .line 182
    goto :goto_4

    .line 191
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 192
    .local v1, exception:Ljava/io/IOException;
    invoke-direct {p0, v6}, Lcom/android/soundrecorder/RecorderService;->sendErrorBroadcast(I)V

    .line 193
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 194
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 195
    sput-object v9, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_2

    .line 201
    .end local v1           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 202
    .local v1, exception:Ljava/lang/RuntimeException;
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 203
    .local v0, audioMngr:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-ne v3, v6, :cond_6

    move v2, v5

    .line 204
    .local v2, isInCall:Z
    :goto_5
    if-eqz v2, :cond_7

    .line 205
    invoke-direct {p0, v8}, Lcom/android/soundrecorder/RecorderService;->sendErrorBroadcast(I)V

    .line 209
    :goto_6
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 210
    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 211
    sput-object v9, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_2

    .end local v2           #isInCall:Z
    :cond_6
    move v2, v7

    .line 203
    goto :goto_5

    .line 207
    .restart local v2       #isInCall:Z
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/soundrecorder/RecorderService;->sendErrorBroadcast(I)V

    goto :goto_6
.end method

.method private localStopRecording()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 224
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    .line 227
    :try_start_0
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 233
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mFilePath:Ljava/lang/String;

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 235
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->sendStateBroadcast()V

    .line 236
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->showStoppedNotification()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stopSelf()V

    .line 239
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendErrorBroadcast(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.soundrecorder.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    return-void
.end method

.method private sendStateBroadcast()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.soundrecorder.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_recording"

    sget-object v2, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/RecorderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    return-void

    .line 301
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showLowStorageNotification(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108009f

    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    .line 264
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 268
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f06001e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/soundrecorder/RecorderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 272
    const v0, 0x3b74842

    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/android/soundrecorder/RecorderService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showRecordingNotification()V
    .locals 7

    .prologue
    const v6, 0x7f06001c

    const/4 v5, 0x0

    .line 242
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108009e

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 244
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 249
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 252
    const v1, 0x3b74842

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/RecorderService;->startForeground(ILandroid/app/Notification;)V

    .line 253
    return-void
.end method

.method private showStoppedNotification()V
    .locals 7

    .prologue
    const v6, 0x7f06001d

    const/4 v5, 0x1

    .line 276
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/RecorderService;->stopForeground(Z)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    .line 279
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108009e

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 281
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 282
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    const-string v2, "record_preview_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string v2, "record_preview_highlight"

    sget-object v3, Lcom/android/soundrecorder/RecorderService;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 294
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/RecorderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 296
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mNotifiManager:Landroid/app/NotificationManager;

    const v2, 0x3b74842

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 297
    return-void
.end method

.method public static startRecording(Landroid/content/Context;ILjava/lang/String;ZJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    const-string v1, "action_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v1, "format"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "high_quality"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string v1, "max_file_size"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 348
    return-void
.end method

.method public static stopRecording(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/soundrecorder/RecorderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    const-string v1, "action_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 354
    return-void
.end method

.method private updateRemainingTime()V
    .locals 6

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v0

    .line 313
    .local v0, t:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->localStopRecording()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-wide/16 v2, 0x708

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;->currentLowerLimit()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 319
    long-to-double v2, v0

    const-wide/high16 v4, 0x404e

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/RecorderService;->showLowStorageNotification(I)V

    .line 322
    :cond_2
    sget-object v2, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/soundrecorder/RecorderService;->mUpdateRemainingTime:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    sput-object v1, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    .line 98
    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mLowStorageNotification:Landroid/app/Notification;

    .line 99
    new-instance v1, Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    .line 101
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mNotifiManager:Landroid/app/NotificationManager;

    .line 102
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 103
    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/soundrecorder/RecorderService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 104
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 105
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "SoundRecorder"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/RecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 147
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 150
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 362
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/RecorderService;->sendErrorBroadcast(I)V

    .line 363
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->localStopRecording()V

    .line 364
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->localStopRecording()V

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 162
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const-string v2, "action_type"

    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 112
    .local v6, bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v0, "action_type"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "action_type"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v7

    .line 141
    :goto_1
    return v0

    .line 115
    :pswitch_0
    const-string v0, "format"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "path"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "high_quality"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "max_file_size"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/RecorderService;->localStartRecording(ILjava/lang/String;ZJ)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->localStopRecording()V

    goto :goto_0

    .line 125
    :pswitch_2
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 126
    iput-boolean v7, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    .line 127
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/RecorderService;->mUpdateRemainingTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 131
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z

    .line 132
    sget-object v0, Lcom/android/soundrecorder/RecorderService;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/soundrecorder/RecorderService;->showRecordingNotification()V

    goto :goto_0

    .line 141
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
