.class public Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity;
.super Lcom/android/settings/cit/CitSdCardPluginDetectActivity;
.source "CitSdCardPlugoutDetectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity$1;,
        Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity$SdCardPlugoutReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090514

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090530

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initSdCardDetection()V
    .locals 3

    .prologue
    new-instance v1, Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity$SdCardPlugoutReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity$SdCardPlugoutReceiver;-><init>(Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity;Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity$1;)V

    iput-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitSdCardPlugoutDetectActivity;->isSdCardAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v2, 0x7f090561

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v2, 0x7f090563

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
