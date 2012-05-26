.class public Lcom/android/settings/SystemSettings;
.super Landroid/preference/PreferenceActivity;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;,
        Lcom/android/settings/SystemSettings$UpdateWifiValueTask;
    }
.end annotation


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/settings/SystemSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SystemSettings$1;-><init>(Lcom/android/settings/SystemSettings;)V

    iput-object v0, p0, Lcom/android/settings/SystemSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040032

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->addPreferencesFromResource(I)V

    const-string v3, "toggle_airplane"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .local v0, airplane:Landroid/preference/CheckBoxPreference;
    const-string v3, "toggle_nfc"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .local v1, nfc:Landroid/preference/CheckBoxPreference;
    new-instance v3, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v3, p0, Lcom/android/settings/SystemSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    new-instance v3, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v3, p0, Lcom/android/settings/SystemSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v3, "system"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .local v2, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pc_connection_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SystemSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SystemSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/SystemSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SystemSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/SystemSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SystemSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;-><init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v2, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;-><init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/android/settings/SystemSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    iget-object v2, p0, Lcom/android/settings/SystemSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/SystemSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v2, "carrier_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method
