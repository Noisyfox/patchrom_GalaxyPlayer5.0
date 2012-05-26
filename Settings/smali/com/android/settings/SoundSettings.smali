.class public Lcom/android/settings/SoundSettings;
.super Landroid/preference/PreferenceActivity;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneVolume:Lcom/android/settings/VolPreference;

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSmsDeliveredSound:Landroid/preference/RingtonePreferenceForTheme;

.field private mSmsReceivedSound:Landroid/preference/RingtonePreferenceForTheme;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mVibrateInNormal:Landroid/preference/CheckBoxPreference;

.field private mVibrateInSilent:Landroid/preference/CheckBoxPreference;

.field private mVibrateItems:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method private getVibrateItemsDescript()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vibrate_ringer"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "vibrate_notification"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "vibrate_mms"

    aput-object v6, v3, v5

    .local v3, prefs:[Ljava/lang/String;
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .local v2, names:[I
    const v5, 0x7f0905a0

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, separator:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, descript:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_2

    aget-object v5, v3, v1

    invoke-static {p0, v5}, Landroid/provider/Settings;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget v5, v2, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_3
    const v5, 0x7f0905a4

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0xa1t 0x5t 0x9t 0x7ft
        0xa2t 0x5t 0x9t 0x7ft
        0xa3t 0x5t 0x9t 0x7ft
    .end array-data
.end method

.method private stopVolumeSample(Landroid/preference/Preference;)V
    .locals 1
    .parameter "current"

    .prologue
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    invoke-virtual {v0}, Lcom/android/settings/VolPreference;->stop()V

    :cond_0
    return-void
.end method

.method private updateState(Z)V
    .locals 10
    .parameter "force"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isSilentEnabled()Z

    move-result v3

    .local v3, silentOrVibrateMode:Z
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    if-nez v3, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/settings/VolPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-ne v3, v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "vibrate_in_silent"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_7

    move v5, v8

    .local v5, vibrateInSilent:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-ne v5, v6, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    const-string v6, "vibrate_in_normal"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_8

    move v4, v8

    .local v4, vibrateInNormal:Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-ne v4, v6, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mode_ringer_streams_affected"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, silentModeStreams:I
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_9

    move v1, v8

    .local v1, isAlarmInclSilentMode:Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    const v7, 0x7f090577

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrateItems:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getVibrateItemsDescript()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #isAlarmInclSilentMode:Z
    .end local v2           #silentModeStreams:I
    .end local v4           #vibrateInNormal:Z
    .end local v5           #vibrateInSilent:Z
    :cond_6
    move v7, v9

    goto :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_7
    move v5, v9

    goto :goto_1

    .restart local v5       #vibrateInSilent:Z
    :cond_8
    move v4, v9

    goto :goto_2

    .restart local v2       #silentModeStreams:I
    .restart local v4       #vibrateInNormal:Z
    :cond_9
    move v1, v9

    goto :goto_3

    .restart local v1       #isAlarmInclSilentMode:Z
    :cond_a
    const v7, 0x7f090576

    goto :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "sms_delivered_sound"

    const-string v6, "haptic_feedback_level"

    const-string v5, "dtmf_tone"

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    const-string v1, "silent"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    const-string v1, "vibrate_in_silent"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    const-string v1, "vibrate_in_normal"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    const-string v1, "vibrate_item"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateItems:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateItems:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateItems:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    const-string v1, "ringtone_volume"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/VolPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/VolPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "dtmf_tone"

    invoke-virtual {p0, v5}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v2, "dtmf_tone"

    sget-boolean v2, Landroid/os/Build;->IS_HTC_HD2:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "sound_effects"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v2, "sound_effects_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "haptic_feedback"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "haptic_feedback_level"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RangeBarPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1, v3}, Landroid/preference/RangeBarPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    const-string v2, "haptic_feedback_level"

    const/4 v2, 0x2

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/RangeBarPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1, p0}, Landroid/preference/RangeBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4
    const-string v1, "lock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "sms_received_sound"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreferenceForTheme;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSmsReceivedSound:Landroid/preference/RingtonePreferenceForTheme;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSmsReceivedSound:Landroid/preference/RingtonePreferenceForTheme;

    const-string v2, "sms_received_sound"

    invoke-virtual {v1, v2}, Landroid/preference/RingtonePreferenceForTheme;->setDatabaseKey(Ljava/lang/String;)V

    const-string v1, "sms_delivered_sound"

    invoke-virtual {p0, v7}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RingtonePreferenceForTheme;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mSmsDeliveredSound:Landroid/preference/RingtonePreferenceForTheme;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSmsDeliveredSound:Landroid/preference/RingtonePreferenceForTheme;

    const-string v2, "sms_delivered_sound"

    invoke-virtual {v1, v7}, Landroid/preference/RingtonePreferenceForTheme;->setDatabaseKey(Ljava/lang/String;)V

    return-void

    :cond_0
    move v2, v4

    goto/16 :goto_0

    :cond_1
    move v2, v3

    goto/16 :goto_1

    :cond_2
    move v2, v3

    goto/16 :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1}, Landroid/preference/RangeBarPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_5
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/SoundSettings;->stopVolumeSample(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    invoke-virtual {v0}, Lcom/android/settings/VolPreference;->pause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedbackLevel:Landroid/preference/RangeBarPreference;

    if-ne p1, v2, :cond_0

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_level"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v4

    .end local v1           #value:I
    :goto_1
    return v2

    .restart local v1       #value:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "com.android.settings.SoundSettings"

    const-string v3, "could not persist haptic feedback level setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #value:I
    .restart local p2
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    move v2, v4

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->stopVolumeSample(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "vibrate_in_silent"

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v0, v4

    .local v0, vibeInSilent:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .end local v0           #vibeInSilent:Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->updateVibrateState(Z)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v5, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    move v1, v4

    :goto_3
    return v1

    :cond_0
    move v0, v5

    goto :goto_0

    .restart local v0       #vibeInSilent:Z
    :cond_1
    move v2, v5

    goto :goto_1

    .end local v0           #vibeInSilent:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->updateVibrateState(Z)V

    move v1, v4

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_normal"

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_5
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->updateVibrateState(Z)V

    move v1, v4

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_6
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v4

    goto :goto_3

    :cond_8
    move v3, v5

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    :goto_8
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v4

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_7

    :cond_b
    move v3, v5

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_9
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v4

    goto/16 :goto_3

    :cond_d
    move v3, v5

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_sounds_enabled"

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_a
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v4

    goto/16 :goto_3

    :cond_f
    move v3, v5

    goto :goto_a

    :cond_10
    move v1, v5

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneVolume:Lcom/android/settings/VolPreference;

    invoke-virtual {v1}, Lcom/android/settings/VolPreference;->resume()V

    return-void
.end method
