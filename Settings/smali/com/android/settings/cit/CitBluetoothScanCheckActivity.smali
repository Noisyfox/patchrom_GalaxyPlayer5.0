.class public Lcom/android/settings/cit/CitBluetoothScanCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitBluetoothScanCheckActivity.java"


# instance fields
.field private mButtonPass:Landroid/widget/Button;

.field private mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSupportBluetooth:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryScan:Landroid/widget/Button;

.field private mScanResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    new-instance v0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$2;-><init>(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->scanBluetooth()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mRetryScan:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    return-object v0
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f09050d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scanBluetooth()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mRetryScan:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;

    const v2, 0x7f09053f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;

    const v2, 0x7f090540

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;

    const v2, 0x7f09053d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090526

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    const v0, 0x7f030011

    return v0
.end method

.method protected initResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    const v1, 0x7f0c0039

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;

    const v1, 0x7f0c003d

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    const v1, 0x7f0c003a

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mRetryScan:Landroid/widget/Button;

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mRetryScan:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mIsSupportBluetooth:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mIsSupportBluetooth:Z

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mRetryScan:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$1;-><init>(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mDevices:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mIsSupportBluetooth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mIsSupportBluetooth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mIsSupportBluetooth:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->scanBluetooth()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->mScanResult:Landroid/widget/TextView;

    const v1, 0x7f09053e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
