.class Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;
.super Landroid/os/AsyncTask;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBluetoothValueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private btValue:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic this$0:Lcom/android/settings/SystemSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SystemSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->this$0:Lcom/android/settings/SystemSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;-><init>(Lcom/android/settings/SystemSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    iget-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->this$0:Lcom/android/settings/SystemSettings;

    const v1, 0x7f090277

    invoke-virtual {v0, v1}, Lcom/android/settings/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->btValue:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->this$0:Lcom/android/settings/SystemSettings;

    const v1, 0x7f090278

    invoke-virtual {v0, v1}, Lcom/android/settings/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->btValue:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    iget-object v1, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->this$0:Lcom/android/settings/SystemSettings;

    const-string v2, "bluetooth_settings"

    invoke-virtual {v1, v2}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, btPref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->btValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->btValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->btValue:Ljava/lang/String;

    return-void
.end method
