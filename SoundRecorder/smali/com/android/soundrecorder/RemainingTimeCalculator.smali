.class public Lcom/android/soundrecorder/RemainingTimeCalculator;
.super Ljava/lang/Object;
.source "RemainingTimeCalculator.java"


# instance fields
.field private mBlocksChangedTime:J

.field private mBytesPerSecond:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentLowerLimit:I

.field private mFileSizeChangedTime:J

.field private mLastBlocks:J

.field private mLastFileSize:J

.field private mMaxBytes:J

.field private mRecordingFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 53
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    return-void
.end method


# virtual methods
.method public currentLowerLimit()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    return v0
.end method

.method public diskSpaceAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, fs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    move v1, v4

    .line 168
    .end local v0           #fs:Landroid/os/StatFs;
    :goto_0
    return v1

    .restart local v0       #fs:Landroid/os/StatFs;
    :cond_0
    move v1, v3

    .line 166
    goto :goto_0

    .line 168
    .end local v0           #fs:Landroid/os/StatFs;
    :cond_1
    iget-object v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/os/Environment;->isInternalStorageLow(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 75
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 76
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 77
    return-void
.end method

.method public setBitRate(I)V
    .locals 1
    .parameter "bitRate"

    .prologue
    .line 177
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    .line 178
    return-void
.end method

.method public setFileSizeLimit(Ljava/io/File;J)V
    .locals 0
    .parameter "file"
    .parameter "maxBytes"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 67
    iput-wide p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    .line 68
    return-void
.end method

.method public timeRemaining()J
    .locals 20

    .prologue
    .line 84
    const/4 v9, 0x0

    .line 85
    .local v9, fs:Landroid/os/StatFs;
    const-wide/16 v5, -0x1

    .line 86
    .local v5, blocks:J
    const-wide/16 v3, -0x1

    .line 87
    .local v3, blockSize:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 89
    .local v10, now:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 90
    new-instance v9, Landroid/os/StatFs;

    .end local v9           #fs:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v9       #fs:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    const/16 v17, 0x20

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    .line 93
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v3, v0

    .line 94
    const-wide/16 v16, 0x0

    cmp-long v16, v5, v16

    if-gez v16, :cond_0

    .line 95
    const-wide/16 v5, 0x0

    .line 108
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v16, v0

    cmp-long v16, v5, v16

    if-eqz v16, :cond_2

    .line 109
    :cond_1
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 110
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v16, v0

    mul-long v16, v16, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v12, v16, v18

    .line 123
    .local v12, result:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v12, v12, v16

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 126
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    move-wide/from16 v16, v12

    .line 146
    :goto_1
    return-wide v16

    .line 98
    .end local v12           #result:J
    :cond_3
    new-instance v9, Landroid/os/StatFs;

    .end local v9           #fs:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v9       #fs:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v3, v0

    .line 101
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Secure;->getStorageThreshold(Landroid/content/ContentResolver;)J

    move-result-wide v18

    div-long v18, v18, v3

    sub-long v5, v16, v18

    .line 103
    const-wide/16 v16, 0x0

    cmp-long v16, v5, v16

    if-gez v16, :cond_0

    .line 104
    const-wide/16 v5, 0x0

    goto/16 :goto_0

    .line 133
    .restart local v12       #result:J
    :cond_4
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 135
    .local v7, fileSize:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    move-wide/from16 v16, v0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_6

    .line 136
    :cond_5
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 137
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    .line 140
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v14, v16, v18

    .line 141
    .local v14, result2:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v14, v14, v16

    .line 142
    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    .line 144
    cmp-long v16, v12, v14

    if-gez v16, :cond_7

    const/16 v16, 0x2

    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 146
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto/16 :goto_1

    .line 144
    :cond_7
    const/16 v16, 0x1

    goto :goto_2
.end method
