.class Lcom/android/settings/cit/CitWifiScanCheckActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CitWifiScanCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitWifiScanCheckActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #calls: Lcom/android/settings/cit/CitWifiScanCheckActivity;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$300(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V

    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitWifiScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->access$000(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
