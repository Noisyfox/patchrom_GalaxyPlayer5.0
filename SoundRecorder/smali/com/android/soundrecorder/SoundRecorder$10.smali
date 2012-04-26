.class Lcom/android/soundrecorder/SoundRecorder$10;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->showToastForNoSd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$10;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$10;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mToastTextViewForNoSd:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1100(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1333
    return-void
.end method
