.class abstract Lcom/android/settings/BatterySettings$DialogOperationListener;
.super Ljava/lang/Object;
.source "BatterySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatterySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DialogOperationListener"
.end annotation


# instance fields
.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field private final mRestoreValue:Z


# direct methods
.method public constructor <init>(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "checkBox"
    .parameter "value"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iput-boolean p2, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mRestoreValue:Z

    return-void
.end method

.method private restore()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mRestoreValue:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/BatterySettings$DialogOperationListener;->restore()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/BatterySettings$DialogOperationListener;->commit()V

    iget-object v0, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mRestoreValue:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/BatterySettings$DialogOperationListener;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/BatterySettings$DialogOperationListener;->restore()V

    goto :goto_1
.end method
