.class Lcom/android/browser/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# static fields
.field private static final acceptableBookmarkSchemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rtsp:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 9
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "retainIcon"
    .parameter "folder"

    .prologue
    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 73
    .local v1, creationTime:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v5, map:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 78
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 79
    .end local v0           #cursor:Landroid/database/Cursor;
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 83
    const-string v0, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #creationTime:J
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    const-string v0, "title"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p3, "bookmark"

    .end local p3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string p3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 89
    const-string p3, "folder"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string p3, "browser"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bookmarks.addBookmark folder = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "_id = "

    .end local p6
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 p6, 0x0

    invoke-interface {v3, p6}, Landroid/database/Cursor;->getInt(I)I

    move-result p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p6, 0x0

    invoke-virtual {p1, p3, v5, p4, p6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object p1, v3

    .line 161
    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    .line 162
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p1

    .end local p1           #cursor:Landroid/database/Cursor;
    invoke-virtual {p1, p2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 164
    :cond_3
    if-eqz p0, :cond_4

    .line 165
    const p1, 0x7f090008

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p2
    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_4
    return-void

    .line 95
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local p0
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p6
    :cond_5
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 96
    .local v0, count:I
    const/4 v6, 0x0

    .line 97
    .local v6, matchedTitle:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_a

    .line 100
    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 101
    const/4 v7, 0x5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 105
    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .end local v4           #i:I
    move-result v4

    if-ne v4, p6, :cond_a

    .line 107
    const-string v4, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #matchedTitle:Z
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v4, "bookmark"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    const/4 v4, 0x1

    .line 118
    .local v4, matchedTitle:Z
    :goto_3
    if-nez v4, :cond_0

    .line 122
    const-string v4, "title"

    .end local v4           #matchedTitle:Z
    invoke-virtual {v5, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string p3, "url"

    .end local p3
    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string p3, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #creationTime:J
    invoke-virtual {v5, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string p3, "bookmark"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string p3, "date"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string p3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 130
    const-string p3, "folder"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const/4 p3, 0x0

    .line 133
    .local p3, visits:I
    if-lez v0, :cond_6

    .line 139
    const/4 p3, 0x2

    invoke-interface {v3, p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #visits:I
    move-result p3

    .line 148
    .restart local p3       #visits:I
    :cond_6
    if-nez v0, :cond_8

    .line 149
    const-string p4, "visits"

    add-int/lit8 p3, p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p3           #visits:I
    move-result-object p3

    invoke-virtual {v5, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    :goto_4
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v0           #count:I
    .end local p6
    :catch_0
    move-exception p1

    move-object p3, p1

    move-object p1, v3

    .line 157
    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :goto_5
    :try_start_3
    const-string p4, "Bookmarks"

    const-string p6, "addBookmark"

    invoke-static {p4, p6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 97
    .restart local v0       #count:I
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .local v4, i:I
    .restart local v6       #matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 151
    .end local v1           #creationTime:J
    .end local v4           #i:I
    .end local v6           #matchedTitle:Z
    .end local p4
    .local p3, visits:I
    :cond_8
    :try_start_4
    const-string p3, "visits"

    .end local p3           #visits:I
    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 159
    .end local v0           #count:I
    .end local p6
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #cursor:Landroid/database/Cursor;
    .end local p1           #cr:Landroid/content/ContentResolver;
    .local p0, cursor:Landroid/database/Cursor;
    :goto_6
    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1

    .local v0, cursor:Landroid/database/Cursor;
    .restart local v1       #creationTime:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_6

    .end local v1           #creationTime:J
    .end local p4
    .end local p6
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception p0

    move-object v8, p0

    move-object p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-object p1, v8

    goto :goto_6

    .line 156
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #creationTime:J
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :catch_1
    move-exception p1

    move-object p3, p1

    move-object p1, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto :goto_5

    .local v0, count:I
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v6       #matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    :cond_a
    move v4, v6

    .end local v6           #matchedTitle:Z
    .local v4, matchedTitle:Z
    goto/16 :goto_3
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 333
    if-nez p0, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 339
    :goto_0
    return-object v1

    .line 337
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 338
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 339
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method static removeAllFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"

    .prologue
    .line 277
    const/4 v6, 0x0

    .line 279
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 286
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 288
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 291
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 293
    .local v2, position:Z
    if-nez v2, :cond_1

    .line 294
    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URL is not in the database! "

    .end local v0           #count:I
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .end local v2           #position:Z
    .end local v3           #i:I
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .line 325
    .end local v1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_1
    :try_start_2
    const-string p2, "Bookmarks"

    const-string p3, "removeAllFromBookmarks"

    .end local p3
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 327
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 329
    .end local p1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_2
    return-void

    .line 299
    .restart local v0       #count:I
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v2       #position:Z
    .restart local v3       #i:I
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    :cond_1
    :try_start_3
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    .end local v2           #position:Z
    invoke-virtual {v2, p2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 300
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 302
    .local v4, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 304
    .local v2, numVisits:I
    if-nez v2, :cond_2

    .line 305
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    .end local v2           #numVisits:I
    .end local v4           #uri:Landroid/net/Uri;
    :goto_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 309
    .local v2, numVisits:I
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #numVisits:I
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "bookmark"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 312
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 313
    :catch_1
    move-exception v2

    .line 314
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v2, "removeAllFromBookmarks"

    .end local v2           #e:Ljava/lang/IllegalStateException;
    const-string v4, "no database!"

    .end local v4           #uri:Landroid/net/Uri;
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 327
    .end local v0           #count:I
    .end local v3           #i:I
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p2
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #cursor:Landroid/database/Cursor;
    .end local p3
    .local p0, cursor:Landroid/database/Cursor;
    :goto_4
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    .line 320
    .restart local v0       #count:I
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i:I
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    :cond_4
    if-eqz p0, :cond_5

    .line 321
    const p1, 0x7f090009

    const/4 p2, 0x1

    :try_start_6
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p2
    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 327
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object p0, v1

    .line 328
    .end local v1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 327
    .end local v0           #count:I
    .end local v3           #i:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_4

    .end local p2
    .end local p3
    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception p1

    goto :goto_4

    .line 324
    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_1
.end method

.method static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"

    .prologue
    const-string v0, "removeFromBookmarks"

    .line 182
    const/4 v6, 0x0

    .line 184
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 192
    .local v8, first:Z
    if-nez v8, :cond_1

    .line 193
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not in the database! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v8           #first:Z
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 220
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "Bookmarks"

    const-string v1, "removeFromBookmarks"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    if-eqz v6, :cond_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_0
    return-void

    .line 197
    .restart local v8       #first:Z
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 198
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 200
    .local v10, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 202
    .local v9, numVisits:I
    if-nez v9, :cond_3

    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v10, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    :goto_1
    if-eqz p0, :cond_2

    .line 216
    const v0, 0x7f090009

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    :cond_2
    if-eqz v6, :cond_0

    goto :goto_0

    .line 207
    :cond_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "bookmark"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 211
    :catch_1
    move-exception v7

    .line 212
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v0, "removeFromBookmarks"

    const-string v1, "no database!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 222
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"
    .parameter "folder"

    .prologue
    .line 229
    const/4 v6, 0x0

    .line 231
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ? AND folder =?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v0, 0x2

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 237
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 239
    .local v1, first:Z
    if-nez v1, :cond_1

    .line 240
    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL is not in the database! "

    .end local v1           #first:Z
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .end local p3
    .end local p4
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 268
    .end local v0           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_2
    const-string p2, "Bookmarks"

    const-string p3, "removeFromBookmarks"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 272
    .end local p1           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_1
    return-void

    .line 244
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #first:Z
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    :try_start_3
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p3

    .end local p3
    invoke-virtual {p3, p2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 245
    sget-object p2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .end local p2
    const/4 p3, 0x0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    int-to-long v1, p3

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .end local v1           #first:Z
    move-result-object p3

    .line 247
    .local p3, uri:Landroid/net/Uri;
    const/4 p2, 0x2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 249
    .local p2, numVisits:I
    if-nez p2, :cond_4

    .line 250
    const/4 p2, 0x0

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p2           #numVisits:I
    .end local p4
    :goto_2
    if-eqz p0, :cond_2

    .line 264
    const p1, 0x7f090009

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object p0, v0

    .line 271
    .end local v0           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 254
    .restart local v0       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    .restart local p2       #numVisits:I
    .restart local p4
    :cond_4
    :try_start_4
    new-instance p2, Landroid/content/ContentValues;

    .end local p2           #numVisits:I
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local p2, values:Landroid/content/ContentValues;
    const-string v1, "bookmark"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v1, "folder"

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .end local p4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 258
    const/4 p4, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p1, p3, p2, p4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 259
    :catch_1
    move-exception p1

    .line 260
    .local p1, e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string p1, "removeFromBookmarks"

    .end local p1           #e:Ljava/lang/IllegalStateException;
    const-string p2, "no database!"

    .end local p2           #values:Landroid/content/ContentValues;
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 270
    .end local p0           #context:Landroid/content/Context;
    .end local p3           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    :goto_3
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1

    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p2, url:Ljava/lang/String;
    .local p3, title:Ljava/lang/String;
    .restart local p4
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_3

    .end local p2           #url:Ljava/lang/String;
    .end local p3           #title:Ljava/lang/String;
    .end local p4
    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception p1

    goto :goto_3

    .line 267
    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2       #url:Ljava/lang/String;
    .restart local p3       #title:Ljava/lang/String;
    .restart local p4
    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 343
    if-nez p0, :cond_0

    move v1, v2

    .line 352
    :goto_0
    return v1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 348
    sget-object v1, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    const/4 v1, 0x1

    goto :goto_0

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 352
    goto :goto_0
.end method
