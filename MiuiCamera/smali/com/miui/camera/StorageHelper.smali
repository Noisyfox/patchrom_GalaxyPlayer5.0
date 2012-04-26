.class public Lcom/miui/camera/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# static fields
.field private static EXTERNAL_STORAGE_THRESHOLD:J

.field private static final TAG:Ljava/lang/String;

.field private static sAvailableStorage:J

.field private static sChecked:Z

.field private static sState:I

.field private static sUseInternalStorage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/miui/camera/StorageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/StorageHelper;->TAG:Ljava/lang/String;

    .line 27
    const-wide/32 v0, 0x16e360

    sput-wide v0, Lcom/miui/camera/StorageHelper;->EXTERNAL_STORAGE_THRESHOLD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFsWritable()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const/16 v2, 0x1ff

    invoke-static {v0, v2, v4, v4}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 142
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    goto :goto_0
.end method

.method public static checkStorageState(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 41
    sget-object v4, Lcom/miui/camera/StorageHelper;->TAG:Ljava/lang/String;

    const-string v5, "checkStorageState"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v8

    :goto_0
    sput-boolean v4, Lcom/miui/camera/StorageHelper;->sUseInternalStorage:Z

    .line 44
    :try_start_0
    invoke-static {}, Lcom/miui/camera/StorageHelper;->hasStorage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 45
    const/4 v4, -0x1

    sput v4, Lcom/miui/camera/StorageHelper;->sState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    sput-boolean v8, Lcom/miui/camera/StorageHelper;->sChecked:Z

    .line 74
    sget v4, Lcom/miui/camera/StorageHelper;->sState:I

    return v4

    :cond_0
    move v4, v6

    .line 42
    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sput-wide v4, Lcom/miui/camera/StorageHelper;->sAvailableStorage:J

    .line 50
    sget-boolean v4, Lcom/miui/camera/StorageHelper;->sUseInternalStorage:Z

    if-eqz v4, :cond_3

    .line 51
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getStorageThreshold(Landroid/content/ContentResolver;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 53
    .local v1, internalStorageThreshold:Ljava/lang/Long;
    sget-wide v4, Lcom/miui/camera/StorageHelper;->sAvailableStorage:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 54
    const/4 v4, -0x2

    sput v4, Lcom/miui/camera/StorageHelper;->sState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 66
    .end local v1           #internalStorageThreshold:Ljava/lang/Long;
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 70
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, -0x8

    sput v4, Lcom/miui/camera/StorageHelper;->sState:I

    goto :goto_1

    .line 56
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #internalStorageThreshold:Ljava/lang/Long;
    .restart local v2       #stat:Landroid/os/StatFs;
    .restart local v3       #storageDirectory:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    sput v4, Lcom/miui/camera/StorageHelper;->sState:I

    goto :goto_1

    .line 59
    .end local v1           #internalStorageThreshold:Ljava/lang/Long;
    :cond_3
    sget-wide v4, Lcom/miui/camera/StorageHelper;->sAvailableStorage:J

    sget-wide v6, Lcom/miui/camera/StorageHelper;->EXTERNAL_STORAGE_THRESHOLD:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 60
    const/4 v4, -0x3

    sput v4, Lcom/miui/camera/StorageHelper;->sState:I

    goto :goto_1

    .line 62
    :cond_4
    const/4 v4, 0x0

    sput v4, Lcom/miui/camera/StorageHelper;->sState:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static getAvailableStorage()J
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/miui/camera/StorageHelper;->sChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/camera/StorageHelper;->checkStorageState(Landroid/content/ContentResolver;)I

    .line 97
    :cond_0
    sget-wide v0, Lcom/miui/camera/StorageHelper;->sAvailableStorage:J

    return-wide v0
.end method

.method public static getStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/miui/camera/StorageHelper;->sUseInternalStorage:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStorageState()I
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/miui/camera/StorageHelper;->sChecked:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/camera/StorageHelper;->sState:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/camera/StorageHelper;->checkStorageState(Landroid/content/ContentResolver;)I

    move-result v0

    goto :goto_0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/camera/StorageHelper;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .parameter "requireWriteAccess"

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    if-eqz p0, :cond_0

    .line 117
    invoke-static {}, Lcom/miui/camera/StorageHelper;->checkFsWritable()Z

    move-result v1

    .line 127
    .end local v0           #state:Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0       #state:Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_1
    if-nez p0, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    .end local v0           #state:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/miui/camera/StorageHelper;->checkFsWritable()Z

    move-result v1

    goto :goto_0
.end method

.method public static isStorageValid()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    sget v0, Lcom/miui/camera/StorageHelper;->sState:I

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/camera/StorageHelper;->sState:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExternalStorageThreshold(J)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 78
    sput-wide p0, Lcom/miui/camera/StorageHelper;->EXTERNAL_STORAGE_THRESHOLD:J

    .line 79
    return-void
.end method

.method public static storageChanged()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/camera/StorageHelper;->sChecked:Z

    .line 102
    return-void
.end method

.method public static useInternalStorage()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/miui/camera/StorageHelper;->sChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/camera/StorageHelper;->checkStorageState(Landroid/content/ContentResolver;)I

    .line 92
    :cond_0
    sget-boolean v0, Lcom/miui/camera/StorageHelper;->sUseInternalStorage:Z

    return v0
.end method
