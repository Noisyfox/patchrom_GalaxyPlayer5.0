.class Lcom/android/providers/downloads/ui/DownloadAdapter$1;
.super Ljava/lang/Object;
.source "DownloadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:J

.field status:I

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadAdapter;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$000(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$200(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$300(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/MiuiDownloadManager;

    move-result-object v0

    new-array v1, v2, [J

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->pauseDownload([J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$300(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/MiuiDownloadManager;

    move-result-object v0

    new-array v1, v2, [J

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->resumeDownload([J)V

    goto :goto_0
.end method
