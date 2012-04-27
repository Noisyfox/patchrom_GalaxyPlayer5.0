.class public Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"

# interfaces
.implements Lcom/android/browser/WebStorageSizeManager$DiskInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebStorageSizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatFsDiskInfo"
.end annotation


# instance fields
.field private mFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    .line 139
    return-void
.end method


# virtual methods
.method public getFreeSpaceSizeBytes()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalSizeBytes()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;->mFs:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
