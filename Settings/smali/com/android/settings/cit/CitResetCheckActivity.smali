.class public Lcom/android/settings/cit/CitResetCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitResetCheckActivity.java"


# instance fields
.field private mResetButton:Landroid/widget/Button;


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
    const v0, 0x7f09051d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitResetCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f09052c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    const v0, 0x7f030016

    return v0
.end method

.method protected initResources()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitResetCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitResetCheckActivity;->mResetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/cit/CitResetCheckActivity;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/cit/CitResetCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitResetCheckActivity$1;-><init>(Lcom/android/settings/cit/CitResetCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
