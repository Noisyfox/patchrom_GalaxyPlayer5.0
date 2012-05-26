.class public Lcom/android/settings/VolPreference;
.super Lcom/android/settings/SeekBarPreference;
.source "VolPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mRingtone:Landroid/media/Ringtone;

.field private final mStreamType:I

.field private mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Lcom/android/settings/VolPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/VolPreference$1;-><init>(Lcom/android/settings/VolPreference;)V

    iput-object v3, p0, Lcom/android/settings/VolPreference;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/VolPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/VolPreference$2;-><init>(Lcom/android/settings/VolPreference;)V

    iput-object v3, p0, Lcom/android/settings/VolPreference;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/VolPreference;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    .local v1, defaultUri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    if-nez v3, :cond_2

    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :goto_0
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    iget-object v3, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    iget v4, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v3, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setNeedAudioFocus(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .local v2, max:I
    invoke-virtual {p0, v2}, Lcom/android/settings/VolPreference;->setMax(I)V

    invoke-virtual {p0, p0}, Lcom/android/settings/VolPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .end local v2           #max:I
    :cond_2
    iget v3, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/VolPreference;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VolPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/VolPreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/VolPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private startSample()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VolPreference;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/VolPreference;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, progress:I
    iget-object v1, p0, Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-direct {p0}, Lcom/android/settings/VolPreference;->startSample()V

    invoke-virtual {p0}, Lcom/android/settings/VolPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/VolPreference;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/VolPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/VolPreference;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/settings/VolPreference;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .local v0, current:I
    invoke-virtual {p0, v0}, Lcom/android/settings/VolPreference;->setProgress(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method
