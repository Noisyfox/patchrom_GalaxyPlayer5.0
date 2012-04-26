.class public Lcom/miui/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/ImageManager$1;,
        Lcom/miui/camera/ImageManager$EmptyImageList;,
        Lcom/miui/camera/ImageManager$ImageListParam;,
        Lcom/miui/camera/ImageManager$DataLocation;
    }
.end annotation


# static fields
.field public static CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

.field public static CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

.field private static STORAGE_URI:Landroid/net/Uri;

.field private static VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/camera/StorageHelper;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 7
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, outputStream:Ljava/io/OutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v0, v3, v4, v5}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 191
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local v3, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_3

    .line 194
    :try_start_1
    sget-object p8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p8
    const/16 v0, 0x4b

    invoke-virtual {p7, p8, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 195
    .end local v0           #file:Ljava/io/File;
    const/4 p7, 0x0

    const/4 p8, 0x0

    aput p8, p9, p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 207
    .end local p7
    :goto_0
    invoke-static {v3}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 209
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 210
    const/16 p7, 0x1ff

    const/4 p8, -0x1

    const/4 v0, -0x1

    invoke-static {v1, p7, p8, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 214
    :cond_1
    new-instance p7, Ljava/io/File;

    invoke-direct {p7, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/io/File;->length()J

    move-result-wide p7

    .line 216
    .local p7, size:J
    new-instance p5, Landroid/content/ContentValues;

    .end local p5
    const/16 v0, 0x9

    invoke-direct {p5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 217
    .local p5, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {p5, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string p1, "_display_name"

    .end local p1
    invoke-virtual {p5, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string p1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string p1, "orientation"

    const/4 p2, 0x0

    aget p2, p9, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string p1, "_data"

    invoke-virtual {p5, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string p1, "_size"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    if-eqz p4, :cond_2

    .line 230
    const-string p1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 231
    const-string p1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 234
    :cond_2
    sget-object p1, Lcom/miui/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .end local p5           #values:Landroid/content/ContentValues;
    .end local p7           #size:J
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object p1

    .line 197
    .restart local v0       #file:Ljava/io/File;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .local p5, directory:Ljava/lang/String;
    .local p7, source:Landroid/graphics/Bitmap;
    .restart local p8
    :cond_3
    :try_start_2
    invoke-virtual {v3, p8}, Ljava/io/FileOutputStream;->write([B)V

    .line 198
    const/4 p7, 0x0

    invoke-static {v1}, Lcom/miui/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    .end local p7           #source:Landroid/graphics/Bitmap;
    move-result p8

    .end local p8
    aput p8, p9, p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 200
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception p0

    move-object p1, v3

    .line 201
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string p2, "com.miui.camera.ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    const/4 p0, 0x0

    .line 207
    .end local p0           #ex:Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v6, outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 203
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_1
    move-exception p0

    move-object p1, v2

    .line 204
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, ex:Ljava/io/IOException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string p2, "com.miui.camera.ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 205
    const/4 p0, 0x0

    .line 207
    .end local p0           #ex:Ljava/io/IOException;
    invoke-static {p1}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p2
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-static {p0}, Lcom/miui/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #title:Ljava/lang/String;
    .restart local p2
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .end local p0           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p1, outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception p0

    move-object v6, p0

    move-object p0, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local p0       #outputStream:Ljava/io/OutputStream;
    move-object p1, v6

    goto :goto_4

    .line 203
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    :catch_2
    move-exception p0

    move-object p1, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 200
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p1, title:Ljava/lang/String;
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_3
    move-exception p0

    move-object p1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/camera/StorageHelper;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "com.miui.camera.ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, degree:I
    const/4 v2, 0x0

    .line 241
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 245
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 246
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 248
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 250
    packed-switch v4, :pswitch_data_0

    .line 264
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 242
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 243
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "com.miui.camera.ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 253
    goto :goto_1

    .line 255
    :pswitch_2
    const/16 v0, 0xb4

    .line 256
    goto :goto_1

    .line 258
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/miui/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/miui/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 335
    new-instance v0, Lcom/miui/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/miui/camera/ImageManager$ImageListParam;-><init>()V

    .line 336
    .local v0, param:Lcom/miui/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/miui/camera/ImageManager$ImageListParam;->mLocation:Lcom/miui/camera/ImageManager$DataLocation;

    .line 337
    iput p1, v0, Lcom/miui/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 338
    iput p2, v0, Lcom/miui/camera/ImageManager$ImageListParam;->mSort:I

    .line 339
    iput-object p3, v0, Lcom/miui/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 340
    return-object v0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/camera/StorageHelper;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/miui/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/miui/camera/gallery/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 345
    invoke-static {p1, p2, p3, p4}, Lcom/miui/camera/ImageManager;->getImageListParam(Lcom/miui/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/miui/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 346
    .local v0, param:Lcom/miui/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/miui/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/miui/camera/ImageManager$ImageListParam;)Lcom/miui/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/miui/camera/ImageManager$ImageListParam;)Lcom/miui/camera/gallery/IImageList;
    .locals 14
    .parameter "cr"
    .parameter "param"

    .prologue
    const/4 v13, 0x0

    .line 270
    iget-object v7, p1, Lcom/miui/camera/ImageManager$ImageListParam;->mLocation:Lcom/miui/camera/ImageManager$DataLocation;

    .line 271
    .local v7, location:Lcom/miui/camera/ImageManager$DataLocation;
    iget v2, p1, Lcom/miui/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 272
    .local v2, inclusion:I
    iget v8, p1, Lcom/miui/camera/ImageManager$ImageListParam;->mSort:I

    .line 273
    .local v8, sort:I
    iget-object v0, p1, Lcom/miui/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 274
    .local v0, bucketId:Ljava/lang/String;
    iget-boolean v3, p1, Lcom/miui/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 276
    .local v3, isEmptyImageList:Z
    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 277
    :cond_0
    new-instance v11, Lcom/miui/camera/ImageManager$EmptyImageList;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/miui/camera/ImageManager$EmptyImageList;-><init>(Lcom/miui/camera/ImageManager$1;)V

    .line 317
    .end local p0
    :goto_0
    return-object v11

    .line 281
    .restart local p0
    :cond_1
    invoke-static {v13}, Lcom/miui/camera/StorageHelper;->hasStorage(Z)Z

    move-result v1

    .line 284
    .local v1, haveSdCard:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v5, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/camera/gallery/BaseImageList;>;"
    if-eqz v1, :cond_3

    sget-object v11, Lcom/miui/camera/ImageManager$DataLocation;->INTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    if-eq v7, v11, :cond_3

    .line 287
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_2

    .line 288
    new-instance v11, Lcom/miui/camera/gallery/ImageList;

    sget-object v12, Lcom/miui/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/miui/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_3

    .line 291
    new-instance v11, Lcom/miui/camera/gallery/VideoList;

    sget-object v12, Lcom/miui/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/miui/camera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_3
    sget-object v11, Lcom/miui/camera/ImageManager$DataLocation;->INTERNAL:Lcom/miui/camera/ImageManager$DataLocation;

    if-eq v7, v11, :cond_4

    sget-object v11, Lcom/miui/camera/ImageManager$DataLocation;->ALL:Lcom/miui/camera/ImageManager$DataLocation;

    if-ne v7, v11, :cond_5

    .line 295
    :cond_4
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_5

    .line 296
    new-instance v11, Lcom/miui/camera/gallery/ImageList;

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/miui/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 303
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/miui/camera/gallery/BaseImageList;>;"
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 304
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/camera/gallery/BaseImageList;

    .line 305
    .local v9, sublist:Lcom/miui/camera/gallery/BaseImageList;
    invoke-virtual {v9}, Lcom/miui/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 306
    invoke-virtual {v9}, Lcom/miui/camera/gallery/BaseImageList;->close()V

    .line 307
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 311
    .end local v9           #sublist:Lcom/miui/camera/gallery/BaseImageList;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 312
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/camera/gallery/BaseImageList;

    .local v6, list:Lcom/miui/camera/gallery/BaseImageList;
    move-object v11, v6

    .line 313
    goto :goto_0

    .line 316
    .end local v6           #list:Lcom/miui/camera/gallery/BaseImageList;
    :cond_8
    new-instance v10, Lcom/miui/camera/gallery/ImageListUber;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/miui/camera/gallery/IImageList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/miui/camera/gallery/IImageList;

    invoke-direct {v10, p0, v8}, Lcom/miui/camera/gallery/ImageListUber;-><init>([Lcom/miui/camera/gallery/IImageList;I)V

    .local v10, uber:Lcom/miui/camera/gallery/ImageListUber;
    move-object v11, v10

    .line 317
    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 149
    move v0, p0

    .line 151
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 157
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 158
    const/4 v1, 0x0

    .line 169
    .local v1, retVal:I
    :goto_0
    return v1

    .line 159
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 160
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 161
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 162
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 163
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 164
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 166
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public static updateStorageSetting()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://media/internal/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 71
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/camera/StorageHelper;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    .line 73
    return-void

    .line 68
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    goto :goto_0
.end method
