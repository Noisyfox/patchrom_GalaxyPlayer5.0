.class public Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;
.super Lcom/android/settings/cit/CitHeadSetCheckActivity;
.source "CitHeadsetPlugDetectActivity.java"


# instance fields
.field private mButtonPass:Landroid/widget/Button;

.field private mOnPullOut:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090516

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090528

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;->mButtonPass:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;->mButtonPass:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onHeadSetPlugIn()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;->mOnPullOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;->mButtonPass:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090545

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onHeadSetPullOut()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cit/CitHeadsetPlugDetectActivity;->mOnPullOut:Z

    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
