.class Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CitBluetoothScanCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitBluetoothScanCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, -0x8000

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, state:I
    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$100(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .end local v5           #state:I
    :cond_0
    :goto_0
    return-void

    .restart local v5       #state:I
    :cond_1
    if-ne v5, v7, :cond_0

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$200(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f090540

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .end local v5           #state:I
    :cond_2
    const-string v6, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v6, "android.bluetooth.device.action.DISAPPEARED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v6, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, d:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v1           #d:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v6, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$200(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f09053d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_7
    const-string v6, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$200(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f090542

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mRetryScan:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$400(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mButtonPass:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$500(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1       #d:Landroid/bluetooth/BluetoothDevice;
    const-string v6, "Name:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1           #d:Landroid/bluetooth/BluetoothDevice;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$200(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #getter for: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method
