.class public Lcom/miui/camera/gallery/VideoObject;
.super Lcom/miui/camera/gallery/BaseImage;
.source "VideoObject.java"

# interfaces
.implements Lcom/miui/camera/gallery/IImage;


# direct methods
.method protected constructor <init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V
    .locals 0
    .parameter "cr"
    .parameter "id"
    .parameter "uri"
    .parameter "miniThumbMagic"
    .parameter "dateTaken"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/miui/camera/gallery/BaseImage;-><init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 33
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/camera/gallery/VideoObject;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 34
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/miui/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/miui/camera/gallery/VideoObject;

    .end local p1
    invoke-virtual {p1}, Lcom/miui/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/miui/camera/gallery/VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 46
    :try_start_0
    iget-wide v2, p0, Lcom/miui/camera/gallery/BaseImage;->mId:J

    .line 47
    .local v2, id:J
    invoke-static {}, Lcom/miui/camera/BitmapManager;->instance()Lcom/miui/camera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/camera/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    .end local v2           #id:J
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 50
    .local v7, ex:Ljava/lang/Throwable;
    const-string v0, "com.miui.camera.gallery.VideoObject"

    const-string v1, "miniThumbBitmap got exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 51
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoObject"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/miui/camera/gallery/BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
