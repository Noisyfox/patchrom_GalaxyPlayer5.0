.class Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;
.super Ljava/lang/Object;
.source "CitAudioLoopbackCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const-wide/16 v7, 0x3e8

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$000(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$100(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09055f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    new-instance v1, Lcom/android/settings/cit/SoundRecorder;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v5}, Lcom/android/settings/cit/SoundRecorder;-><init>(II)V

    #setter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0, v1}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$202(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;Lcom/android/settings/cit/SoundRecorder;)Lcom/android/settings/cit/SoundRecorder;

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->startRecording()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #setter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I
    invoke-static {v0, v4}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$002(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;I)I

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mIsHeadsetPlugIn:Z
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$300(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #calls: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->suspend(J)V
    invoke-static {v0, v7, v8}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$500(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;J)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mNevigatorBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$100(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09055e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->release()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    new-instance v1, Lcom/android/settings/cit/SoundRecorder;

    invoke-direct {v1, v4, v5}, Lcom/android/settings/cit/SoundRecorder;-><init>(II)V

    #setter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0, v1}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$202(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;Lcom/android/settings/cit/SoundRecorder;)Lcom/android/settings/cit/SoundRecorder;

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$200(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Lcom/android/settings/cit/SoundRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->startRecording()V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #setter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mState:I
    invoke-static {v0, v3}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$002(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;I)I

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mIsHeadsetPlugIn:Z
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$300(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #calls: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->suspend(J)V
    invoke-static {v0, v7, v8}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$500(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity$1;->this$0:Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;

    #getter for: Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->mHeadsetHint:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;->access$400(Lcom/android/settings/cit/CitAudioLoopbackCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
