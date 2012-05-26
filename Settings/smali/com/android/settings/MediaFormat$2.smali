.class Lcom/android/settings/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .local v0, service:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/MediaFormat$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MediaFormat$2$1;-><init>(Lcom/android/settings/MediaFormat$2;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settings/MediaFormat$2$1;->start()V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/MediaFormat$2;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v1}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    :cond_1
    const-string v1, "MediaFormat"

    const-string v2, "Unable to locate IMountService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
