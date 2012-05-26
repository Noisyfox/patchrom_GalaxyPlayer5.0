.class Lcom/android/settings/BatterySettings$2;
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

.field final synthetic val$isGpuEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/settings/BatterySettings;Landroid/preference/CheckBoxPreference;ZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/BatterySettings$2;->this$0:Lcom/android/settings/BatterySettings;

    iput-boolean p4, p0, Lcom/android/settings/BatterySettings$2;->val$isGpuEnabled:Z

    invoke-direct {p0, p2, p3}, Lcom/android/settings/BatterySettings$DialogOperationListener;-><init>(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 3

    .prologue
    const-string v1, "persist.sys.composition.type"

    iget-boolean v2, p0, Lcom/android/settings/BatterySettings$2;->val$isGpuEnabled:Z

    if-nez v2, :cond_0

    const-string v2, "gpu"

    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/BatterySettings$2;->this$0:Lcom/android/settings/BatterySettings;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/settings/BatterySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void

    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v2, "c2d"

    goto :goto_0
.end method
