.class Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CitSdCardPluginDetectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitSdCardPluginDetectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardPlugInReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;-><init>(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-virtual {v1}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->isSdCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    iget-object v1, v1, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v2, 0x7f090564

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-virtual {v1}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->refreshSdButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-virtual {v1}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->isSdCardAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    iget-object v1, v1, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v2, 0x7f090562

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-virtual {v1}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->refreshSdButton()V

    goto :goto_0
.end method
