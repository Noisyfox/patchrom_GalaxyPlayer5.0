.class Lcom/android/browser/DownloadTouchIcon;
.super Landroid/os/AsyncTask;
.source "DownloadTouchIcon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private final mOriginalUrl:Ljava/lang/String;

.field mTab:Lcom/android/browser/Tab;

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 59
    iput-object p1, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/Tab;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "tab"
    .parameter "cr"
    .parameter "view"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 50
    iput-object p2, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    invoke-virtual {p3}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private storeIcon(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "icon"

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    iput-object v6, v2, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/DownloadTouchIcon;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "touch_icon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 131
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/DownloadTouchIcon;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 13
    .parameter "values"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 67
    iget-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/android/browser/DownloadTouchIcon;->mOriginalUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/browser/DownloadTouchIcon;->mUrl:Ljava/lang/String;

    invoke-static {v8, v9, v10, v12}, Lcom/android/browser/BrowserBookmarksAdapter;->queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    .line 69
    iget-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 70
    const/4 v8, 0x0

    aget-object v7, p1, v8

    .line 72
    .local v7, url:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mUserAgent:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 74
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    invoke-static {v8, v12}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 80
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 82
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 83
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 84
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 86
    .local v1, content:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 87
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 89
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-direct {p0, v4}, Lcom/android/browser/DownloadTouchIcon;->storeIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .end local v1           #content:Ljava/io/InputStream;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 101
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v5           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #url:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_2

    .line 102
    iget-object v8, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_2
    return-object v11

    .line 93
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v5       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #url:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 94
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8

    .line 95
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 96
    .local v3, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/browser/DownloadTouchIcon;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_0
    return-void
.end method
