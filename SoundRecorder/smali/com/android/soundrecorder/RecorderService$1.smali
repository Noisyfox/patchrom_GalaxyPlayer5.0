.class Lcom/android/soundrecorder/RecorderService$1;
.super Landroid/telephony/PhoneStateListener;
.source "RecorderService.java"


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
    .line 73
    iput-object p1, p0, Lcom/android/soundrecorder/RecorderService$1;->this$0:Lcom/android/soundrecorder/RecorderService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$1;->this$0:Lcom/android/soundrecorder/RecorderService;

    #calls: Lcom/android/soundrecorder/RecorderService;->localStopRecording()V
    invoke-static {v0}, Lcom/android/soundrecorder/RecorderService;->access$000(Lcom/android/soundrecorder/RecorderService;)V

    .line 79
    :cond_0
    return-void
.end method
