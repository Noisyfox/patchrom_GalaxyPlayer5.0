.class public abstract Lcom/miui/camera/gallery/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/miui/camera/gallery/IImageList;


# instance fields
.field protected mBaseUri:Landroid/net/Uri;

.field protected mBucketId:Ljava/lang/String;

.field private final mCache:Lcom/miui/camera/gallery/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/camera/gallery/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/camera/gallery/BaseImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorDeactivated:Z

.field protected mSort:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/miui/camera/gallery/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/miui/camera/gallery/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCache:Lcom/miui/camera/gallery/LruCache;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    .line 30
    iput p3, p0, Lcom/miui/camera/gallery/BaseImageList;->mSort:I

    .line 31
    iput-object p2, p0, Lcom/miui/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 32
    iput-object p4, p0, Lcom/miui/camera/gallery/BaseImageList;->mBucketId:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/miui/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    invoke-virtual {p0}, Lcom/miui/camera/gallery/BaseImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 36
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "com.miui.camera.gallery.BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCache:Lcom/miui/camera/gallery/LruCache;

    invoke-virtual {v0}, Lcom/miui/camera/gallery/LruCache;->clear()V

    .line 44
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/camera/gallery/BaseImageList;->invalidateCursor()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    iput-object v3, p0, Lcom/miui/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    iget-object v1, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    iput-object v3, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 58
    :cond_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "com.miui.camera.gallery.BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public contentUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "id"

    .prologue
    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/miui/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 67
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const-string v3, "com.miui.camera.gallery.BaseImageList"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/miui/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1           #existingId:J
    :goto_0
    return-object v3

    .line 69
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 71
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/miui/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract createCursor()Landroid/database/Cursor;
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    .line 78
    :cond_0
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getImageAt(I)Lcom/miui/camera/gallery/IImage;
    .locals 5
    .parameter "i"

    .prologue
    const/4 v4, 0x0

    .line 99
    iget-object v2, p0, Lcom/miui/camera/gallery/BaseImageList;->mCache:Lcom/miui/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/camera/gallery/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/camera/gallery/BaseImage;

    .line 100
    .local v1, result:Lcom/miui/camera/gallery/BaseImage;
    if-nez v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/miui/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 102
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v2, v4

    .line 110
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 103
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/camera/gallery/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/miui/camera/gallery/BaseImage;

    move-result-object v2

    move-object v1, v2

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/miui/camera/gallery/BaseImageList;->mCache:Lcom/miui/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/miui/camera/gallery/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit p0

    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    move-object v2, v1

    .line 110
    goto :goto_0

    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2
    move-object v1, v4

    .line 104
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected invalidateCursor()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/miui/camera/gallery/BaseImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadImageFromCursor(Landroid/database/Cursor;)Lcom/miui/camera/gallery/BaseImage;
.end method

.method protected sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    iget v2, p0, Lcom/miui/camera/gallery/BaseImageList;->mSort:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, " ASC"

    move-object v0, v2

    .line 136
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 144
    .local v1, dateExpr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
    .end local v0           #ascending:Ljava/lang/String;
    .end local v1           #dateExpr:Ljava/lang/String;
    :cond_0
    const-string v2, " DESC"

    move-object v0, v2

    goto :goto_0
.end method
