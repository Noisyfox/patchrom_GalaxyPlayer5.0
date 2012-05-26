.class Lcom/android/settings/cit/CitBaseActivity$1;
.super Ljava/lang/Object;
.source "CitBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitBaseActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitBaseActivity;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cit/CitLauncherActivity;->setPassed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    invoke-virtual {v1}, Lcom/android/settings/cit/CitBaseActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/cit/CitLauncherActivity;->launchNextTest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    const-class v2, Lcom/android/settings/cit/CitLauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    invoke-virtual {v1, v0}, Lcom/android/settings/cit/CitBaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity$1;->this$0:Lcom/android/settings/cit/CitBaseActivity;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitBaseActivity;->finish()V

    return-void
.end method
