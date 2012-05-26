.class public Lcom/android/settings/DeviceInfoSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeviceInfoSettings.java"


# instance fields
.field private mMiuiCopyright:Landroid/preference/Preference;

.field private mMiuiPrivacyPolicy:Landroid/preference/Preference;

.field private mMiuiUserAgreement:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private fillOverview()V
    .locals 30

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getTotalMemory()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v23

    .local v23, totalRam:Ljava/lang/String;
    const v25, 0x7f0c0066

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .local v16, model:Landroid/widget/TextView;
    sget-object v25, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v25, 0x7f0c0067

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .local v18, release:Landroid/widget/TextView;
    sget-object v25, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v25, 0x7f0c0068

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .local v9, cpu:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getCpuInfo()Ljava/lang/String;

    move-result-object v25

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v25, 0x7f0c0069

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .local v15, memory:Landroid/widget/TextView;
    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v17

    .local v17, path:Ljava/io/File;
    new-instance v19, Landroid/os/StatFs;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .local v19, stat:Landroid/os/StatFs;
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v7, v0

    .local v7, blockSize:J
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v4, v0

    .local v4, availableBlocks:J
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .local v21, totalBlocks:J
    const v25, 0x7f0c006a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .local v13, internalMemoryAvailable:Landroid/widget/TextView;
    const v25, 0x7f09042b

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    mul-long v28, v4, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v25, 0x7f0c006b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .local v14, internalMemoryTotal:Landroid/widget/TextView;
    const v25, 0x7f09042c

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    mul-long v28, v21, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    new-instance v19, Landroid/os/StatFs;

    .end local v19           #stat:Landroid/os/StatFs;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .restart local v19       #stat:Landroid/os/StatFs;
    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v7, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v4, v0

    const v25, 0x7f0c006f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, deviceSdcardTotal:Landroid/widget/TextView;
    const v25, 0x7f0c006e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .local v11, deviceSdcardTitle:Landroid/widget/TextView;
    const v25, 0x7f0c006c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .local v6, availableView:Landroid/view/View;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .local v20, storageState:Ljava/lang/String;
    const-string v25, "mounted"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    const v25, 0x7f09042b

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    mul-long v28, v4, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, availSd:Ljava/lang/String;
    const v25, 0x7f09042c

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    mul-long v28, v21, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .local v24, totalSd:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v25, 0x7f0c006d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, deviceSdcardAvailable:Landroid/widget/TextView;
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v25, ""

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .end local v3           #availSd:Ljava/lang/String;
    .end local v10           #deviceSdcardAvailable:Landroid/widget/TextView;
    .end local v24           #totalSd:Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    const-string v25, "shared"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    const v25, 0x7f09042d

    move-object v0, v12

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v25, 0x7f090433

    move-object v0, v11

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v25, 0x8

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const v25, 0x7f0901df

    move-object v0, v12

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v25, 0x7f090433

    move-object v0, v11

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v25, 0x8

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCpuInfo()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v6, 0x0

    .local v6, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/sys/devices/system/cpu"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, cpuDir:Ljava/io/File;
    new-instance v10, Lcom/android/settings/DeviceInfoSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/DeviceInfoSettings$2;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v2, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .local v4, cpus:[Ljava/lang/String;
    const-string v1, ""

    .local v1, cpuCount:Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    const v10, 0x7f090453

    invoke-virtual {p0, v10}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .local v0, cpuConfigFile:Ljava/lang/String;
    sget-boolean v10, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v10, :cond_1

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    :cond_1
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .local v5, fr:Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v7, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .local v7, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, str:Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0xc

    add-long/2addr v10, v12

    const-wide/16 v12, 0x19

    div-long/2addr v10, v12

    const-wide/16 v12, 0x19

    mul-long/2addr v10, v12

    long-to-float v3, v10

    .local v3, cpuMaxfreq:F
    const-string v9, "MHz"

    .local v9, unit:Ljava/lang/String;
    const/high16 v10, 0x447a

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_2

    const/high16 v10, 0x447a

    div-float/2addr v3, v10

    const-string v9, "GHz"

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v10

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_0
    move-object v6, v7

    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v3           #cpuMaxfreq:F
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #unit:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :goto_1
    return-object v10

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_7

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v8           #str:Ljava/lang/String;
    :catch_1
    move-exception v10

    :goto_3
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v6, :cond_6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_5
    throw v10

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v3       #cpuMaxfreq:F
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    .restart local v9       #unit:Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_0

    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v3           #cpuMaxfreq:F
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #unit:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    goto :goto_5

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_7
    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x4

    const-string v6, "\n"

    const-string v10, "Unavailable"

    const-string v9, "DeviceInfoSettings"

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, procVersionStr:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex did not match on /proc/version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Unavailable"

    move-object v6, v10

    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_0
    return-object v6

    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/io/IOException;
    const-string v6, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v9, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v6, "Unavailable"

    move-object v6, v10

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ge v6, v8, :cond_1

    const-string v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex match on /proc/version only returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " groups"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Unavailable"

    move-object v6, v10

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method private getTotalMemory()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    const-wide/16 v2, 0x0

    .local v2, memorySize:J
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MemTotal:"

    aput-object v5, v0, v4

    .local v0, memInfoFields:[Ljava/lang/String;
    array-length v4, v0

    new-array v1, v4, [J

    .local v1, memInfoSizes:[J
    const-string v4, "/proc/meminfo"

    invoke-static {v4, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const-wide/32 v6, 0x40000

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x100

    mul-long/2addr v4, v6

    mul-long v2, v4, v8

    mul-long/2addr v2, v8

    .end local v0           #memInfoFields:[Ljava/lang/String;
    .end local v1           #memInfoSizes:[J
    :goto_0
    return-wide v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v10, "safetylegal"

    const-string v9, "container"

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setFormat(I)V

    const v4, 0x7f040015

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030047

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, logo:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030025

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, deviceInfo:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const-string v4, "status_info"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    const-string v4, "container"

    invoke-virtual {p0, v9}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    const-string v4, "safetylegal"

    invoke-virtual {p0, v10}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    const v4, 0x7f0c0065

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/settings/DeviceInfoSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceInfoSettings$1;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "baseband_version"

    const-string v5, "gsm.version.baseband"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "build_number"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUI-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "kernel_version"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v4, "parent"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .local v3, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v4, "safetylegal"

    const-string v4, "ro.url.safetylegal"

    invoke-direct {p0, v3, v10, v4}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "container"

    invoke-virtual {p0, v9}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #parentPreference:Landroid/preference/PreferenceGroup;
    check-cast v3, Landroid/preference/PreferenceGroup;

    .restart local v3       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v4, "terms"

    invoke-static {p0, v3, v4, v7}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v4, "license"

    invoke-static {p0, v3, v4, v7}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v4, "copyright"

    invoke-static {p0, v3, v4, v7}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v4, "team"

    invoke-static {p0, v3, v4, v7}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "contributors"

    invoke-static {p0, v3, v4, v7}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v4, "miuiCopyright"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mMiuiCopyright:Landroid/preference/Preference;

    const-string v4, "miuiUserAgreement"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mMiuiUserAgreement:Landroid/preference/Preference;

    const-string v4, "miuiPrivacyPolicy"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mMiuiPrivacyPolicy:Landroid/preference/Preference;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mMiuiCopyright:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/android/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mMiuiUserAgreement:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    sget-object v1, Lcom/android/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mMiuiPrivacyPolicy:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->fillOverview()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    const v0, 0x7f030024

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    return-void
.end method
