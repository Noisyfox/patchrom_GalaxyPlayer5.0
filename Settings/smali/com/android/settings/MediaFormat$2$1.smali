.class Lcom/android/settings/MediaFormat$2$1;
.super Ljava/lang/Thread;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MediaFormat$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MediaFormat$2;

.field final synthetic val$service:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat$2;Landroid/os/storage/IMountService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/MediaFormat$2$1;->this$1:Lcom/android/settings/MediaFormat$2;

    iput-object p2, p0, Lcom/android/settings/MediaFormat$2$1;->val$service:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat$2$1;->val$service:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaFormat"

    const-string v2, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
