.class public Lcom/android/soundrecorder/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/Recorder$OnStateChangedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSampleDir:Ljava/io/File;

.field private mSampleFile:Ljava/io/File;

.field private mSampleLength:I

.field private mSampleStart:J

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v5, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 53
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 55
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 58
    iput v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 60
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 62
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    .line 64
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 67
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sound_recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, sampleDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    .line 79
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->syncStateWithService()Z

    .line 80
    return-void

    .line 74
    :cond_1
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v4, v4}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 207
    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 208
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 209
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 192
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 196
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 198
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 199
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRecordExisted(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 237
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 334
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onPlayComplete(Landroid/media/MediaPlayer;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 329
    return v0
.end method

.method public pausePlayback()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 308
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0
.end method

.method public playProgress()F
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 145
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 153
    :goto_0
    return v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameSampleFile(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, oldName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, extension:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, newFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 184
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #newFile:Ljava/io/File;
    .end local v2           #oldName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 214
    iput v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 216
    iput v3, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 218
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sound_recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, sampleDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    .line 229
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 230
    return-void

    .line 224
    :cond_1
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v4, v4}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "recorderState"

    .prologue
    const/4 v4, -0x1

    .line 115
    const-string v3, "sample_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, samplePath:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v3, "sample_length"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, sampleLength:I
    if-eq v1, v4, :cond_0

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->delete()V

    .line 130
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 131
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 133
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "recorderState"

    .prologue
    .line 100
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "sample_length"

    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onError(I)V

    .line 354
    :cond_0
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 138
    return-void
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 339
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 343
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public startPlayback(F)V
    .locals 6
    .parameter "percentage"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 271
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 273
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 274
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 275
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 300
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 279
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 285
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 286
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 298
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 288
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v5}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 289
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 293
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public startRecording(ILjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 7
    .parameter "outputfileformat"
    .parameter "name"
    .parameter "extension"
    .parameter "highQuality"
    .parameter "maxFileSize"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 244
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 246
    :try_start_0
    const-string v0, "recording"

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleDir:Ljava/io/File;

    invoke-static {v0, p3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 247
    invoke-virtual {p0, p2}, Lcom/android/soundrecorder/Recorder;->renameSampleFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/soundrecorder/RecorderService;->startRecording(Landroid/content/Context;ILjava/lang/String;ZJ)V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 257
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 249
    .local v6, e:Ljava/io/IOException;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    goto :goto_0
.end method

.method public state()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopRecording()V

    .line 323
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopPlayback()V

    .line 324
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 316
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 260
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/soundrecorder/RecorderService;->stopRecording(Landroid/content/Context;)V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 263
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 268
    :cond_0
    return-void
.end method

.method public syncStateWithService()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 85
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    move v0, v2

    .line 96
    :goto_0
    return v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    if-nez v0, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    :cond_2
    move v0, v2

    .line 96
    goto :goto_0
.end method
