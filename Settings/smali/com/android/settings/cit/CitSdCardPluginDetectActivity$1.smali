.class Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;
.super Ljava/lang/Object;
.source "CitSdCardPluginDetectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->isSdCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    #calls: Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->unmountSdCard()V
    invoke-static {v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->access$000(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;->this$0:Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    #calls: Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mountSdCard()V
    invoke-static {v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->access$100(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V

    goto :goto_0
.end method
