.class Lcom/android/soundrecorder/SoundRecorder$8;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->showOverwriteConfirmDialogIfConflicts()V
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
    .line 771
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$8;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$8;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v1, 0x0

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$602(Lcom/android/soundrecorder/SoundRecorder;I)I

    .line 775
    return-void
.end method
