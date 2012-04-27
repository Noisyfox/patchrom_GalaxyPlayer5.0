.class Lcom/android/browser/BrowserActivity$2;
.super Landroid/telephony/PhoneStateListener;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$2;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z
    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$002(Lcom/android/browser/BrowserActivity;Z)Z

    .line 297
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
