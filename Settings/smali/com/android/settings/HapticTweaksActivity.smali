.class public Lcom/android/settings/HapticTweaksActivity;
.super Landroid/preference/PreferenceActivity;
.source "HapticTweaksActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mHapticDownSetter:Landroid/preference/Preference;

.field private mHapticFeedbackAllPref:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedbackUpPref:Landroid/preference/CheckBoxPreference;

.field private mHapticLongSetter:Landroid/preference/Preference;

.field private mHapticTapSetter:Landroid/preference/Preference;

.field private mHapticUpSetter:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private adjustHaptic(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/HapticAdjust;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "start_string"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hap_type"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/HapticTweaksActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleAdjustResult(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string v2, "returnval"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, string:Ljava/lang/String;
    const v2, 0x7f0904e8

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticTweaksActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, localized:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_down_array"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v0           #localized:Ljava/lang/String;
    .end local v1           #string:Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0904e9

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticTweaksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setHapticButtonDep()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackAllPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackUpPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    return-void
.end method

.method private updateToggles()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackUpPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_up_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_all_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "haptic_down_array"

    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/HapticTweaksActivity;->handleAdjustResult(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "haptic_up_array"

    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/HapticTweaksActivity;->handleAdjustResult(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "haptic_long_array"

    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/HapticTweaksActivity;->handleAdjustResult(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "haptic_tap_array"

    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/HapticTweaksActivity;->handleAdjustResult(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04001a

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticTweaksActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "haptic_feedback_up"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackUpPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "haptic_feedback_all"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackAllPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "haptic_down_decider"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticDownSetter:Landroid/preference/Preference;

    const-string v2, "haptic_up_decider"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticUpSetter:Landroid/preference/Preference;

    const-string v2, "haptic_long_decider"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticLongSetter:Landroid/preference/Preference;

    const-string v2, "haptic_tap_decider"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticTapSetter:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticDownSetter:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    const-string v0, "haptic_down_array"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/HapticTweaksActivity;->adjustHaptic(Ljava/lang/String;I)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticUpSetter:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    const-string v0, "haptic_up_array"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/HapticTweaksActivity;->adjustHaptic(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticLongSetter:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    const-string v0, "haptic_long_array"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/HapticTweaksActivity;->adjustHaptic(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticTapSetter:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    const-string v0, "haptic_tap_array"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/HapticTweaksActivity;->adjustHaptic(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/HapticTweaksActivity;->setHapticButtonDep()V

    invoke-direct {p0}, Lcom/android/settings/HapticTweaksActivity;->updateToggles()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "preferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "haptic_feedback_up"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_up_enabled"

    iget-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackUpPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string v0, "haptic_feedback_all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HapticTweaksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_all_enabled"

    iget-object v2, p0, Lcom/android/settings/HapticTweaksActivity;->mHapticFeedbackAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
