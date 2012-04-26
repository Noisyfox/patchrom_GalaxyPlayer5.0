.class Lcom/android/soundrecorder/RecordPreviewActivity$1;
.super Ljava/lang/Object;
.source "RecordPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/RecordPreviewActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
    .line 232
    iput-object p1, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    iput-object p2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    if-nez p2, :cond_1

    .line 237
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "audio/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-virtual {v2, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 245
    :try_start_1
    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->val$path:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, mimeType:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    invoke-virtual {v2, v0}, Lcom/android/soundrecorder/RecordPreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 252
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->this$0:Lcom/android/soundrecorder/RecordPreviewActivity;

    iget-object v3, p0, Lcom/android/soundrecorder/RecordPreviewActivity$1;->val$path:Ljava/lang/String;

    #calls: Lcom/android/soundrecorder/RecordPreviewActivity;->showDeleteConfirmDialog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/soundrecorder/RecordPreviewActivity;->access$000(Lcom/android/soundrecorder/RecordPreviewActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :catch_1
    move-exception v2

    goto :goto_0
.end method
