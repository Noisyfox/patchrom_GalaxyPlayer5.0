.class Lcom/android/settings/AccessControl$2$1;
.super Ljava/lang/Object;
.source "AccessControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControl$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AccessControl$2;

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControl$2;Lcom/android/internal/widget/LockPatternUtils;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AccessControl$2$1;->this$1:Lcom/android/settings/AccessControl$2;

    iput-object p2, p0, Lcom/android/settings/AccessControl$2$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/settings/AccessControl$2$1;->val$pref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordForPrivacyModeEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$1;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f03004d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessControl$2$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordForPrivacyModeEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$1;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method
