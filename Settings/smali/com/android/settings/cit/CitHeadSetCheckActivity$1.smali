.class Lcom/android/settings/cit/CitHeadSetCheckActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CitHeadSetCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitHeadSetCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitHeadSetCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitHeadSetCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity$1;->this$0:Lcom/android/settings/cit/CitHeadSetCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity$1;->this$0:Lcom/android/settings/cit/CitHeadSetCheckActivity;

    #calls: Lcom/android/settings/cit/CitHeadSetCheckActivity;->updateHeadset(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->access$000(Lcom/android/settings/cit/CitHeadSetCheckActivity;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity$1;->this$0:Lcom/android/settings/cit/CitHeadSetCheckActivity;

    #calls: Lcom/android/settings/cit/CitHeadSetCheckActivity;->handleMediaButtonAction(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->access$100(Lcom/android/settings/cit/CitHeadSetCheckActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method
