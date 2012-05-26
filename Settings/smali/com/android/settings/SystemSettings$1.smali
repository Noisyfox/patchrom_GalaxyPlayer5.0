.class Lcom/android/settings/SystemSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SystemSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SystemSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/SystemSettings$1;->this$0:Lcom/android/settings/SystemSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SystemSettings$1;->this$0:Lcom/android/settings/SystemSettings;

    const-string v3, "carrier_settings"

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, p:Landroid/preference/Preference;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, plmn:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .end local v0           #p:Landroid/preference/Preference;
    .end local v1           #plmn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;

    iget-object v3, p0, Lcom/android/settings/SystemSettings$1;->this$0:Lcom/android/settings/SystemSettings;

    invoke-direct {v2, v3, v5}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;-><init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;

    iget-object v3, p0, Lcom/android/settings/SystemSettings$1;->this$0:Lcom/android/settings/SystemSettings;

    invoke-direct {v2, v3, v5}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;-><init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
