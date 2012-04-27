.class Lcom/android/browser/FetchUrlMimeType;
.super Landroid/os/AsyncTask;
.source "FetchUrlMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lcom/android/browser/BrowserActivity;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 12
    .parameter "values"

    .prologue
    const/4 v10, 0x0

    .line 58
    aget-object v10, p1, v10

    iput-object v10, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    .line 61
    iget-object v10, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v11, "uri"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, uri:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 63
    :cond_0
    const/4 v10, 0x0

    .line 107
    :goto_0
    return-object v10

    .line 68
    :cond_1
    iget-object v10, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v11, "useragent"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 70
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v6, v9}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v10, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v11, "cookiedata"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, cookie:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 74
    const-string v10, "Cookie"

    invoke-virtual {v6, v10, v1}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    iget-object v10, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v11, "referer"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, referer:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 79
    const-string v10, "Referer"

    invoke-virtual {v6, v10, v5}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    const/4 v4, 0x0

    .line 85
    .local v4, mimeType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 89
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4

    .line 90
    const-string v10, "Content-Type"

    invoke-interface {v7, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 91
    .local v3, header:Lorg/apache/http/Header;
    if-eqz v3, :cond_4

    .line 92
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 93
    const/16 v10, 0x3b

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 94
    .local v8, semicolonIndex:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4

    .line 95
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 104
    .end local v3           #header:Lorg/apache/http/Header;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #semicolonIndex:I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v10, v4

    .line 107
    goto :goto_0

    .line 99
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 100
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v10

    .line 101
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 102
    .local v2, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 7
    .parameter "mimeType"

    .prologue
    .line 112
    if-eqz p1, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, url:Ljava/lang/String;
    const-string v4, "text/plain"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, newMimeType:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 120
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v2           #newMimeType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "hint"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "storagetype"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    :cond_3
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "visibility"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    .local v0, contentUri:Landroid/net/Uri;
    return-void
.end method
