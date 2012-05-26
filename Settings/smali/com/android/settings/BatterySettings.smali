.class public Lcom/android/settings/BatterySettings;
.super Landroid/preference/PreferenceActivity;
.source "BatterySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BatterySettings$DialogOperationListener;
    }
.end annotation


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Lcom/android/settings/BatteryLevelPreference;

.field private mDefaultWarningLevel:I

.field private mEnableGpu:Landroid/preference/CheckBoxPreference;

.field private mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

.field private mLowLevel:Landroid/preference/RangeBarPreference;

.field private mLpaDecode:Landroid/preference/CheckBoxPreference;

.field private mMonitorHistory:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/settings/BatterySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/BatterySettings$3;-><init>(Lcom/android/settings/BatterySettings;)V

    iput-object v0, p0, Lcom/android/settings/BatterySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BatterySettings;)Lcom/android/settings/BatteryLevelPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/BatterySettings;->mBatteryLevel:Lcom/android/settings/BatteryLevelPreference;

    return-object v0
.end method

.method private updateState(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    const-string v6, "gpu"

    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_level_low_customized"

    iget v4, p0, Lcom/android/settings/BatterySettings;->mDefaultWarningLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, lowLevel:I
    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    const/4 v3, 0x4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/RangeBarPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_indicator_style"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, style:I
    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ListPreferenceScreen;->setValueIndex(I)V

    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    invoke-virtual {v3}, Lcom/android/settings/ListPreferenceScreen;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ListPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    const-string v3, "persist.sys.lpa.decode"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    const-string v3, "gpu"

    const-string v3, "persist.sys.composition.type"

    const-string v4, "gpu"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BatterySettings;->mDefaultWarningLevel:I

    const-string v1, "low_level"

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RangeBarPreference;

    iput-object v1, p0, Lcom/android/settings/BatterySettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1, p0}, Landroid/preference/RangeBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "indicator_style"

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ListPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    invoke-virtual {v1, p0}, Lcom/android/settings/ListPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "battery_level"

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/BatteryLevelPreference;

    iput-object v1, p0, Lcom/android/settings/BatterySettings;->mBatteryLevel:Lcom/android/settings/BatteryLevelPreference;

    const-string v1, "lpa_decode"

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    const-string v1, "enable_gpu"

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const-string v1, "monitor_history"

    invoke-virtual {p0, v1}, Lcom/android/settings/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/BatterySettings;->mMonitorHistory:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mMonitorHistory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    .local v0, parent:Landroid/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/BatterySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .local v4, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    if-ne p1, v7, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, value:I
    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "battery_level_low_customized"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #value:I
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    :catch_0
    move-exception v7

    move-object v0, v7

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "BatterySettings"

    const-string v8, "could not persist battery low level setting"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v7, "indicator_style"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #value:I
    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "battery_indicator_style"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/BatterySettings;->mIndicatorStyle:Lcom/android/settings/ListPreferenceScreen;

    invoke-virtual {v8}, Lcom/android/settings/ListPreferenceScreen;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Lcom/android/settings/ListPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v6           #value:I
    :catch_1
    move-exception v7

    move-object v0, v7

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v7, "BatterySettings"

    const-string v8, "could not persist battery indicator style setting"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v7, "monitor_history"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "monitor_history"

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .end local v1           #isChecked:Z
    .restart local p2
    :cond_4
    const-string v7, "lpa_decode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v7, "persist.sys.lpa.decode"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, isLpaDecode:Z
    new-instance v5, Lcom/android/settings/BatterySettings$1;

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mLpaDecode:Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0, v7, v3, v3}, Lcom/android/settings/BatterySettings$1;-><init>(Lcom/android/settings/BatterySettings;Landroid/preference/CheckBoxPreference;ZZ)V

    .local v5, listener:Lcom/android/settings/BatterySettings$DialogOperationListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v8, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    if-eqz v3, :cond_5

    const v8, 0x7f0905b6

    :goto_3
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_5
    const v8, 0x7f0905b5

    goto :goto_3

    .end local v3           #isLpaDecode:Z
    .end local v5           #listener:Lcom/android/settings/BatterySettings$DialogOperationListener;
    :cond_6
    const-string v7, "enable_gpu"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v7, "gpu"

    const-string v8, "persist.sys.composition.type"

    const-string v9, "gpu"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, isGpuEnabled:Z
    new-instance v5, Lcom/android/settings/BatterySettings$2;

    iget-object v7, p0, Lcom/android/settings/BatterySettings;->mEnableGpu:Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0, v7, v2, v2}, Lcom/android/settings/BatterySettings$2;-><init>(Lcom/android/settings/BatterySettings;Landroid/preference/CheckBoxPreference;ZZ)V

    .restart local v5       #listener:Lcom/android/settings/BatterySettings$DialogOperationListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x10403aa

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x10402c6

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {v7, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/BatterySettings;->mMonitorHistory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "monitor_history"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/BatterySettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BatterySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/settings/BatterySettings;->updateState(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method
