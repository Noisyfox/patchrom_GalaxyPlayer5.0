.class public abstract Lcom/miui/camera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/miui/camera/gallery/IImage;


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field private final mDateTaken:J

.field protected mId:J

.field protected mUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V
    .locals 0
    .parameter "cr"
    .parameter "id"
    .parameter "uri"
    .parameter "miniThumbMagic"
    .parameter "dateTaken"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 30
    iput-wide p2, p0, Lcom/miui/camera/gallery/BaseImage;->mId:J

    .line 31
    iput-object p4, p0, Lcom/miui/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    .line 32
    iput-wide p7, p0, Lcom/miui/camera/gallery/BaseImage;->mDateTaken:J

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/camera/gallery/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 38
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/miui/camera/gallery/Image;

    .end local p1
    iget-object v1, p1, Lcom/miui/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/miui/camera/gallery/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 59
    const/4 v7, 0x0

    .line 61
    .local v7, b:Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v2, p0, Lcom/miui/camera/gallery/BaseImage;->mId:J

    .line 62
    .local v2, id:J
    invoke-static {}, Lcom/miui/camera/BitmapManager;->instance()Lcom/miui/camera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/camera/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 68
    if-eqz v7, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/miui/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v0

    invoke-static {v7, v0}, Lcom/miui/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    move-object v0, v7

    .line 71
    .end local v2           #id:J
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 65
    .local v8, ex:Ljava/lang/Throwable;
    const-string v0, "com.miui.camera.gallery.BaseImage"

    const-string v1, "miniThumbBitmap got exception"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 66
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
