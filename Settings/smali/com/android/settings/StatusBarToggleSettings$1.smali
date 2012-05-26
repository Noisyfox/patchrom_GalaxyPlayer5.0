.class Lcom/android/settings/StatusBarToggleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarToggleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/StatusBarToggleSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/StatusBarToggleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/StatusBarToggleSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleSettings$1;->this$0:Lcom/android/settings/StatusBarToggleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleSettings$1;->this$0:Lcom/android/settings/StatusBarToggleSettings;

    #getter for: Lcom/android/settings/StatusBarToggleSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleSettings;->access$000(Lcom/android/settings/StatusBarToggleSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method
