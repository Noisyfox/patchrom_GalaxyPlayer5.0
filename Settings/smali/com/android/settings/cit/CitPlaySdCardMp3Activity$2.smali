.class Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;
.super Ljava/lang/Object;
.source "CitPlaySdCardMp3Activity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->playMp3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    #getter for: Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->access$100(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    #getter for: Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->access$100(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->access$102(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    #getter for: Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->access$200(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method
