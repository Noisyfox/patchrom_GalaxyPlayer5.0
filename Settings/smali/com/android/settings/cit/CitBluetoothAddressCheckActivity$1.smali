.class Lcom/android/settings/cit/CitBluetoothAddressCheckActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CitBluetoothAddressCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity$1;->this$0:Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v3, -0x8000

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity$1;->this$0:Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;

    #calls: Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->showBluetoothAddress()V
    invoke-static {v1}, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->access$000(Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;)V

    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #state:I
    :cond_1
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity$1;->this$0:Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;

    iget-object v1, v1, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v2, 0x7f090541

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
