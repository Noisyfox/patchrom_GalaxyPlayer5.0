.class public Lcom/android/settings/AllVolumeSettings;
.super Landroid/preference/PreferenceActivity;
.source "AllVolumeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_VOLUME_ARR:[Ljava/lang/String;

.field private static final STREAM_TYPE_ARR:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCategoryStatus:Landroid/preference/PreferenceCategory;

.field private mNotificationUseRingVolCheckBox:Landroid/preference/CheckBoxPreference;

.field private mNotificationVolIndex:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetAllVolumesPref:Landroid/preference/Preference;

.field private mVolPrefArr:[Lcom/android/settings/VolPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "notification_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ringtone_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alarm_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "voice_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "music_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/AllVolumeSettings;->STREAM_TYPE_ARR:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    sget-object v0, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/VolPreference;

    iput-object v0, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AllVolumeSettings;->mNotificationVolIndex:I

    new-instance v0, Lcom/android/settings/AllVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AllVolumeSettings$2;-><init>(Lcom/android/settings/AllVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/AllVolumeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private stopVolumeSampleExcept(Landroid/preference/Preference;)V
    .locals 2
    .parameter "current"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/VolPreference;->stop()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->addPreferencesFromResource(I)V

    const-string v1, "current_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mCategoryStatus:Landroid/preference/PreferenceCategory;

    const-string v1, "notification_use_ring_volume"

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mNotificationUseRingVolCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mNotificationUseRingVolCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "reset_all_volume"

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mResetAllVolumesPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mResetAllVolumesPref:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    sget-object v1, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/VolPreference;

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/settings/VolPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/AllVolumeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/VolPreference;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/AllVolumeSettings;->stopVolumeSampleExcept(Landroid/preference/Preference;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "notifications_use_ring_volume"

    invoke-direct {p0, p1}, Lcom/android/settings/AllVolumeSettings;->stopVolumeSampleExcept(Landroid/preference/Preference;)V

    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mNotificationUseRingVolCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne v1, p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/AllVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v0, v4

    .local v0, notificationUseRingtoneVolume:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AllVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/AllVolumeSettings;->refresh()V

    .end local v0           #notificationUseRingtoneVolume:Z
    :cond_0
    :goto_2
    return v4

    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0       #notificationUseRingtoneVolume:Z
    :cond_2
    move v2, v4

    goto :goto_1

    .end local v0           #notificationUseRingtoneVolume:Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AllVolumeSettings;->mResetAllVolumesPref:Landroid/preference/Preference;

    if-ne v1, p1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09058a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AllVolumeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AllVolumeSettings$1;-><init>(Lcom/android/settings/AllVolumeSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/AllVolumeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/AllVolumeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/settings/VolPreference;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AllVolumeSettings;->refresh()V

    return-void
.end method

.method refresh()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/AllVolumeSettings;->setTitle()V

    invoke-virtual {p0}, Lcom/android/settings/AllVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notifications_use_ring_volume"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v1, v5

    .local v1, notificationUseRingtoneVolume:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AllVolumeSettings;->mNotificationUseRingVolCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/settings/AllVolumeSettings;->KEY_VOLUME_ARR:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/settings/AllVolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    sget-object v4, Lcom/android/settings/AllVolumeSettings;->STREAM_TYPE_ARR:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/settings/VolPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #notificationUseRingtoneVolume:Z
    :cond_0
    move v1, v6

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #notificationUseRingtoneVolume:Z
    :cond_1
    move v3, v6

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/AllVolumeSettings;->mVolPrefArr:[Lcom/android/settings/VolPreference;

    iget v3, p0, Lcom/android/settings/AllVolumeSettings;->mNotificationVolIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Lcom/android/settings/VolPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method setTitle()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settings/AllVolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getCurrentScene()I

    move-result v1

    .local v1, scene:I
    invoke-static {v1}, Landroid/media/AudioManager;->getSceneNameId(I)I

    move-result v2

    .local v2, sceneResId:I
    iget-object v5, p0, Lcom/android/settings/AllVolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isSilentEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f09057e

    move v3, v5

    .local v3, silentResId:I
    :goto_0
    const/4 v4, 0x0

    .local v4, title:Ljava/lang/String;
    const v5, 0x7f09057f

    invoke-virtual {p0, v5}, Lcom/android/settings/AllVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, pattern:Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    new-array v5, v6, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/settings/AllVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/settings/AllVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/AllVolumeSettings;->mCategoryStatus:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .end local v0           #pattern:Ljava/lang/String;
    .end local v3           #silentResId:I
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    move v3, v8

    goto :goto_0

    .restart local v0       #pattern:Ljava/lang/String;
    .restart local v3       #silentResId:I
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/AllVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/android/settings/AllVolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
