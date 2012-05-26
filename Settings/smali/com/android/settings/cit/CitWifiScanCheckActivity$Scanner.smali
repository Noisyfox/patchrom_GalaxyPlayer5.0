.class Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;
.super Landroid/os/Handler;
.source "CitWifiScanCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitWifiScanCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;Lcom/android/settings/cit/CitWifiScanCheckActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;-><init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$500(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mApScanResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$100(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method scan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->removeMessages(I)V

    return-void
.end method
