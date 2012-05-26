.class public Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;
.super Lcom/android/settings/cit/CitChargerPluginCheckActivity;
.source "CitChargerPlugoutCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f09051c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090533

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateChargerState()V
    .locals 5

    .prologue
    const-string v2, "\n"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->isAcChargerAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->isUsbChargerAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x7f09056c

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->isAcChargerAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f09056a

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->isUsbChargerAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f09056b

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitChargerPlugoutCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mStopUpdate:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mChargerStateUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    const v1, 0x7f09056d

    goto :goto_0

    :cond_4
    const v1, 0x7f09056e

    goto :goto_1
.end method
