.class Lcom/android/settings/AccessControl$2$2;
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

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControl$2;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AccessControl$2$2;->this$1:Lcom/android/settings/AccessControl$2;

    iput-object p2, p0, Lcom/android/settings/AccessControl$2$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/AccessControl$2$2;->val$pref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$2;->this$1:Lcom/android/settings/AccessControl$2;

    iget-object v0, v0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessControl$2$2;->val$packageName:Ljava/lang/String;

    const/high16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setAccessControl(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$2;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f03004c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$2;->this$1:Lcom/android/settings/AccessControl$2;

    iget-object v0, v0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessControl$2$2;->val$packageName:Ljava/lang/String;

    const/high16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setAccessControl(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$2;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f03004d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$2;->this$1:Lcom/android/settings/AccessControl$2;

    iget-object v0, v0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessControl$2$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setAccessControl(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/AccessControl$2$2;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method
