.class Lcom/android/settings/AllVolumeSettings$1;
.super Ljava/lang/Object;
.source "AllVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AllVolumeSettings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AllVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AllVolumeSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AllVolumeSettings$1;->this$0:Lcom/android/settings/AllVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/settings/AllVolumeSettings$1;->this$0:Lcom/android/settings/AllVolumeSettings;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/settings/AllVolumeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->resetAllStreamVolumes()V

    iget-object v0, p0, Lcom/android/settings/AllVolumeSettings$1;->this$0:Lcom/android/settings/AllVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings/AllVolumeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09058b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
