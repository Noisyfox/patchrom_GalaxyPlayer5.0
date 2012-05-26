.class public Lcom/android/settings/ProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ProgressCategory.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    const v3, 0x7f0c00f2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, textView:Landroid/view/View;
    const v3, 0x7f0c00f3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .end local v2           #visibility:I
    :cond_0
    const/4 v3, 0x4

    move v2, v3

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    return-void
.end method
