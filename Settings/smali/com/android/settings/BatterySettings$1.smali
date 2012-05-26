.class Lcom/android/settings/BatterySettings$1;
.super Lcom/android/settings/BatterySettings$DialogOperationListener;
.source "BatterySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BatterySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatterySettings;

.field final synthetic val$isLpaDecode:Z


# direct methods
.method constructor <init>(Lcom/android/settings/BatterySettings;Landroid/preference/CheckBoxPreference;ZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/BatterySettings$1;->this$0:Lcom/android/settings/BatterySettings;

    iput-boolean p4, p0, Lcom/android/settings/BatterySettings$1;->val$isLpaDecode:Z

    invoke-direct {p0, p2, p3}, Lcom/android/settings/BatterySettings$DialogOperationListener;-><init>(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2

    .prologue
    const-string v0, "persist.sys.lpa.decode"

    iget-boolean v1, p0, Lcom/android/settings/BatterySettings$1;->val$isLpaDecode:Z

    if-eqz v1, :cond_0

    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/BatterySettings$1;->this$0:Lcom/android/settings/BatterySettings;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/android/settings/BatterySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void

    .restart local p0
    :cond_0
    const-string v1, "true"

    goto :goto_0
.end method
