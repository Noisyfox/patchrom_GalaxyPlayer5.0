.class public Lcom/miui/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/BitmapManager$1;,
        Lcom/miui/camera/BitmapManager$ThreadStatus;,
        Lcom/miui/camera/BitmapManager$State;
    }
.end annotation


# static fields
.field private static sManager:Lcom/miui/camera/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/miui/camera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/camera/BitmapManager;->sManager:Lcom/miui/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 53
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/miui/camera/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/camera/BitmapManager$ThreadStatus;

    .line 60
    .local v0, status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/miui/camera/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/camera/BitmapManager$ThreadStatus;-><init>(Lcom/miui/camera/BitmapManager$1;)V

    .line 62
    .restart local v0       #status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/miui/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-object v0

    .line 59
    .end local v0           #status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/miui/camera/BitmapManager;
    .locals 2

    .prologue
    .line 110
    const-class v0, Lcom/miui/camera/BitmapManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/camera/BitmapManager;->sManager:Lcom/miui/camera/BitmapManager;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/miui/camera/BitmapManager;

    invoke-direct {v1}, Lcom/miui/camera/BitmapManager;-><init>()V

    sput-object v1, Lcom/miui/camera/BitmapManager;->sManager:Lcom/miui/camera/BitmapManager;

    .line 113
    :cond_0
    sget-object v1, Lcom/miui/camera/BitmapManager;->sManager:Lcom/miui/camera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 5
    .parameter "t"

    .prologue
    const/4 v4, 0x1

    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/camera/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v1, status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    move v2, v4

    .line 75
    :goto_0
    monitor-exit p0

    return v2

    .line 74
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/miui/camera/BitmapManager$ThreadStatus;->mState:Lcom/miui/camera/BitmapManager$State;

    sget-object v3, Lcom/miui/camera/BitmapManager$State;->CANCEL:Lcom/miui/camera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    move v0, v4

    .local v0, result:Z
    :goto_1
    move v2, v0

    .line 75
    goto :goto_0

    .line 74
    .end local v0           #result:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 68
    .end local v1           #status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"
    .parameter "isVideo"

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 87
    .local v9, t:Ljava/lang/Thread;
    invoke-direct {p0, v9}, Lcom/miui/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/miui/camera/BitmapManager$ThreadStatus;

    move-result-object v8

    .line 89
    .local v8, status:Lcom/miui/camera/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v9}, Lcom/miui/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "com.miui.camera.BitmapManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to decode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 95
    :cond_0
    if-eqz p6, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v7

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 103
    monitor-enter v8

    .line 104
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 99
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v7

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 103
    monitor-enter v8

    .line 104
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 103
    :catchall_2
    move-exception v0

    monitor-enter v8

    .line 104
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
