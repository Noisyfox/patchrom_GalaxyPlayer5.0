.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Landroid/app/Activity;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setContentView(I)V

    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPatternExample;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->initViews()V

    goto :goto_0
.end method
