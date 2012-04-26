.class Lcom/android/soundrecorder/RecorderService$2;
.super Ljava/lang/Object;
.source "RecorderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/RecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/RecorderService;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/RecorderService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/soundrecorder/RecorderService$2;->this$0:Lcom/android/soundrecorder/RecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/android/soundrecorder/RecorderService;->access$100()Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$2;->this$0:Lcom/android/soundrecorder/RecorderService;

    #getter for: Lcom/android/soundrecorder/RecorderService;->mNeedUpdateRemainingTime:Z
    invoke-static {v0}, Lcom/android/soundrecorder/RecorderService;->access$200(Lcom/android/soundrecorder/RecorderService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$2;->this$0:Lcom/android/soundrecorder/RecorderService;

    #calls: Lcom/android/soundrecorder/RecorderService;->updateRemainingTime()V
    invoke-static {v0}, Lcom/android/soundrecorder/RecorderService;->access$300(Lcom/android/soundrecorder/RecorderService;)V

    .line 89
    :cond_0
    return-void
.end method
