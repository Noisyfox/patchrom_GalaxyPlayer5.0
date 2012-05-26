.class Lcom/android/settings/VolPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "VolPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VolPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VolPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/VolPreference;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeNotificationVolumeAsRing(I)Z
    .locals 3
    .parameter "changeType"

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mStreamType:I
    invoke-static {v0}, Lcom/android/settings/VolPreference;->access$100(Lcom/android/settings/VolPreference;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/VolPreference;->access$300(Lcom/android/settings/VolPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v3, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    iget-object v3, v3, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/VolPreference;->access$200(Lcom/android/settings/VolPreference;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mStreamType:I
    invoke-static {v4}, Lcom/android/settings/VolPreference;->access$100(Lcom/android/settings/VolPreference;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .local v2, volume:I
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, streamType:I
    iget-object v3, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mStreamType:I
    invoke-static {v3}, Lcom/android/settings/VolPreference;->access$100(Lcom/android/settings/VolPreference;)I

    move-result v3

    if-eq v1, v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/VolPreference$2;->changeNotificationVolumeAsRing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/VolPreference;->setProgress(I)V

    goto :goto_0

    .end local v1           #streamType:I
    .end local v2           #volume:I
    :cond_3
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/VolPreference;->access$200(Lcom/android/settings/VolPreference;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mStreamType:I
    invoke-static {v4}, Lcom/android/settings/VolPreference;->access$100(Lcom/android/settings/VolPreference;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .restart local v2       #volume:I
    iget-object v3, p0, Lcom/android/settings/VolPreference$2;->this$0:Lcom/android/settings/VolPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/VolPreference;->setProgress(I)V

    goto :goto_0
.end method
