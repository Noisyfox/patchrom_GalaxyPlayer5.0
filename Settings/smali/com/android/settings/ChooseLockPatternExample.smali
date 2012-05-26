.class public Lcom/android/settings/ChooseLockPatternExample;
.super Landroid/app/Activity;
.source "ChooseLockPatternExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/ChooseLockPatternExample$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPatternExample$1;-><init>(Lcom/android/settings/ChooseLockPatternExample;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPatternExample;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initViews()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method
