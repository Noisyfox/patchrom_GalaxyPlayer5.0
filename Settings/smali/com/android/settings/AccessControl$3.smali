.class Lcom/android/settings/AccessControl$3;
.super Ljava/lang/Object;
.source "AccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControl;->inflateAppEntry(Landroid/preference/PreferenceActivity;Landroid/app/AlertDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControl;

.field final synthetic val$activity:Landroid/preference/PreferenceActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControl;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/preference/PreferenceActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AccessControl$3;->this$0:Lcom/android/settings/AccessControl;

    iput-object p2, p0, Lcom/android/settings/AccessControl$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/settings/AccessControl$3;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/AccessControl$3;->val$info:Landroid/content/pm/ResolveInfo;

    iput-object p5, p0, Lcom/android/settings/AccessControl$3;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    iget-object v1, p0, Lcom/android/settings/AccessControl$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/AccessControl$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AccessControl$3;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/AccessControl$3;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
