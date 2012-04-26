.class Lcom/android/soundrecorder/RecordPreviewActivity$2;
.super Ljava/lang/Object;
.source "RecordPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/RecordPreviewActivity;->showDeleteConfirmDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/RecordPreviewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/soundrecorder/RecordPreviewActivity$2;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    iput-object p2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$2;->val$path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$2;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-virtual {v2, v1}, Lcom/android/soundrecorder/RecordPreviewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$2;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    #getter for: Lcom/android/soundrecorder/RecordPreviewActivity;->mAdapter:Lcom/android/soundrecorder/RecordResourceAdapter;
    invoke-static {v2}, Lcom/android/soundrecorder/RecordPreviewActivity;->access$100(Lcom/android/soundrecorder/RecordPreviewActivity;)Lcom/android/soundrecorder/RecordResourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/soundrecorder/RecordResourceAdapter;->loadData()V

    .line 279
    return-void
.end method
