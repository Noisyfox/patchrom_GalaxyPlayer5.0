.class public Lcom/android/settings/wifi/ApAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static ACTION_AP_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String;

.field private static DEBUGGABLE:I

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mForgetPreference:Landroid/preference/Preference;

.field private mIpPreferenceKeys:[Ljava/lang/String;

.field private mNetworkId:I

.field private mProxyClear:Landroid/preference/Preference;

.field private mProxyHost:Landroid/preference/EditTextPreference;

.field private mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

.field private mProxyPort:Landroid/preference/EditTextPreference;

.field private mSettingNames:[Ljava/lang/String;

.field private mSsid:Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "android.intent.action.ap_advanced_settings_changed"

    sput-object v0, Lcom/android/settings/wifi/ApAdvancedSettings;->ACTION_AP_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v2

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ip_address"

    aput-object v1, v0, v2

    const-string v1, "gateway"

    aput-object v1, v0, v3

    const-string v1, "netmask"

    aput-object v1, v0, v4

    const-string v1, "dns1"

    aput-object v1, v0, v5

    const-string v1, "dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private canForget()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mNetworkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_use_static_ip"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, settingValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #settingValue:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "http_proxy_not_use_global"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "http_proxy"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/ApAdvancedSettings;->sNotSet:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private checkPort(Ljava/lang/String;)Z
    .locals 4
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, p:I
    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #p:I
    :goto_0
    return v2

    .restart local v1       #p:I
    :cond_0
    move v2, v3

    goto :goto_0

    .end local v1           #p:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    goto :goto_0
.end method

.method private contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "array"
    .parameter "str"

    .prologue
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private fillProxy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "http_proxy_not_use_global"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/net/Proxy;->getWifiHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/net/Proxy;->getWifiPort(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .local v0, port:I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .end local v0           #port:I
    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v0       #port:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    const/4 v4, 0x0

    .local v4, start:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, end:I
    const/4 v3, 0x0

    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, block:I
    const/16 v5, 0xff

    if-gt v0, v5, :cond_1

    if-gez v0, :cond_2

    :cond_1
    move v5, v6

    .end local v0           #block:I
    :goto_1
    return v5

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/NumberFormatException;
    move v5, v6

    goto :goto_1

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #block:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .end local v0           #block:I
    :cond_3
    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkPort(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendProxyChangedBroadcast()V

    goto :goto_0
.end method

.method private sendIpChangedBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/wifi/ApAdvancedSettings;->ACTION_AP_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendProxyChangedBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateSettingsProvider()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "wifi_use_static_ip"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    :cond_0
    move v4, v6

    goto :goto_0

    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "http_proxy_not_use_global"

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_2
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendIpChangedBroadcast()V

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendProxyChangedBroadcast()V

    return-void

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v5, "wifi_use_static_ip"

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, settingValue:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_1
    move v5, v6

    goto :goto_0

    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->canForget()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040041

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/ApAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "ssid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    const-string v3, "networkId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mNetworkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "use_static_ip"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "wifi_forget"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #preference:Landroid/preference/Preference;
    :cond_0
    const-string v3, "proxy_not_use_globle_setting"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    const-string v3, "clear_proxy"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyClear:Landroid/preference/Preference;

    const-string v3, "proxy_host"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    const-string v3, "proxy_port"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->fillProxy()V

    const-string v3, "ro.debuggable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/wifi/ApAdvancedSettings;->DEBUGGABLE:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f090171

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f090172

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->updateSettingsProvider()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->finish()V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->finish()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v6, v9

    .end local p2
    :goto_0
    return v6

    .restart local p2
    :cond_0
    const-string v6, "use_static_ip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .local v5, value:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_use_static_ip"

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_1

    move v8, v9

    :cond_1
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendIpChangedBroadcast()V

    .end local v5           #value:Z
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->canForget()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    move v6, v9

    goto :goto_0

    .restart local p2
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .local v5, value:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/ApAdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const v6, 0x7f090173

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendIpChangedBroadcast()V

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v5           #value:Ljava/lang/String;
    :cond_6
    const-string v6, "proxy_not_use_globle_setting"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .local v5, value:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy_not_use_global"

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_7

    move v8, v9

    :cond_7
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendProxyChangedBroadcast()V

    goto :goto_1

    .end local v5           #value:Z
    .restart local p2
    :cond_8
    const-string v6, "proxy_host"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .local v1, host:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/wifi/ApAdvancedSettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1           #host:Ljava/lang/String;
    :cond_9
    const-string v6, "proxy_port"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .local v4, port:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkPort(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v7, ""

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->finish()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyClear:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->fillProxy()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->updateUi()V

    return-void
.end method
