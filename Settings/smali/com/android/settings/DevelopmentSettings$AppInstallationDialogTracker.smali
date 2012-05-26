.class Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;
.super Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInstallationDialogTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    #getter for: Lcom/android/settings/DevelopmentSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;
    invoke-static {p1}, Lcom/android/settings/DevelopmentSettings;->access$300(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;-><init>(Lcom/android/settings/DevelopmentSettings;Landroid/preference/CheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method protected onCreateDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    const v2, 0x7f090201

    invoke-virtual {v1, v2}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onPositiveClicked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;->this$0:Lcom/android/settings/DevelopmentSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/DevelopmentSettings;->setNonMarketAppsAllowed(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DevelopmentSettings;->access$400(Lcom/android/settings/DevelopmentSettings;Z)V

    return-void
.end method
