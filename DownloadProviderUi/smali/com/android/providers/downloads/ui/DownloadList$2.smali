.class Lcom/android/providers/downloads/ui/DownloadList$2;
.super Landroid/os/AsyncTask;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->doOperationCheckedIds(Ljava/util/HashSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;

.field final synthetic val$checkedIds:Ljava/util/HashSet;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$operateId:I


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Ljava/util/HashSet;ILandroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->val$checkedIds:Ljava/util/HashSet;

    iput p3, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->val$operateId:I

    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->val$checkedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .local v1, id:J
    :try_start_0
    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->val$operateId:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/MiuiDownloadManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/MiuiDownloadManager;->pauseDownload([J)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/MiuiDownloadManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/MiuiDownloadManager;->resumeDownload([J)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/MiuiDownloadManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/MiuiDownloadManager;->restartDownload([J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #id:J
    :cond_0
    const/4 v3, 0x0

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
