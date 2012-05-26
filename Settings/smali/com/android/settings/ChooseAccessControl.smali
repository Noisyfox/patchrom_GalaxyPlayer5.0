.class public Lcom/android/settings/ChooseAccessControl;
.super Lcom/android/settings/ChooseLockPattern;
.source "ChooseAccessControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateNoSavedState()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseAccessControl;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    return-void
.end method

.method protected preSetupViews()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    const v1, 0x7f0900d0

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .local v0, utils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveACLockPattern(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setACLockEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseAccessControl;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl;->finish()V

    return-void
.end method
