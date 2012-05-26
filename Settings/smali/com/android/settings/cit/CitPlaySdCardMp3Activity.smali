.class public Lcom/android/settings/cit/CitPlaySdCardMp3Activity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitPlaySdCardMp3Activity.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->playMp3()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090513

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private playMp3()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/music.mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$2;-><init>(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v2, 0x7f090570

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v2, 0x7f09056f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090534

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$1;-><init>(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->playMp3()V

    return-void
.end method
