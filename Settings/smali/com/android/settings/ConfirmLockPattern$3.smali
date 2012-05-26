.class Lcom/android/settings/ConfirmLockPattern$3;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern;->getLockPatternListener()Lcom/android/internal/widget/LockPatternView$OnPatternListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget v3, v2, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    const/4 v2, 0x5

    if-lt v3, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget-object v2, v2, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .local v0, deadline:J
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    goto :goto_0

    .end local v0           #deadline:J
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    sget-object v3, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v2, v3}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmLockPattern;->postClearPatternRunnable()V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget-object v0, v0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$3;->this$0:Lcom/android/settings/ConfirmLockPattern;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
