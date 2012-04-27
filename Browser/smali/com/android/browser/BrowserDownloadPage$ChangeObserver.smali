.class Lcom/android/browser/BrowserDownloadPage$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "BrowserDownloadPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserDownloadPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field private final mTrack:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserDownloadPage;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter "track"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 294
    iput-object p2, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->mTrack:Landroid/net/Uri;

    .line 295
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    .line 304
    const/4 v6, 0x0

    .line 306
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->mTrack:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/browser/BrowserDownloadPage;->access$400(Lcom/android/browser/BrowserDownloadPage;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 316
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$ChangeObserver;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/android/browser/BrowserDownloadPage;->access$100(Lcom/android/browser/BrowserDownloadPage;)Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserDownloadPage$ChangeObserver$1;-><init>(Lcom/android/browser/BrowserDownloadPage$ChangeObserver;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_1
    return-void

    .line 324
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 325
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "BrowserDownloadPage"

    const-string v1, "onChange"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
