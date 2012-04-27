.class Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBookmarkRunnable"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/AddBookmarkPage;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    .line 199
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 203
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, title:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, url:Ljava/lang/String;
    const-string v0, "invalidateThumbnail"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 207
    .local v9, invalidateThumbnail:Z
    if-eqz v9, :cond_1

    move-object v4, v5

    .line 209
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :goto_0
    const-string v0, "touchIconUrl"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, touchIconUrl:Ljava/lang/String;
    const-string v0, "folder"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, folder:I
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 216
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 217
    if-eqz v10, :cond_0

    .line 218
    new-instance v0, Lcom/android/browser/DownloadTouchIcon;

    invoke-direct {v0, v1, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    #getter for: Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/browser/AddBookmarkPage;->access$100(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-virtual {v0, v5}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    const/4 v5, 0x1

    iput v5, v0, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void

    .line 207
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v6           #folder:I
    .end local v10           #touchIconUrl:Ljava/lang/String;
    :cond_1
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 221
    .restart local v4       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v6       #folder:I
    .restart local v10       #touchIconUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 222
    .local v8, e:Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    iput v13, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
