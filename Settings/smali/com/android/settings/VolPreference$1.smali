.class Lcom/android/settings/VolPreference$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/android/settings/VolPreference$1;->this$0:Lcom/android/settings/VolPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/VolPreference$1;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings/VolPreference;->access$000(Lcom/android/settings/VolPreference;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/VolPreference$1;->this$0:Lcom/android/settings/VolPreference;

    #getter for: Lcom/android/settings/VolPreference;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings/VolPreference;->access$000(Lcom/android/settings/VolPreference;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
