.class public Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;
.super Lcom/android/settings/cit/CitHeadSetCheckActivity;
.source "CitAudioLoopbackCheckActivity.java"


# static fields
.field private static final STATE_MAIN_MIC_TO_LOUNDSPEAKER:I = 0x0

.field private static final STATE_VICE_MIC_TO_EARPIECE:I = 0x1


# instance fields
.field private mHeadsetHint:Landroid/widget/TextView;

.field private mIsHeadsetPlugIn:Z

.field private mNevigatorBtn:Landroid/widget/Button;

.field private mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;Lcom/android/settings/cit/SoundRecorder;)Lcom/android/settings/cit/SoundRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mIsHeadsetPlugIn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->suspend(J)V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private suspend(J)V
    .locals 3
    .parameter "time"

    .prologue
    iget-object v1, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f09052d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    const v0, 0x7f030010

    return v0
.end method

.method protected initResources()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->initResources()V

    iput v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I

    iput-boolean v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mIsHeadsetPlugIn:Z

    new-instance v0, Lcom/android/settings/cit/SoundRecorder;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cit/SoundRecorder;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;

    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;-><init>(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->release()V

    return-void
.end method

.method protected onHeadSetPlugIn()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mIsHeadsetPlugIn:Z

    iget v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onHeadSetPullOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mIsHeadsetPlugIn:Z

    iget v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->stopRecording()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->startRecording()V

    :cond_0
    return-void
.end method
