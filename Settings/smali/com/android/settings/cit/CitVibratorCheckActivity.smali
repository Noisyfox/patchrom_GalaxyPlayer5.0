.class public Lcom/android/settings/cit/CitVibratorCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitVibratorCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DURATION_LONG:J = 0x3e8L

.field private static final DURATION_SHORT:J = 0x28L


# instance fields
.field private mBtnLongVibrate:Landroid/widget/Button;

.field private mBtnPassTest:Landroid/widget/Button;

.field private mBtnShortVibrate:Landroid/widget/Button;

.field private mLongVibrate:Z

.field private mShortVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090509

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitVibratorCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090522

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    const v0, 0x7f030019

    return v0
.end method

.method protected initResources()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitVibratorCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnShortVibrate:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnShortVibrate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitVibratorCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnLongVibrate:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnLongVibrate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitVibratorCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnPassTest:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnPassTest:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iput-boolean v3, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mShortVibrate:Z

    iget-boolean v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mLongVibrate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnPassTest:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnPassTest:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iput-boolean v3, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mLongVibrate:Z

    iget-boolean v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mShortVibrate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnPassTest:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitVibratorCheckActivity;->mBtnPassTest:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c004c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
