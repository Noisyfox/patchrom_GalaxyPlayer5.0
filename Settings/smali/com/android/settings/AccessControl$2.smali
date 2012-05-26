.class Lcom/android/settings/AccessControl$2;
.super Ljava/lang/Object;
.source "AccessControl.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    move-object v7, p1

    .local v7, pref:Landroid/preference/Preference;
    invoke-virtual {v7}, Landroid/preference/Preference;->getValuePreview()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, packageName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    invoke-virtual {v10}, Lcom/android/settings/AccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, res:Landroid/content/res/Resources;
    const-string v10, "privacy_mode"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f050004

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, items:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;
    invoke-static {v10}, Lcom/android/settings/AccessControl;->access$100(Lcom/android/settings/AccessControl;)Landroid/security/ChooseLockSettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v9, 0x0

    .local v9, status:I
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordForPrivacyModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/AccessControl$2$1;

    invoke-direct {v11, p0, v5, v7}, Lcom/android/settings/AccessControl$2$1;-><init>(Lcom/android/settings/AccessControl$2;Lcom/android/internal/widget/LockPatternUtils;Landroid/preference/Preference;)V

    invoke-virtual {v10, v4, v9, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    const/4 v10, 0x1

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return v10

    .end local v4           #items:[Ljava/lang/String;
    .end local v9           #status:I
    :cond_1
    const v10, 0x7f050005

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #items:[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .local v3, info:Landroid/content/pm/ApplicationInfo;
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v11, 0x200

    and-int/2addr v10, v11

    const/high16 v11, 0x200

    if-ne v10, v11, :cond_3

    const/4 v9, 0x1

    :cond_2
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/settings/AccessControl$2$2;

    invoke-direct {v11, p0, v6, v7}, Lcom/android/settings/AccessControl$2$2;-><init>(Lcom/android/settings/AccessControl$2;Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-virtual {v10, v4, v9, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    iget-object v10, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    iget-object v11, p0, Lcom/android/settings/AccessControl$2;->this$0:Lcom/android/settings/AccessControl;

    #calls: Lcom/android/settings/AccessControl;->inflateAppEntry(Landroid/preference/PreferenceActivity;Landroid/app/AlertDialog;Ljava/lang/String;)V
    invoke-static {v10, v11, v1, v6}, Lcom/android/settings/AccessControl;->access$200(Lcom/android/settings/AccessControl;Landroid/preference/PreferenceActivity;Landroid/app/AlertDialog;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_3
    :try_start_1
    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v11, 0x400

    and-int/2addr v10, v11

    const/high16 v11, 0x400

    if-ne v10, v11, :cond_2

    const/4 v9, 0x2

    goto :goto_2

    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v10, 0x0

    goto :goto_1
.end method
