.class final Lcom/android/browser/BrowserBookmarksAdapter$1;
.super Landroid/os/AsyncTask;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$favicon:Landroid/graphics/Bitmap;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$originalUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$favicon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 385
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "unused"

    .prologue
    const/4 v7, 0x0

    .line 387
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$originalUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$url:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 389
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v3, v7

    .line 406
    :goto_0
    return-object v3

    .line 392
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v2, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 396
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$favicon:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 397
    const-string v3, "favicon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 405
    .end local v1           #os:Ljava/io/ByteArrayOutputStream;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 406
    goto :goto_0
.end method
